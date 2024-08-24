/*
 Copyright (C) 2010-2017 Kristian Duske

 This file is part of TrenchBroom.

 TrenchBroom is free software: you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation, either version 3 of the License, or
 (at your option) any later version.

 TrenchBroom is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with TrenchBroom. If not, see <http://www.gnu.org/licenses/>.
 */

#include "UVCameraTool.h"

#include "PreferenceManager.h"
#include "Preferences.h"
#include "Renderer/OrthographicCamera.h"
#include "View/DragTracker.h"
#include "View/InputState.h"

#include "vm/vec.h"

namespace TrenchBroom
{
namespace View
{

static float adjustSpeedToZoom(
  const Renderer::OrthographicCamera& camera, const float speed)
{
  return speed / vm::max(0.001f, camera.zoom());
}

static float moveSpeed(const Renderer::OrthographicCamera& camera, const bool altMode)
{
  float speed = pref(Preferences::CameraMoveSpeed) * 40.0f;
  if (altMode && pref(Preferences::CameraAltMoveInvert))
  {
    speed *= -1.0f;
  }
  return adjustSpeedToZoom(camera, speed);
}

static void zoom(
  Renderer::OrthographicCamera& camera, const vm::vec2f& mousePos, const float factor)
{
  const auto oldWorldPos = camera.unproject(mousePos.x(), mousePos.y(), 0.0f);

  camera.zoom(factor);

  const auto newWorldPos = camera.unproject(mousePos.x(), mousePos.y(), 0.0f);
  const auto delta = newWorldPos - oldWorldPos;
  camera.moveBy(-delta);
}

UVCameraTool::UVCameraTool(Renderer::OrthographicCamera& camera)
  : ToolController{}
  , Tool{true}
  , m_camera{camera}
{
}

Tool& UVCameraTool::tool()
{
  return *this;
}

const Tool& UVCameraTool::tool() const
{
  return *this;
}

void UVCameraTool::mouseScroll(const InputState& inputState)
{
  const auto mousePos = vm::vec2f{inputState.mouseX(), inputState.mouseY()};

  if (pref(Preferences::CameraTrackpadMode))
  {
    const auto factor = pref(Preferences::CameraMouseWheelInvert) ? -1.0f : 1.0f;

    if (inputState.pinchAmount() != 0.0f)
    {
      const auto zoomFactor = 1.0f + inputState.pinchAmount() * factor;

      if (zoomFactor > 0.0f)
      {
        zoom(m_camera, mousePos, zoomFactor);
      }
    }
    else
    {
      const auto delta = -m_camera.right() * factor * inputState.scrollX()
                         + m_camera.up() * factor * inputState.scrollY();
      m_camera.moveBy(delta * moveSpeed(m_camera, false));
    }
  }
  else
  {
    // NOTE: some events will have scrollY() == 0, and have horizontal scorlling. We only
    // care about scrollY().

    if (inputState.scrollY() > 0)
    {
      if (m_camera.zoom() < 10.0f)
      {
        zoom(m_camera, mousePos, 1.1f);
      }
    }

    if (inputState.scrollY() < 0)
    {
      if (m_camera.zoom() > 0.1f)
      {
        zoom(m_camera, mousePos, 1.0f / 1.1f);
      }
    }
  }
}

namespace
{
class UVCameraToolDragTracker : public DragTracker
{
private:
  Renderer::Camera& m_camera;

public:
  UVCameraToolDragTracker(Renderer::Camera& camera)
    : m_camera{camera}
  {
  }

  bool drag(const InputState& inputState)
  {
    const auto oldX = inputState.mouseX() - inputState.mouseDX();
    const auto oldY = inputState.mouseY() - inputState.mouseDY();

    const auto oldWorldPos = m_camera.unproject(float(oldX), float(oldY), 0.0f);
    const auto newWorldPos =
      m_camera.unproject(float(inputState.mouseX()), float(inputState.mouseY()), 0.0f);
    const auto delta = oldWorldPos - newWorldPos;
    m_camera.moveBy(delta);
    return true;
  }

  void end(const InputState&) {}
  void cancel() {}
};
} // namespace

std::unique_ptr<DragTracker> UVCameraTool::acceptMouseDrag(const InputState& inputState)
{
  if (
    !inputState.mouseButtonsPressed(MouseButtons::MBRight)
    && !inputState.mouseButtonsPressed(MouseButtons::MBMiddle))
  {
    return nullptr;
  }

  return std::make_unique<UVCameraToolDragTracker>(m_camera);
}

bool UVCameraTool::cancel()
{
  return false;
}
} // namespace View
} // namespace TrenchBroom
