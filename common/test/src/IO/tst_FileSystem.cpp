/*
 Copyright (C) 2023 Kristian Duske

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

#include "Error.h"
#include "IO/File.h"
#include "IO/FileSystem.h"
#include "IO/TraversalMode.h"
#include "TestFileSystem.h"

#include <kdl/result.h>
#include <kdl/result_io.h>

#include "Catch2.h"

namespace TrenchBroom
{
namespace IO
{
TEST_CASE("FileSystem")
{
  auto fs = TestFileSystem{DirectoryEntry{
    "",
    {
      DirectoryEntry{
        "some_dir",
        {
          DirectoryEntry{
            "nested_dir",
            {
              FileEntry{"nested_dir_file_1.txt", makeObjectFile(1)},
              FileEntry{"nested_dir_file_2.map", makeObjectFile(2)},
            }},
          FileEntry{"some_dir_file_1.TXT", makeObjectFile(3)},
          FileEntry{"some_dir_file_2.doc", makeObjectFile(4)},
        }},
      FileEntry{"root_file_1.map", makeObjectFile(5)},
      FileEntry{"root_file_2.jpg", makeObjectFile(6)},
    }}};

  SECTION("makeAbsolute")
  {
    CHECK(fs.makeAbsolute("/") == kdl::result<std::filesystem::path, Error>{Error{}});
    CHECK(fs.makeAbsolute("/foo") == kdl::result<std::filesystem::path, Error>{Error{}});
  }

  SECTION("pathInfo")
  {
#if defined(_WIN32)
    CHECK(fs.pathInfo("c:\\") == PathInfo::Unknown);
    CHECK(fs.pathInfo("c:\\foo") == PathInfo::Unknown);
    CHECK(fs.pathInfo("c:") == PathInfo::Unknown);
    CHECK(fs.pathInfo("/") == PathInfo::Unknown);
    CHECK(fs.pathInfo("/foo") == PathInfo::Unknown);
#else
    CHECK(fs.pathInfo("/") == PathInfo::Unknown);
    CHECK(fs.pathInfo("/foo") == PathInfo::Unknown);
#endif
  }

  SECTION("find")
  {
#if defined(_WIN32)
    CHECK(
      fs.find("c:\\", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        Error{"Path 'c:\\' is absolute"}});
    CHECK(
      fs.find("c:\\foo", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        Error{"Path 'c:\\foo' is absolute"}});
#else
    CHECK(
      fs.find("/", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        Error{"Path '/' is absolute"}});
    CHECK(
      fs.find("/foo", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        Error{"Path '/foo' is absolute"}});
#endif
    CHECK(
      fs.find("does_not_exist", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        Error{"Path does not denote a directory: 'does_not_exist'"}});
    CHECK(
      fs.find("root_file_1.map", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        Error{"Path does not denote a directory: 'root_file_1.map'"}});

    CHECK(
      fs.find("", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        std::vector<std::filesystem::path>{
          "root_file_1.map",
          "root_file_2.jpg",
          "some_dir",
        }});

    CHECK(
      fs.find("", TraversalMode::Recursive)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        std::vector<std::filesystem::path>{
          "root_file_1.map",
          "root_file_2.jpg",
          "some_dir",
          "some_dir/nested_dir",
          "some_dir/nested_dir/nested_dir_file_1.txt",
          "some_dir/nested_dir/nested_dir_file_2.map",
          "some_dir/some_dir_file_1.TXT",
          "some_dir/some_dir_file_2.doc",
        }});

    CHECK(
      fs.find("some_dir", TraversalMode::Flat)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        std::vector<std::filesystem::path>{
          "some_dir/nested_dir",
          "some_dir/some_dir_file_1.TXT",
          "some_dir/some_dir_file_2.doc",
        }});

    CHECK(
      fs.find("some_dir", TraversalMode::Recursive)
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        std::vector<std::filesystem::path>{
          "some_dir/nested_dir",
          "some_dir/nested_dir/nested_dir_file_1.txt",
          "some_dir/nested_dir/nested_dir_file_2.map",
          "some_dir/some_dir_file_1.TXT",
          "some_dir/some_dir_file_2.doc",
        }});

    CHECK(
      fs.find("", TraversalMode::Recursive, makeExtensionPathMatcher({".txt", ".map"}))
      == kdl::result<std::vector<std::filesystem::path>, Error>{
        std::vector<std::filesystem::path>{
          "root_file_1.map",
          "some_dir/nested_dir/nested_dir_file_1.txt",
          "some_dir/nested_dir/nested_dir_file_2.map",
          "some_dir/some_dir_file_1.TXT",
        }});
  }

  SECTION("openFile")
  {
#if defined(_WIN32)
    CHECK(
      fs.openFile("c:\\")
      == kdl::result<std::shared_ptr<File>, Error>{Error{"Path 'c:\\' is absolute"}});
    CHECK(
      fs.openFile("c:\\foo")
      == kdl::result<std::shared_ptr<File>, Error>{Error{"Path 'c:\\foo' is absolute"}});
#else
    CHECK(
      fs.openFile("/")
      == kdl::result<std::shared_ptr<File>, Error>{Error{"Path '/' is absolute"}});
    CHECK(
      fs.openFile("/foo")
      == kdl::result<std::shared_ptr<File>, Error>{Error{"Path '/foo' is absolute"}});
#endif
    CHECK(
      fs.openFile("does_not_exist")
      == kdl::result<std::shared_ptr<File>, Error>{Error{"'does_not_exist' not found"}});
  }
}

} // namespace IO
} // namespace TrenchBroom
