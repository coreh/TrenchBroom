SET(COMMON_SOURCE_DIR ${CMAKE_SOURCE_DIR}/common/src)

SET(COMMON_SOURCE
	${COMMON_SOURCE_DIR}/Assets/AttributeDefinition.cpp
	${COMMON_SOURCE_DIR}/Assets/ColorRange.cpp
	${COMMON_SOURCE_DIR}/Assets/EntityDefinition.cpp
	${COMMON_SOURCE_DIR}/Assets/EntityDefinitionFileSpec.cpp
	${COMMON_SOURCE_DIR}/Assets/EntityDefinitionGroup.cpp
	${COMMON_SOURCE_DIR}/Assets/EntityDefinitionManager.cpp
	${COMMON_SOURCE_DIR}/Assets/EntityModel.cpp
	${COMMON_SOURCE_DIR}/Assets/EntityModelManager.cpp
	${COMMON_SOURCE_DIR}/Assets/ImageUtils.cpp
	${COMMON_SOURCE_DIR}/Assets/ModelDefinition.cpp
	${COMMON_SOURCE_DIR}/Assets/Palette.cpp
	${COMMON_SOURCE_DIR}/Assets/TextureCollection.cpp
	${COMMON_SOURCE_DIR}/Assets/Texture.cpp
	${COMMON_SOURCE_DIR}/Assets/TextureManager.cpp
	${COMMON_SOURCE_DIR}/AttrString.cpp
	${COMMON_SOURCE_DIR}/Color.cpp
	${COMMON_SOURCE_DIR}/Disjunction.cpp
	${COMMON_SOURCE_DIR}/EL/ELExceptions.cpp
	${COMMON_SOURCE_DIR}/EL/EvaluationContext.cpp
	${COMMON_SOURCE_DIR}/EL/Expression.cpp
	${COMMON_SOURCE_DIR}/EL/Interpolator.cpp
	${COMMON_SOURCE_DIR}/EL/Types.cpp
	${COMMON_SOURCE_DIR}/EL/Value.cpp
	${COMMON_SOURCE_DIR}/EL/VariableStore.cpp
	${COMMON_SOURCE_DIR}/Ensure.cpp
	${COMMON_SOURCE_DIR}/FileLogger.cpp
	${COMMON_SOURCE_DIR}/IO/BrushFaceReader.cpp
	${COMMON_SOURCE_DIR}/IO/Bsp29Parser.cpp
	${COMMON_SOURCE_DIR}/IO/CharArrayReader.cpp
	${COMMON_SOURCE_DIR}/IO/CompilationConfigParser.cpp
	${COMMON_SOURCE_DIR}/IO/CompilationConfigWriter.cpp
	${COMMON_SOURCE_DIR}/IO/ConfigParserBase.cpp
	${COMMON_SOURCE_DIR}/IO/DefParser.cpp
	${COMMON_SOURCE_DIR}/IO/DiskFileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/DiskIO.cpp
	${COMMON_SOURCE_DIR}/IO/DkmParser.cpp
	${COMMON_SOURCE_DIR}/IO/DkPakFileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/ELParser.cpp
	${COMMON_SOURCE_DIR}/IO/EntityDefinitionClassInfo.cpp
	${COMMON_SOURCE_DIR}/IO/EntityDefinitionLoader.cpp
	${COMMON_SOURCE_DIR}/IO/EntityDefinitionParser.cpp
	${COMMON_SOURCE_DIR}/IO/EntityModelLoader.cpp
	${COMMON_SOURCE_DIR}/IO/EntityModelParser.cpp
	${COMMON_SOURCE_DIR}/IO/FgdParser.cpp
	${COMMON_SOURCE_DIR}/IO/FileMatcher.cpp
	${COMMON_SOURCE_DIR}/IO/FileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/FreeImageTextureReader.cpp
	${COMMON_SOURCE_DIR}/IO/GameConfigParser.cpp
	${COMMON_SOURCE_DIR}/IO/GameEngineConfigParser.cpp
	${COMMON_SOURCE_DIR}/IO/GameEngineConfigWriter.cpp
	${COMMON_SOURCE_DIR}/IO/HlMipTextureReader.cpp
	${COMMON_SOURCE_DIR}/IO/IdMipTextureReader.cpp
	${COMMON_SOURCE_DIR}/IO/IdPakFileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/ImageFileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/ImageLoader.cpp
	${COMMON_SOURCE_DIR}/IO/ImageLoaderImpl.cpp
	${COMMON_SOURCE_DIR}/IO/IOUtils.cpp
	${COMMON_SOURCE_DIR}/IO/LegacyModelDefinitionParser.cpp
	${COMMON_SOURCE_DIR}/IO/MapFileSerializer.cpp
	${COMMON_SOURCE_DIR}/IO/MapParser.cpp
	${COMMON_SOURCE_DIR}/IO/MappedFile.cpp
	${COMMON_SOURCE_DIR}/IO/MapReader.cpp
	${COMMON_SOURCE_DIR}/IO/MapStreamSerializer.cpp
	${COMMON_SOURCE_DIR}/IO/Md2Parser.cpp
	${COMMON_SOURCE_DIR}/IO/Md3Parser.cpp
	${COMMON_SOURCE_DIR}/IO/MdlParser.cpp
	${COMMON_SOURCE_DIR}/IO/MipTextureReader.cpp
	${COMMON_SOURCE_DIR}/IO/NodeReader.cpp
	${COMMON_SOURCE_DIR}/IO/NodeSerializer.cpp
	${COMMON_SOURCE_DIR}/IO/NodeWriter.cpp
	${COMMON_SOURCE_DIR}/IO/ObjSerializer.cpp
	${COMMON_SOURCE_DIR}/IO/ParserStatus.cpp
	${COMMON_SOURCE_DIR}/IO/Path.cpp
	${COMMON_SOURCE_DIR}/IO/ResourceUtils.cpp
	${COMMON_SOURCE_DIR}/IO/SimpleParserStatus.cpp
	${COMMON_SOURCE_DIR}/IO/SkinLoader.cpp
	${COMMON_SOURCE_DIR}/IO/StandardMapParser.cpp
	${COMMON_SOURCE_DIR}/IO/SystemPaths.cpp
	${COMMON_SOURCE_DIR}/IO/TextureCollectionLoader.cpp
	${COMMON_SOURCE_DIR}/IO/TextureLoader.cpp
	${COMMON_SOURCE_DIR}/IO/TextureReader.cpp
	${COMMON_SOURCE_DIR}/IO/Tokenizer.cpp
	${COMMON_SOURCE_DIR}/IO/WadFileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/WalTextureReader.cpp
	${COMMON_SOURCE_DIR}/IO/WorldReader.cpp
	${COMMON_SOURCE_DIR}/IO/ZipFileSystem.cpp
	${COMMON_SOURCE_DIR}/Logger.cpp
	${COMMON_SOURCE_DIR}/Model/AssortNodesVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/AttributableNode.cpp
	${COMMON_SOURCE_DIR}/Model/AttributableNodeIndex.cpp
	${COMMON_SOURCE_DIR}/Model/AttributableNodeVariableStore.cpp
	${COMMON_SOURCE_DIR}/Model/AttributeNameWithDoubleQuotationMarksIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/AttributeValueWithDoubleQuotationMarksIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/BoundsContainsNodeVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/BoundsIntersectsNodeVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/BrushBuilder.cpp
	${COMMON_SOURCE_DIR}/Model/BrushContentTypeBuilder.cpp
	${COMMON_SOURCE_DIR}/Model/BrushContentType.cpp
	${COMMON_SOURCE_DIR}/Model/BrushContentTypeEvaluator.cpp
	${COMMON_SOURCE_DIR}/Model/Brush.cpp
	${COMMON_SOURCE_DIR}/Model/BrushFaceAttributes.cpp
	${COMMON_SOURCE_DIR}/Model/BrushFace.cpp
	${COMMON_SOURCE_DIR}/Model/BrushFacePredicates.cpp
	${COMMON_SOURCE_DIR}/Model/BrushFaceReference.cpp
	${COMMON_SOURCE_DIR}/Model/BrushFaceSnapshot.cpp
	${COMMON_SOURCE_DIR}/Model/BrushSnapshot.cpp
	${COMMON_SOURCE_DIR}/Model/ChangeBrushFaceAttributesRequest.cpp
	${COMMON_SOURCE_DIR}/Model/CollectAttributableNodesVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/CollectMatchingNodesVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/CollectNodesWithDescendantSelectionCountVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/CollectRecursivelySelectedNodesVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/CollectSelectableBrushFacesVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/CollectSelectableNodesWithFilePositionVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/CompareHits.cpp
	${COMMON_SOURCE_DIR}/Model/CompilationConfig.cpp
	${COMMON_SOURCE_DIR}/Model/CompilationProfile.cpp
	${COMMON_SOURCE_DIR}/Model/CompilationTask.cpp
	${COMMON_SOURCE_DIR}/Model/ComputeNodeBoundsVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/EditorContext.cpp
	${COMMON_SOURCE_DIR}/Model/EmptyAttributeNameIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/EmptyAttributeValueIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/EmptyBrushEntityIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/EmptyGroupIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/EntityAttributes.cpp
	${COMMON_SOURCE_DIR}/Model/EntityAttributeSnapshot.cpp
	${COMMON_SOURCE_DIR}/Model/EntityAttributesVariableStore.cpp
	${COMMON_SOURCE_DIR}/Model/EntityColor.cpp
	${COMMON_SOURCE_DIR}/Model/Entity.cpp
	${COMMON_SOURCE_DIR}/Model/EntityRotationPolicy.cpp
	${COMMON_SOURCE_DIR}/Model/EntitySnapshot.cpp
	${COMMON_SOURCE_DIR}/Model/FindContainerVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/FindGroupVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/FindLayerVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/GameConfig.cpp
	${COMMON_SOURCE_DIR}/Model/Game.cpp
	${COMMON_SOURCE_DIR}/Model/GameEngineConfig.cpp
	${COMMON_SOURCE_DIR}/Model/GameEngineProfile.cpp
	${COMMON_SOURCE_DIR}/Model/GameFactory.cpp
	${COMMON_SOURCE_DIR}/Model/GameImpl.cpp
	${COMMON_SOURCE_DIR}/Model/Group.cpp
	${COMMON_SOURCE_DIR}/Model/GroupSnapshot.cpp
	${COMMON_SOURCE_DIR}/Model/HitAdapter.cpp
	${COMMON_SOURCE_DIR}/Model/Hit.cpp
	${COMMON_SOURCE_DIR}/Model/HitFilter.cpp
	${COMMON_SOURCE_DIR}/Model/HitQuery.cpp
	${COMMON_SOURCE_DIR}/Model/IntersectNodeWithRayVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/Issue.cpp
	${COMMON_SOURCE_DIR}/Model/IssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/IssueGeneratorRegistry.cpp
	${COMMON_SOURCE_DIR}/Model/IssueQuickFix.cpp
	${COMMON_SOURCE_DIR}/Model/Layer.cpp
	${COMMON_SOURCE_DIR}/Model/LinkSourceIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/LinkTargetIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/LongAttributeNameIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/LongAttributeValueIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/MapFacade.cpp
	${COMMON_SOURCE_DIR}/Model/MapFormat.cpp
	${COMMON_SOURCE_DIR}/Model/MatchNodesByVisibility.cpp
	${COMMON_SOURCE_DIR}/Model/MatchSelectableNodes.cpp
	${COMMON_SOURCE_DIR}/Model/MergeNodesIntoWorldVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/MissingClassnameIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/MissingDefinitionIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/MissingModIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/MixedBrushContentsIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/ModelFactory.cpp
	${COMMON_SOURCE_DIR}/Model/ModelFactoryImpl.cpp
	${COMMON_SOURCE_DIR}/Model/ModelUtils.cpp
	${COMMON_SOURCE_DIR}/Model/NodeCollection.cpp
	${COMMON_SOURCE_DIR}/Model/Node.cpp
	${COMMON_SOURCE_DIR}/Model/NodePredicates.cpp
	${COMMON_SOURCE_DIR}/Model/NodeSnapshot.cpp
	${COMMON_SOURCE_DIR}/Model/NodeVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/NonIntegerPlanePointsIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/NonIntegerVerticesIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/Object.cpp
	${COMMON_SOURCE_DIR}/Model/ParallelTexCoordSystem.cpp
	${COMMON_SOURCE_DIR}/Model/ParaxialTexCoordSystem.cpp
	${COMMON_SOURCE_DIR}/Model/PickResult.cpp
	${COMMON_SOURCE_DIR}/Model/PlanePointFinder.cpp
	${COMMON_SOURCE_DIR}/Model/PointEntityWithBrushesIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/PointFile.cpp
	${COMMON_SOURCE_DIR}/Model/PortalFile.cpp
	${COMMON_SOURCE_DIR}/Model/PushSelection.cpp
	${COMMON_SOURCE_DIR}/Model/RemoveEntityAttributesQuickFix.cpp
	${COMMON_SOURCE_DIR}/Model/Snapshot.cpp
	${COMMON_SOURCE_DIR}/Model/TakeSnapshotVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/TexCoordSystem.cpp
	${COMMON_SOURCE_DIR}/Model/TransformEntityAttributesQuickFix.cpp
	${COMMON_SOURCE_DIR}/Model/TransformObjectVisitor.cpp
	${COMMON_SOURCE_DIR}/Model/Tutorial.cpp
	${COMMON_SOURCE_DIR}/Model/WorldBoundsIssueGenerator.cpp
	${COMMON_SOURCE_DIR}/Model/World.cpp
	${COMMON_SOURCE_DIR}/Polyhedron_Instantiation.cpp
	${COMMON_SOURCE_DIR}/PreferenceManager.cpp
	${COMMON_SOURCE_DIR}/Preferences.cpp
	${COMMON_SOURCE_DIR}/RecoverableExceptions.cpp
	${COMMON_SOURCE_DIR}/Renderer/AllocationTracker.cpp
	${COMMON_SOURCE_DIR}/Renderer/BoundsGuideRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/BrushRendererArrays.cpp
	${COMMON_SOURCE_DIR}/Renderer/BrushRendererBrushCache.cpp
	${COMMON_SOURCE_DIR}/Renderer/BrushRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/Camera.cpp
	${COMMON_SOURCE_DIR}/Renderer/Circle.cpp
	${COMMON_SOURCE_DIR}/Renderer/Compass2D.cpp
	${COMMON_SOURCE_DIR}/Renderer/Compass3D.cpp
	${COMMON_SOURCE_DIR}/Renderer/Compass.cpp
	${COMMON_SOURCE_DIR}/Renderer/EdgeRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/EntityLinkRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/EntityModelRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/EntityRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/FaceRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/FontDescriptor.cpp
	${COMMON_SOURCE_DIR}/Renderer/FontFactory.cpp
	${COMMON_SOURCE_DIR}/Renderer/FontGlyphBuilder.cpp
	${COMMON_SOURCE_DIR}/Renderer/FontGlyph.cpp
	${COMMON_SOURCE_DIR}/Renderer/FontManager.cpp
	${COMMON_SOURCE_DIR}/Renderer/FontTexture.cpp
	${COMMON_SOURCE_DIR}/Renderer/FreeTypeFontFactory.cpp
	${COMMON_SOURCE_DIR}/Renderer/GL.cpp
	${COMMON_SOURCE_DIR}/Renderer/GridRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/GroupRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/IndexArray.cpp
	${COMMON_SOURCE_DIR}/Renderer/IndexArrayMapBuilder.cpp
	${COMMON_SOURCE_DIR}/Renderer/IndexArrayMap.cpp
	${COMMON_SOURCE_DIR}/Renderer/IndexRangeMap.cpp
	${COMMON_SOURCE_DIR}/Renderer/IndexRangeRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/MapRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/ObjectRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/OrthographicCamera.cpp
	${COMMON_SOURCE_DIR}/Renderer/PerspectiveCamera.cpp
	${COMMON_SOURCE_DIR}/Renderer/PointGuideRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/PointHandleRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/PrimitiveRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/Renderable.cpp
	${COMMON_SOURCE_DIR}/Renderer/RenderBatch.cpp
	${COMMON_SOURCE_DIR}/Renderer/RenderContext.cpp
	${COMMON_SOURCE_DIR}/Renderer/RenderService.cpp
	${COMMON_SOURCE_DIR}/Renderer/RenderUtils.cpp
	${COMMON_SOURCE_DIR}/Renderer/SelectionBoundsRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/ShaderConfig.cpp
	${COMMON_SOURCE_DIR}/Renderer/Shader.cpp
	${COMMON_SOURCE_DIR}/Renderer/ShaderManager.cpp
	${COMMON_SOURCE_DIR}/Renderer/ShaderProgram.cpp
	${COMMON_SOURCE_DIR}/Renderer/Shaders.cpp
	${COMMON_SOURCE_DIR}/Renderer/Sphere.cpp
	${COMMON_SOURCE_DIR}/Renderer/SpikeGuideRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/TextAnchor.cpp
	${COMMON_SOURCE_DIR}/Renderer/TextRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexArrayMapBuilder.cpp
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexArrayMap.cpp
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexArrayRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexRangeMap.cpp
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexRangeRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/TextureFont.cpp
	${COMMON_SOURCE_DIR}/Renderer/Transformation.cpp
	${COMMON_SOURCE_DIR}/Renderer/TriangleRenderer.cpp
	${COMMON_SOURCE_DIR}/Renderer/VboBlock.cpp
	${COMMON_SOURCE_DIR}/Renderer/Vbo.cpp
	${COMMON_SOURCE_DIR}/Renderer/VertexArray.cpp
	${COMMON_SOURCE_DIR}/StringUtils.cpp
	${COMMON_SOURCE_DIR}/TemporarilySetAny.cpp
	${COMMON_SOURCE_DIR}/TrenchBroomApp.cpp
	${COMMON_SOURCE_DIR}/TrenchBroomAppQt.cpp
	${COMMON_SOURCE_DIR}/TrenchBroomStackWalker.cpp
	${COMMON_SOURCE_DIR}/View/AboutDialog.cpp
	${COMMON_SOURCE_DIR}/View/ActionContext.cpp
	${COMMON_SOURCE_DIR}/View/ActionList.cpp
	${COMMON_SOURCE_DIR}/View/AddBrushVerticesCommand.cpp
	${COMMON_SOURCE_DIR}/View/AddRemoveNodesCommand.cpp
	${COMMON_SOURCE_DIR}/View/Animation.cpp
	${COMMON_SOURCE_DIR}/View/AnimationCurve.cpp
	${COMMON_SOURCE_DIR}/View/AppInfoPanel.cpp
#	${COMMON_SOURCE_DIR}/View/AutoCompleteTextControl.cpp
	${COMMON_SOURCE_DIR}/View/Autosaver.cpp
#	${COMMON_SOURCE_DIR}/View/BitmapButton.cpp
#	${COMMON_SOURCE_DIR}/View/BitmapStaticButton.cpp
#	${COMMON_SOURCE_DIR}/View/BitmapToggleButton.cpp
	${COMMON_SOURCE_DIR}/View/BorderLine.cpp
	${COMMON_SOURCE_DIR}/View/BorderPanel.cpp
	${COMMON_SOURCE_DIR}/View/CachingLogger.cpp
	${COMMON_SOURCE_DIR}/View/CameraAnimation.cpp
	${COMMON_SOURCE_DIR}/View/CameraLinkHelper.cpp
	${COMMON_SOURCE_DIR}/View/CameraTool2D.cpp
	${COMMON_SOURCE_DIR}/View/CameraTool3D.cpp
	${COMMON_SOURCE_DIR}/View/ChangeBrushFaceAttributesCommand.cpp
	${COMMON_SOURCE_DIR}/View/ChangeEntityAttributesCommand.cpp
#	${COMMON_SOURCE_DIR}/View/ChoosePathTypeDialog.cpp
	${COMMON_SOURCE_DIR}/View/ClipToolController.cpp
	${COMMON_SOURCE_DIR}/View/ClipTool.cpp
#	${COMMON_SOURCE_DIR}/View/CollapsibleTitledPanel.cpp
#	${COMMON_SOURCE_DIR}/View/ColorTable.cpp
#	${COMMON_SOURCE_DIR}/View/ColorTableSelectedCommand.cpp
	${COMMON_SOURCE_DIR}/View/Command.cpp
	${COMMON_SOURCE_DIR}/View/CommandProcessor.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationContext.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationDialog.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationProfileEditor.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationProfileListBox.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationProfileManager.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationRun.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationRunner.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationTaskList.cpp
#	${COMMON_SOURCE_DIR}/View/CompilationVariables.cpp
	${COMMON_SOURCE_DIR}/View/Console.cpp
	${COMMON_SOURCE_DIR}/View/ContainerBar.cpp
#	${COMMON_SOURCE_DIR}/View/ControlListBox.cpp
	${COMMON_SOURCE_DIR}/View/ConvertEntityColorCommand.cpp
	${COMMON_SOURCE_DIR}/View/CopyTexCoordSystemFromFaceCommand.cpp
#	${COMMON_SOURCE_DIR}/View/CrashDialog.cpp
	${COMMON_SOURCE_DIR}/View/CreateBrushToolBase.cpp
	${COMMON_SOURCE_DIR}/View/CreateComplexBrushToolController3D.cpp
	${COMMON_SOURCE_DIR}/View/CreateComplexBrushTool.cpp
	${COMMON_SOURCE_DIR}/View/CreateEntityToolController.cpp
	${COMMON_SOURCE_DIR}/View/CreateEntityTool.cpp
	${COMMON_SOURCE_DIR}/View/CreateSimpleBrushToolController2D.cpp
	${COMMON_SOURCE_DIR}/View/CreateSimpleBrushToolController3D.cpp
	${COMMON_SOURCE_DIR}/View/CreateSimpleBrushTool.cpp
#	${COMMON_SOURCE_DIR}/View/CurrentGameIndicator.cpp
	${COMMON_SOURCE_DIR}/View/CurrentGroupCommand.cpp
	${COMMON_SOURCE_DIR}/View/CyclingMapView.cpp
#	${COMMON_SOURCE_DIR}/View/DirectoryTextureCollectionEditor.cpp
	${COMMON_SOURCE_DIR}/View/DocumentCommand.cpp
	${COMMON_SOURCE_DIR}/View/DuplicateNodesCommand.cpp
	${COMMON_SOURCE_DIR}/View/EdgeToolController.cpp
	${COMMON_SOURCE_DIR}/View/EdgeTool.cpp
#	${COMMON_SOURCE_DIR}/View/ELAutoCompleteHelper.cpp
#	${COMMON_SOURCE_DIR}/View/EntityAttributeEditor.cpp
#	${COMMON_SOURCE_DIR}/View/EntityAttributeGrid.cpp
#	${COMMON_SOURCE_DIR}/View/EntityAttributeGridTable.cpp
#	${COMMON_SOURCE_DIR}/View/EntityAttributeSelectedCommand.cpp
#	${COMMON_SOURCE_DIR}/View/EntityBrowser.cpp
#	${COMMON_SOURCE_DIR}/View/EntityBrowserView.cpp
#	${COMMON_SOURCE_DIR}/View/EntityDefinitionFileChooser.cpp
	${COMMON_SOURCE_DIR}/View/EntityDefinitionFileCommand.cpp
#	${COMMON_SOURCE_DIR}/View/EntityInspector.cpp
#	${COMMON_SOURCE_DIR}/View/ExecutableEvent.cpp
#	${COMMON_SOURCE_DIR}/View/FaceAttribsEditor.cpp
#	${COMMON_SOURCE_DIR}/View/FaceInspector.cpp
	${COMMON_SOURCE_DIR}/View/FaceToolController.cpp
	${COMMON_SOURCE_DIR}/View/FaceTool.cpp
#	${COMMON_SOURCE_DIR}/View/FileTextureCollectionEditor.cpp
	${COMMON_SOURCE_DIR}/View/FindPlanePointsCommand.cpp
	${COMMON_SOURCE_DIR}/View/FlagsEditor.cpp
	${COMMON_SOURCE_DIR}/View/FlagsPopupEditor.cpp
	${COMMON_SOURCE_DIR}/View/FlashSelectionAnimation.cpp
	${COMMON_SOURCE_DIR}/View/FlyModeHelper.cpp
	${COMMON_SOURCE_DIR}/View/FourPaneMapView.cpp
	${COMMON_SOURCE_DIR}/View/FrameManager.cpp
#	${COMMON_SOURCE_DIR}/View/GameDialog.cpp
#	${COMMON_SOURCE_DIR}/View/GameEngineDialog.cpp
#	${COMMON_SOURCE_DIR}/View/GameEngineProfileEditor.cpp
#	${COMMON_SOURCE_DIR}/View/GameEngineProfileListBox.cpp
#	${COMMON_SOURCE_DIR}/View/GameEngineProfileManager.cpp
#	${COMMON_SOURCE_DIR}/View/GameListBox.cpp
#	${COMMON_SOURCE_DIR}/View/GameSelectionCommand.cpp
#	${COMMON_SOURCE_DIR}/View/GamesPreferencePane.cpp
#	${COMMON_SOURCE_DIR}/View/GenericDropSource.cpp
	${COMMON_SOURCE_DIR}/View/GetVersion.cpp
#	${COMMON_SOURCE_DIR}/View/GLAttribs.cpp
#	${COMMON_SOURCE_DIR}/View/GLContext.cpp
	${COMMON_SOURCE_DIR}/View/GLContextManager.cpp
	${COMMON_SOURCE_DIR}/View/Grid.cpp
#	${COMMON_SOURCE_DIR}/View/ImageListBox.cpp
	${COMMON_SOURCE_DIR}/View/InfoPanel.cpp
	${COMMON_SOURCE_DIR}/View/InputEvent.cpp
	${COMMON_SOURCE_DIR}/View/InputState.cpp
	${COMMON_SOURCE_DIR}/View/Inspector.cpp
	${COMMON_SOURCE_DIR}/View/IssueBrowser.cpp
	${COMMON_SOURCE_DIR}/View/IssueBrowserView.cpp
#	${COMMON_SOURCE_DIR}/View/KeyboardGridCellEditor.cpp
#	${COMMON_SOURCE_DIR}/View/KeyboardPreferencePane.cpp
	${COMMON_SOURCE_DIR}/View/KeyboardShortcut.cpp
#	${COMMON_SOURCE_DIR}/View/KeyboardShortcutEditor.cpp
#	${COMMON_SOURCE_DIR}/View/KeyboardShortcutEntry.cpp
#	${COMMON_SOURCE_DIR}/View/KeyboardShortcutEvent.cpp
#	${COMMON_SOURCE_DIR}/View/KeyboardShortcutGridTable.cpp
	${COMMON_SOURCE_DIR}/View/Lasso.cpp
#	${COMMON_SOURCE_DIR}/View/LaunchGameEngineDialog.cpp
#	${COMMON_SOURCE_DIR}/View/LayerEditor.cpp
#	${COMMON_SOURCE_DIR}/View/LayerListBox.cpp
#	${COMMON_SOURCE_DIR}/View/LockedGridCellRenderer.cpp
	${COMMON_SOURCE_DIR}/View/MapDocumentCommandFacade.cpp
	${COMMON_SOURCE_DIR}/View/MapDocument.cpp
	${COMMON_SOURCE_DIR}/View/MapFrame.cpp
#	${COMMON_SOURCE_DIR}/View/MapFrameDropTarget.cpp
#	${COMMON_SOURCE_DIR}/View/MapInspector.cpp
	${COMMON_SOURCE_DIR}/View/MapView2D.cpp
	${COMMON_SOURCE_DIR}/View/MapView3D.cpp
#	${COMMON_SOURCE_DIR}/View/MapViewBar.cpp
	${COMMON_SOURCE_DIR}/View/MapViewBase.cpp
	${COMMON_SOURCE_DIR}/View/MapViewConfig.cpp
	${COMMON_SOURCE_DIR}/View/MapViewContainer.cpp
	${COMMON_SOURCE_DIR}/View/MapView.cpp
	${COMMON_SOURCE_DIR}/View/MapViewToolBox.cpp
#	${COMMON_SOURCE_DIR}/View/ModEditor.cpp
#	${COMMON_SOURCE_DIR}/View/MousePreferencePane.cpp
	${COMMON_SOURCE_DIR}/View/MoveBrushEdgesCommand.cpp
	${COMMON_SOURCE_DIR}/View/MoveBrushFacesCommand.cpp
	${COMMON_SOURCE_DIR}/View/MoveBrushVerticesCommand.cpp
	${COMMON_SOURCE_DIR}/View/MoveObjectsToolController.cpp
	${COMMON_SOURCE_DIR}/View/MoveObjectsTool.cpp
#	${COMMON_SOURCE_DIR}/View/MoveObjectsToolPage.cpp
	${COMMON_SOURCE_DIR}/View/MoveTexturesCommand.cpp
	${COMMON_SOURCE_DIR}/View/MultiMapView.cpp
	${COMMON_SOURCE_DIR}/View/OnePaneMapView.cpp
	${COMMON_SOURCE_DIR}/View/PickRequest.cpp
	${COMMON_SOURCE_DIR}/View/PopupWindow.cpp
	${COMMON_SOURCE_DIR}/View/PopupButton.cpp
#	${COMMON_SOURCE_DIR}/View/PreferenceDialog.cpp
#	${COMMON_SOURCE_DIR}/View/PreferencePane.cpp
#	${COMMON_SOURCE_DIR}/View/RadioGroup.cpp
#	${COMMON_SOURCE_DIR}/View/RecentDocumentListBox.cpp
#	${COMMON_SOURCE_DIR}/View/RecentDocumentSelectedCommand.cpp
	${COMMON_SOURCE_DIR}/View/RemoveBrushEdgesCommand.cpp
	${COMMON_SOURCE_DIR}/View/RemoveBrushElementsCommand.cpp
	${COMMON_SOURCE_DIR}/View/RemoveBrushFacesCommand.cpp
	${COMMON_SOURCE_DIR}/View/RemoveBrushVerticesCommand.cpp
	${COMMON_SOURCE_DIR}/View/RenameGroupsCommand.cpp
	${COMMON_SOURCE_DIR}/View/RenderView.cpp
	${COMMON_SOURCE_DIR}/View/ReparentNodesCommand.cpp
#	${COMMON_SOURCE_DIR}/View/ReplaceTextureDialog.cpp
	${COMMON_SOURCE_DIR}/View/ResizeBrushesCommand.cpp
	${COMMON_SOURCE_DIR}/View/ResizeBrushesToolController.cpp
	${COMMON_SOURCE_DIR}/View/ResizeBrushesTool.cpp
	${COMMON_SOURCE_DIR}/View/RotateObjectsHandle.cpp
	${COMMON_SOURCE_DIR}/View/RotateObjectsToolController.cpp
	${COMMON_SOURCE_DIR}/View/RotateObjectsTool.cpp
#	${COMMON_SOURCE_DIR}/View/RotateObjectsToolPage.cpp
	${COMMON_SOURCE_DIR}/View/RotateTexturesCommand.cpp
	${COMMON_SOURCE_DIR}/View/ScaleObjectsToolController.cpp
	${COMMON_SOURCE_DIR}/View/ScaleObjectsTool.cpp
#	${COMMON_SOURCE_DIR}/View/ScaleObjectsToolPage.cpp
	${COMMON_SOURCE_DIR}/View/SelectionCommand.cpp
	${COMMON_SOURCE_DIR}/View/Selection.cpp
	${COMMON_SOURCE_DIR}/View/SelectionTool.cpp
	${COMMON_SOURCE_DIR}/View/SetBrushFaceAttributesTool.cpp
	${COMMON_SOURCE_DIR}/View/SetLockStateCommand.cpp
	${COMMON_SOURCE_DIR}/View/SetModsCommand.cpp
	${COMMON_SOURCE_DIR}/View/SetTextureCollectionsCommand.cpp
	${COMMON_SOURCE_DIR}/View/SetVisibilityCommand.cpp
	${COMMON_SOURCE_DIR}/View/ShearObjectsToolController.cpp
	${COMMON_SOURCE_DIR}/View/ShearObjectsTool.cpp
	${COMMON_SOURCE_DIR}/View/ShearTexturesCommand.cpp
#	${COMMON_SOURCE_DIR}/View/SmartAttributeEditor.cpp
#	${COMMON_SOURCE_DIR}/View/SmartAttributeEditorManager.cpp
#	${COMMON_SOURCE_DIR}/View/SmartAttributeEditorMatcher.cpp
#	${COMMON_SOURCE_DIR}/View/SmartChoiceEditor.cpp
#	${COMMON_SOURCE_DIR}/View/SmartChoiceEditorMatcher.cpp
#	${COMMON_SOURCE_DIR}/View/SmartColorEditor.cpp
#	${COMMON_SOURCE_DIR}/View/SmartDefaultAttributeEditor.cpp
#	${COMMON_SOURCE_DIR}/View/SmartSpawnflagsEditor.cpp
	${COMMON_SOURCE_DIR}/View/SnapBrushVerticesCommand.cpp
	${COMMON_SOURCE_DIR}/View/SnapshotCommand.cpp
#	${COMMON_SOURCE_DIR}/View/SpinControl.cpp
	${COMMON_SOURCE_DIR}/View/SwitchableMapViewContainer.cpp
	${COMMON_SOURCE_DIR}/View/TabBar.cpp
	${COMMON_SOURCE_DIR}/View/TabBook.cpp
#	${COMMON_SOURCE_DIR}/View/TextCtrlOutputAdapter.cpp
#	${COMMON_SOURCE_DIR}/View/TextureBrowser.cpp
#	${COMMON_SOURCE_DIR}/View/TextureBrowserView.cpp
#	${COMMON_SOURCE_DIR}/View/TextureCollectionEditor.cpp
#	${COMMON_SOURCE_DIR}/View/TextureSelectedCommand.cpp
	${COMMON_SOURCE_DIR}/View/ThreePaneMapView.cpp
#	${COMMON_SOURCE_DIR}/View/TitleBar.cpp
#	${COMMON_SOURCE_DIR}/View/TitledPanel.cpp
	${COMMON_SOURCE_DIR}/View/ToolBoxConnector.cpp
	${COMMON_SOURCE_DIR}/View/ToolBox.cpp
#	${COMMON_SOURCE_DIR}/View/ToolBoxDropTarget.cpp
	${COMMON_SOURCE_DIR}/View/ToolChain.cpp
	${COMMON_SOURCE_DIR}/View/ToolController.cpp
	${COMMON_SOURCE_DIR}/View/Tool.cpp
	${COMMON_SOURCE_DIR}/View/TransformObjectsCommand.cpp
	${COMMON_SOURCE_DIR}/View/TwoPaneMapView.cpp
	${COMMON_SOURCE_DIR}/View/UndoableCommand.cpp
	${COMMON_SOURCE_DIR}/View/UpdateEntitySpawnflagCommand.cpp
#	${COMMON_SOURCE_DIR}/View/UVCameraTool.cpp
#	${COMMON_SOURCE_DIR}/View/UVEditor.cpp
#	${COMMON_SOURCE_DIR}/View/UVOffsetTool.cpp
#	${COMMON_SOURCE_DIR}/View/UVOriginTool.cpp
#	${COMMON_SOURCE_DIR}/View/UVRotateTool.cpp
#	${COMMON_SOURCE_DIR}/View/UVScaleTool.cpp
#	${COMMON_SOURCE_DIR}/View/UVShearTool.cpp
#	${COMMON_SOURCE_DIR}/View/UVView.cpp
#	${COMMON_SOURCE_DIR}/View/UVViewHelper.cpp
	${COMMON_SOURCE_DIR}/View/VertexCommand.cpp
	${COMMON_SOURCE_DIR}/View/VertexHandleManager.cpp
	${COMMON_SOURCE_DIR}/View/VertexToolController.cpp
	${COMMON_SOURCE_DIR}/View/VertexTool.cpp
	${COMMON_SOURCE_DIR}/View/ViewConstants.cpp
#	${COMMON_SOURCE_DIR}/View/ViewEditor.cpp
	${COMMON_SOURCE_DIR}/View/ViewEffectsService.cpp
#	${COMMON_SOURCE_DIR}/View/ViewPreferencePane.cpp
	${COMMON_SOURCE_DIR}/View/ViewUtils.cpp
	${COMMON_SOURCE_DIR}/View/WelcomeFrame.cpp
	${COMMON_SOURCE_DIR}/View/wxUtils.cpp
	${COMMON_SOURCE_DIR}/Assets/Quake3Shader.cpp
	${COMMON_SOURCE_DIR}/IO/Quake3ShaderFileSystem.cpp
	${COMMON_SOURCE_DIR}/IO/Quake3ShaderParser.cpp
	${COMMON_SOURCE_DIR}/IO/Quake3ShaderTextureReader.cpp
	${COMMON_SOURCE_DIR}/Model/GameFileSystem.cpp
)

SET(COMMON_HEADER
	${COMMON_SOURCE_DIR}/AABBTree.h
	${COMMON_SOURCE_DIR}/Allocator.h
	${COMMON_SOURCE_DIR}/Assets/AssetTypes.h
	${COMMON_SOURCE_DIR}/Assets/AttributeDefinition.h
	${COMMON_SOURCE_DIR}/Assets/ColorRange.h
	${COMMON_SOURCE_DIR}/Assets/EntityDefinitionFileSpec.h
	${COMMON_SOURCE_DIR}/Assets/EntityDefinitionGroup.h
	${COMMON_SOURCE_DIR}/Assets/EntityDefinition.h
	${COMMON_SOURCE_DIR}/Assets/EntityDefinitionManager.h
	${COMMON_SOURCE_DIR}/Assets/EntityModel.h
	${COMMON_SOURCE_DIR}/Assets/EntityModelManager.h
	${COMMON_SOURCE_DIR}/Assets/ImageUtils.h
	${COMMON_SOURCE_DIR}/Assets/ModelDefinition.h
	${COMMON_SOURCE_DIR}/Assets/Palette.h
	${COMMON_SOURCE_DIR}/Assets/TextureCollection.h
	${COMMON_SOURCE_DIR}/Assets/Texture.h
	${COMMON_SOURCE_DIR}/Assets/TextureManager.h
	${COMMON_SOURCE_DIR}/AttrString.h
	${COMMON_SOURCE_DIR}/ByteBuffer.h
	${COMMON_SOURCE_DIR}/CollectionUtils.h
	${COMMON_SOURCE_DIR}/Color.h
	${COMMON_SOURCE_DIR}/Disjunction.h
	${COMMON_SOURCE_DIR}/DoublyLinkedList.h
	${COMMON_SOURCE_DIR}/EL/ELExceptions.h
	${COMMON_SOURCE_DIR}/EL/EvaluationContext.h
	${COMMON_SOURCE_DIR}/EL/Expression.h
	${COMMON_SOURCE_DIR}/EL.h
	${COMMON_SOURCE_DIR}/EL/Interpolator.h
	${COMMON_SOURCE_DIR}/EL/Types.h
	${COMMON_SOURCE_DIR}/EL/Value.h
	${COMMON_SOURCE_DIR}/EL/VariableStore.h
	${COMMON_SOURCE_DIR}/Ensure.h
	${COMMON_SOURCE_DIR}/Exceptions.h
	${COMMON_SOURCE_DIR}/FileLogger.h
	${COMMON_SOURCE_DIR}/FreeType.h
	${COMMON_SOURCE_DIR}/Functor.h
	${COMMON_SOURCE_DIR}/IO/BrushFaceReader.h
	${COMMON_SOURCE_DIR}/IO/Bsp29Parser.h
	${COMMON_SOURCE_DIR}/IO/CharArrayReader.h
	${COMMON_SOURCE_DIR}/IO/CompilationConfigParser.h
	${COMMON_SOURCE_DIR}/IO/CompilationConfigWriter.h
	${COMMON_SOURCE_DIR}/IO/ConfigParserBase.h
	${COMMON_SOURCE_DIR}/IO/DefParser.h
	${COMMON_SOURCE_DIR}/IO/DiskFileSystem.h
	${COMMON_SOURCE_DIR}/IO/DiskIO.h
	${COMMON_SOURCE_DIR}/IO/DkmParser.h
	${COMMON_SOURCE_DIR}/IO/DkPakFileSystem.h
	${COMMON_SOURCE_DIR}/IO/ELParser.h
	${COMMON_SOURCE_DIR}/IO/EntityDefinitionClassInfo.h
	${COMMON_SOURCE_DIR}/IO/EntityDefinitionLoader.h
	${COMMON_SOURCE_DIR}/IO/EntityDefinitionParser.h
	${COMMON_SOURCE_DIR}/IO/EntityModelLoader.h
	${COMMON_SOURCE_DIR}/IO/EntityModelParser.h
	${COMMON_SOURCE_DIR}/IO/FgdParser.h
	${COMMON_SOURCE_DIR}/IO/FileMatcher.h
	${COMMON_SOURCE_DIR}/IO/FileSystem.h
	${COMMON_SOURCE_DIR}/IO/FreeImageTextureReader.h
	${COMMON_SOURCE_DIR}/IO/GameConfigParser.h
	${COMMON_SOURCE_DIR}/IO/GameEngineConfigParser.h
	${COMMON_SOURCE_DIR}/IO/GameEngineConfigWriter.h
	${COMMON_SOURCE_DIR}/IO/HlMipTextureReader.h
	${COMMON_SOURCE_DIR}/IO/IdMipTextureReader.h
	${COMMON_SOURCE_DIR}/IO/IdPakFileSystem.h
	${COMMON_SOURCE_DIR}/IO/ImageFileSystem.h
	${COMMON_SOURCE_DIR}/IO/ImageLoader.h
	${COMMON_SOURCE_DIR}/IO/ImageLoaderImpl.h
	${COMMON_SOURCE_DIR}/IO/IOUtils.h
	${COMMON_SOURCE_DIR}/IO/LegacyModelDefinitionParser.h
	${COMMON_SOURCE_DIR}/IO/MapFileSerializer.h
	${COMMON_SOURCE_DIR}/IO/MapParser.h
	${COMMON_SOURCE_DIR}/IO/MappedFile.h
	${COMMON_SOURCE_DIR}/IO/MapReader.h
	${COMMON_SOURCE_DIR}/IO/MapStreamSerializer.h
	${COMMON_SOURCE_DIR}/IO/Md2Parser.h
	${COMMON_SOURCE_DIR}/IO/Md3Parser.h
	${COMMON_SOURCE_DIR}/IO/MdlParser.h
	${COMMON_SOURCE_DIR}/IO/MipTextureReader.h
	${COMMON_SOURCE_DIR}/IO/NodeReader.h
	${COMMON_SOURCE_DIR}/IO/NodeSerializer.h
	${COMMON_SOURCE_DIR}/IO/NodeWriter.h
	${COMMON_SOURCE_DIR}/IO/ObjSerializer.h
	${COMMON_SOURCE_DIR}/IO/Parser.h
	${COMMON_SOURCE_DIR}/IO/ParserStatus.h
	${COMMON_SOURCE_DIR}/IO/Path.h
	${COMMON_SOURCE_DIR}/IO/ResourceUtils.h
	${COMMON_SOURCE_DIR}/IO/SimpleParserStatus.h
	${COMMON_SOURCE_DIR}/IO/SkinLoader.h
	${COMMON_SOURCE_DIR}/IO/StandardMapParser.h
	${COMMON_SOURCE_DIR}/IO/SystemPaths.h
	${COMMON_SOURCE_DIR}/IO/TextureCollectionLoader.h
	${COMMON_SOURCE_DIR}/IO/TextureLoader.h
	${COMMON_SOURCE_DIR}/IO/TextureReader.h
	${COMMON_SOURCE_DIR}/IO/Token.h
	${COMMON_SOURCE_DIR}/IO/Tokenizer.h
	${COMMON_SOURCE_DIR}/IO/WadFileSystem.h
	${COMMON_SOURCE_DIR}/IO/WalTextureReader.h
	${COMMON_SOURCE_DIR}/IO/WorldReader.h
	${COMMON_SOURCE_DIR}/IO/ZipFileSystem.h
	${COMMON_SOURCE_DIR}/Logger.h
	${COMMON_SOURCE_DIR}/Macros.h
	${COMMON_SOURCE_DIR}/Model/AssortNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/AttributableNode.h
	${COMMON_SOURCE_DIR}/Model/AttributableNodeIndex.h
	${COMMON_SOURCE_DIR}/Model/AttributableNodeVariableStore.h
	${COMMON_SOURCE_DIR}/Model/AttributeNameWithDoubleQuotationMarksIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/AttributeValueWithDoubleQuotationMarksIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/BoundsContainsNodeVisitor.h
	${COMMON_SOURCE_DIR}/Model/BoundsIntersectsNodeVisitor.h
	${COMMON_SOURCE_DIR}/Model/BrushBuilder.h
	${COMMON_SOURCE_DIR}/Model/BrushContentTypeBuilder.h
	${COMMON_SOURCE_DIR}/Model/BrushContentTypeEvaluator.h
	${COMMON_SOURCE_DIR}/Model/BrushContentType.h
	${COMMON_SOURCE_DIR}/Model/BrushFaceAttributes.h
	${COMMON_SOURCE_DIR}/Model/BrushFace.h
	${COMMON_SOURCE_DIR}/Model/BrushFacePredicates.h
	${COMMON_SOURCE_DIR}/Model/BrushFaceReference.h
	${COMMON_SOURCE_DIR}/Model/BrushFaceSnapshot.h
	${COMMON_SOURCE_DIR}/Model/BrushGeometry.h
	${COMMON_SOURCE_DIR}/Model/Brush.h
	${COMMON_SOURCE_DIR}/Model/BrushSnapshot.h
	${COMMON_SOURCE_DIR}/Model/ChangeBrushFaceAttributesRequest.h
	${COMMON_SOURCE_DIR}/Model/CollectAttributableNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectContainedNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectMatchingBrushFacesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectMatchingIssuesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectMatchingNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectNodesByVisibilityVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectNodesWithDescendantSelectionCountVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectRecursivelySelectedNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectSelectableBrushFacesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectSelectableNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectSelectableNodesWithFilePositionVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectSelectedNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectTouchingNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CollectUniqueNodesVisitor.h
	${COMMON_SOURCE_DIR}/Model/CompareHits.h
	${COMMON_SOURCE_DIR}/Model/CompilationConfig.h
	${COMMON_SOURCE_DIR}/Model/CompilationProfile.h
	${COMMON_SOURCE_DIR}/Model/CompilationTask.h
	${COMMON_SOURCE_DIR}/Model/ComputeNodeBoundsVisitor.h
	${COMMON_SOURCE_DIR}/Model/EditorContext.h
	${COMMON_SOURCE_DIR}/Model/EmptyAttributeNameIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/EmptyAttributeValueIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/EmptyBrushEntityIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/EmptyGroupIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/EntityAttributes.h
	${COMMON_SOURCE_DIR}/Model/EntityAttributeSnapshot.h
	${COMMON_SOURCE_DIR}/Model/EntityAttributesVariableStore.h
	${COMMON_SOURCE_DIR}/Model/EntityColor.h
	${COMMON_SOURCE_DIR}/Model/Entity.h
	${COMMON_SOURCE_DIR}/Model/EntityRotationPolicy.h
	${COMMON_SOURCE_DIR}/Model/EntitySnapshot.h
	${COMMON_SOURCE_DIR}/Model/FindContainerVisitor.h
	${COMMON_SOURCE_DIR}/Model/FindGroupVisitor.h
	${COMMON_SOURCE_DIR}/Model/FindLayerVisitor.h
	${COMMON_SOURCE_DIR}/Model/FindMatchingBrushFaceVisitor.h
	${COMMON_SOURCE_DIR}/Model/GameConfig.h
	${COMMON_SOURCE_DIR}/Model/GameEngineConfig.h
	${COMMON_SOURCE_DIR}/Model/GameEngineProfile.h
	${COMMON_SOURCE_DIR}/Model/GameFactory.h
	${COMMON_SOURCE_DIR}/Model/Game.h
	${COMMON_SOURCE_DIR}/Model/GameImpl.h
	${COMMON_SOURCE_DIR}/Model/Group.h
	${COMMON_SOURCE_DIR}/Model/GroupSnapshot.h
	${COMMON_SOURCE_DIR}/Model/HitAdapter.h
	${COMMON_SOURCE_DIR}/Model/HitFilter.h
	${COMMON_SOURCE_DIR}/Model/Hit.h
	${COMMON_SOURCE_DIR}/Model/HitQuery.h
	${COMMON_SOURCE_DIR}/Model/IntersectNodeWithRayVisitor.h
	${COMMON_SOURCE_DIR}/Model/IssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/IssueGeneratorRegistry.h
	${COMMON_SOURCE_DIR}/Model/Issue.h
	${COMMON_SOURCE_DIR}/Model/IssueQuickFix.h
	${COMMON_SOURCE_DIR}/Model/Layer.h
	${COMMON_SOURCE_DIR}/Model/LinkSourceIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/LinkTargetIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/LongAttributeNameIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/LongAttributeValueIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/MapFacade.h
	${COMMON_SOURCE_DIR}/Model/MapFormat.h
	${COMMON_SOURCE_DIR}/Model/MatchNodesByVisibility.h
	${COMMON_SOURCE_DIR}/Model/MatchSelectableNodes.h
	${COMMON_SOURCE_DIR}/Model/MatchSelectedNodes.h
	${COMMON_SOURCE_DIR}/Model/MergeNodesIntoWorldVisitor.h
	${COMMON_SOURCE_DIR}/Model/MissingClassnameIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/MissingDefinitionIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/MissingModIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/MixedBrushContentsIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/ModelFactory.h
	${COMMON_SOURCE_DIR}/Model/ModelFactoryImpl.h
	${COMMON_SOURCE_DIR}/Model/ModelTypes.h
	${COMMON_SOURCE_DIR}/Model/ModelUtils.h
	${COMMON_SOURCE_DIR}/Model/NodeCollection.h
	${COMMON_SOURCE_DIR}/Model/Node.h
	${COMMON_SOURCE_DIR}/Model/NodePredicates.h
	${COMMON_SOURCE_DIR}/Model/NodeSnapshot.h
	${COMMON_SOURCE_DIR}/Model/NodeVisitor.h
	${COMMON_SOURCE_DIR}/Model/NonIntegerPlanePointsIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/NonIntegerVerticesIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/Object.h
	${COMMON_SOURCE_DIR}/Model/ParallelTexCoordSystem.h
	${COMMON_SOURCE_DIR}/Model/ParaxialTexCoordSystem.h
	${COMMON_SOURCE_DIR}/Model/Pickable.h
	${COMMON_SOURCE_DIR}/Model/PickResult.h
	${COMMON_SOURCE_DIR}/Model/PlanePointFinder.h
	${COMMON_SOURCE_DIR}/Model/PointEntityWithBrushesIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/PointFile.h
	${COMMON_SOURCE_DIR}/Model/PortalFile.h
	${COMMON_SOURCE_DIR}/Model/PushSelection.h
	${COMMON_SOURCE_DIR}/Model/RemoveEntityAttributesQuickFix.h
	${COMMON_SOURCE_DIR}/Model/Snapshot.h
	${COMMON_SOURCE_DIR}/Model/TakeSnapshotVisitor.h
	${COMMON_SOURCE_DIR}/Model/TexCoordSystem.h
	${COMMON_SOURCE_DIR}/Model/TransformEntityAttributesQuickFix.h
	${COMMON_SOURCE_DIR}/Model/TransformObjectVisitor.h
	${COMMON_SOURCE_DIR}/Model/Tutorial.h
	${COMMON_SOURCE_DIR}/Model/WorldBoundsIssueGenerator.h
	${COMMON_SOURCE_DIR}/Model/World.h
	${COMMON_SOURCE_DIR}/NodeTree.h
	${COMMON_SOURCE_DIR}/Notifier.h
	${COMMON_SOURCE_DIR}/Polyhedron_BrushGeometryPayload.h
	${COMMON_SOURCE_DIR}/Polyhedron_Clip.h
	${COMMON_SOURCE_DIR}/Polyhedron_ConvexHull.h
	${COMMON_SOURCE_DIR}/Polyhedron_DefaultPayload.h
	${COMMON_SOURCE_DIR}/Polyhedron_Edge.h
	${COMMON_SOURCE_DIR}/Polyhedron_Face.h
	${COMMON_SOURCE_DIR}/Polyhedron.h
	${COMMON_SOURCE_DIR}/Polyhedron_HalfEdge.h
	${COMMON_SOURCE_DIR}/Polyhedron_Instantiation.h
	${COMMON_SOURCE_DIR}/Polyhedron_Intersect.h
	${COMMON_SOURCE_DIR}/Polyhedron_Matcher.h
	${COMMON_SOURCE_DIR}/Polyhedron_Misc.h
	${COMMON_SOURCE_DIR}/Polyhedron_Queries.h
	${COMMON_SOURCE_DIR}/Polyhedron_Subtract.h
	${COMMON_SOURCE_DIR}/Polyhedron_Vertex.h
	${COMMON_SOURCE_DIR}/Preference.h
	${COMMON_SOURCE_DIR}/PreferenceManager.h
	${COMMON_SOURCE_DIR}/Preferences.h
	${COMMON_SOURCE_DIR}/ProjectingSequence.h
	${COMMON_SOURCE_DIR}/RecoverableExceptions.h
	${COMMON_SOURCE_DIR}/Reference.h
	${COMMON_SOURCE_DIR}/Relation.h
	${COMMON_SOURCE_DIR}/Renderer/AllocationTracker.h
	${COMMON_SOURCE_DIR}/Renderer/AttributeSpec.h
	${COMMON_SOURCE_DIR}/Renderer/BoundsGuideRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/BrushRendererArrays.h
	${COMMON_SOURCE_DIR}/Renderer/BrushRendererBrushCache.h
	${COMMON_SOURCE_DIR}/Renderer/BrushRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/Camera.h
	${COMMON_SOURCE_DIR}/Renderer/Circle.h
	${COMMON_SOURCE_DIR}/Renderer/Compass2D.h
	${COMMON_SOURCE_DIR}/Renderer/Compass3D.h
	${COMMON_SOURCE_DIR}/Renderer/Compass.h
	${COMMON_SOURCE_DIR}/Renderer/EdgeRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/EntityLinkRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/EntityModelRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/EntityRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/FaceRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/FontDescriptor.h
	${COMMON_SOURCE_DIR}/Renderer/FontFactory.h
	${COMMON_SOURCE_DIR}/Renderer/FontGlyphBuilder.h
	${COMMON_SOURCE_DIR}/Renderer/FontGlyph.h
	${COMMON_SOURCE_DIR}/Renderer/FontManager.h
	${COMMON_SOURCE_DIR}/Renderer/FontTexture.h
	${COMMON_SOURCE_DIR}/Renderer/FreeTypeFontFactory.h
	${COMMON_SOURCE_DIR}/Renderer/GL.h
	${COMMON_SOURCE_DIR}/Renderer/GridRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/GroupRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/IndexArray.h
	${COMMON_SOURCE_DIR}/Renderer/IndexArrayMapBuilder.h
	${COMMON_SOURCE_DIR}/Renderer/IndexArrayMap.h
	${COMMON_SOURCE_DIR}/Renderer/IndexedVertexList.h
	${COMMON_SOURCE_DIR}/Renderer/IndexRangeMapBuilder.h
	${COMMON_SOURCE_DIR}/Renderer/IndexRangeMap.h
	${COMMON_SOURCE_DIR}/Renderer/IndexRangeRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/MapRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/ObjectRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/OrthographicCamera.h
	${COMMON_SOURCE_DIR}/Renderer/PerspectiveCamera.h
	${COMMON_SOURCE_DIR}/Renderer/PointGuideRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/PointHandleRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/PrimitiveRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/Renderable.h
	${COMMON_SOURCE_DIR}/Renderer/RenderBatch.h
	${COMMON_SOURCE_DIR}/Renderer/RenderContext.h
	${COMMON_SOURCE_DIR}/Renderer/RenderService.h
	${COMMON_SOURCE_DIR}/Renderer/RenderUtils.h
	${COMMON_SOURCE_DIR}/Renderer/SelectionBoundsRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/ShaderConfig.h
	${COMMON_SOURCE_DIR}/Renderer/Shader.h
	${COMMON_SOURCE_DIR}/Renderer/ShaderManager.h
	${COMMON_SOURCE_DIR}/Renderer/ShaderProgram.h
	${COMMON_SOURCE_DIR}/Renderer/Shaders.h
	${COMMON_SOURCE_DIR}/Renderer/Sphere.h
	${COMMON_SOURCE_DIR}/Renderer/SpikeGuideRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/TextAnchor.h
	${COMMON_SOURCE_DIR}/Renderer/TextRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexArrayMapBuilder.h
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexArrayMap.h
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexArrayRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexRangeMapBuilder.h
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexRangeMap.h
	${COMMON_SOURCE_DIR}/Renderer/TexturedIndexRangeRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/TextureFont.h
	${COMMON_SOURCE_DIR}/Renderer/Transformation.h
	${COMMON_SOURCE_DIR}/Renderer/TriangleRenderer.h
	${COMMON_SOURCE_DIR}/Renderer/VboBlock.h
	${COMMON_SOURCE_DIR}/Renderer/Vbo.h
	${COMMON_SOURCE_DIR}/Renderer/VertexArray.h
	${COMMON_SOURCE_DIR}/Renderer/Vertex.h
	${COMMON_SOURCE_DIR}/Renderer/VertexListBuilder.h
	${COMMON_SOURCE_DIR}/Renderer/VertexSpec.h
	${COMMON_SOURCE_DIR}/SharedPointer.h
	${COMMON_SOURCE_DIR}/StringMap.h
	${COMMON_SOURCE_DIR}/StringUtils.h
	${COMMON_SOURCE_DIR}/TemporarilySetAny.h
	${COMMON_SOURCE_DIR}/TrenchBroomApp.h
	${COMMON_SOURCE_DIR}/TrenchBroom.h
	${COMMON_SOURCE_DIR}/TrenchBroomStackWalker.h
	${COMMON_SOURCE_DIR}/View/AboutDialog.h
	${COMMON_SOURCE_DIR}/View/ActionContext.h
	${COMMON_SOURCE_DIR}/View/ActionList.h
	${COMMON_SOURCE_DIR}/View/AddBrushVerticesCommand.h
	${COMMON_SOURCE_DIR}/View/AddRemoveNodesCommand.h
	${COMMON_SOURCE_DIR}/View/AnimationCurve.h
	${COMMON_SOURCE_DIR}/View/Animation.h
	${COMMON_SOURCE_DIR}/View/AppInfoPanel.h
#	${COMMON_SOURCE_DIR}/View/AutoCompleteTextControl.h
	${COMMON_SOURCE_DIR}/View/Autosaver.h
	${COMMON_SOURCE_DIR}/View/BitmapButton.h
	${COMMON_SOURCE_DIR}/View/BitmapStaticButton.h
	${COMMON_SOURCE_DIR}/View/BitmapToggleButton.h
	${COMMON_SOURCE_DIR}/View/BorderLine.h
	${COMMON_SOURCE_DIR}/View/BorderPanel.h
	${COMMON_SOURCE_DIR}/View/CachingLogger.h
	${COMMON_SOURCE_DIR}/View/CameraAnimation.h
	${COMMON_SOURCE_DIR}/View/CameraLinkHelper.h
	${COMMON_SOURCE_DIR}/View/CameraTool2D.h
	${COMMON_SOURCE_DIR}/View/CameraTool3D.h
	${COMMON_SOURCE_DIR}/View/CellLayout.h
	${COMMON_SOURCE_DIR}/View/CellView.h
	${COMMON_SOURCE_DIR}/View/ChangeBrushFaceAttributesCommand.h
	${COMMON_SOURCE_DIR}/View/ChangeEntityAttributesCommand.h
	${COMMON_SOURCE_DIR}/View/ChoosePathTypeDialog.h
	${COMMON_SOURCE_DIR}/View/ClipToolController.h
	${COMMON_SOURCE_DIR}/View/ClipTool.h
#	${COMMON_SOURCE_DIR}/View/CollapsibleTitledPanel.h
	${COMMON_SOURCE_DIR}/View/ColorTable.h
	${COMMON_SOURCE_DIR}/View/ColorTableSelectedCommand.h
	${COMMON_SOURCE_DIR}/View/Command.h
	${COMMON_SOURCE_DIR}/View/CommandProcessor.h
#	${COMMON_SOURCE_DIR}/View/CompilationContext.h
#	${COMMON_SOURCE_DIR}/View/CompilationDialog.h
#	${COMMON_SOURCE_DIR}/View/CompilationProfileEditor.h
#	${COMMON_SOURCE_DIR}/View/CompilationProfileListBox.h
#	${COMMON_SOURCE_DIR}/View/CompilationProfileManager.h
#	${COMMON_SOURCE_DIR}/View/CompilationRun.h
#	${COMMON_SOURCE_DIR}/View/CompilationRunner.h
#	${COMMON_SOURCE_DIR}/View/CompilationTaskList.h
#	${COMMON_SOURCE_DIR}/View/CompilationVariables.h
	${COMMON_SOURCE_DIR}/View/Console.h
	${COMMON_SOURCE_DIR}/View/ContainerBar.h
	${COMMON_SOURCE_DIR}/View/ControlListBox.h
	${COMMON_SOURCE_DIR}/View/ConvertEntityColorCommand.h
	${COMMON_SOURCE_DIR}/View/CopyTexCoordSystemFromFaceCommand.h
	${COMMON_SOURCE_DIR}/View/CrashDialog.h
	${COMMON_SOURCE_DIR}/View/CreateBrushToolBase.h
	${COMMON_SOURCE_DIR}/View/CreateComplexBrushToolController3D.h
	${COMMON_SOURCE_DIR}/View/CreateComplexBrushTool.h
	${COMMON_SOURCE_DIR}/View/CreateEntityToolController.h
	${COMMON_SOURCE_DIR}/View/CreateEntityTool.h
	${COMMON_SOURCE_DIR}/View/CreateSimpleBrushToolController2D.h
	${COMMON_SOURCE_DIR}/View/CreateSimpleBrushToolController3D.h
	${COMMON_SOURCE_DIR}/View/CreateSimpleBrushTool.h
	${COMMON_SOURCE_DIR}/View/CurrentGameIndicator.h
	${COMMON_SOURCE_DIR}/View/CurrentGroupCommand.h
	${COMMON_SOURCE_DIR}/View/CyclingMapView.h
	${COMMON_SOURCE_DIR}/View/DirectoryTextureCollectionEditor.h
	${COMMON_SOURCE_DIR}/View/DocumentCommand.h
	${COMMON_SOURCE_DIR}/View/DragAndDrop.h
	${COMMON_SOURCE_DIR}/View/DuplicateNodesCommand.h
	${COMMON_SOURCE_DIR}/View/EdgeToolController.h
	${COMMON_SOURCE_DIR}/View/EdgeTool.h
	${COMMON_SOURCE_DIR}/View/ELAutoCompleteHelper.h
	${COMMON_SOURCE_DIR}/View/EntityAttributeEditor.h
	${COMMON_SOURCE_DIR}/View/EntityAttributeGrid.h
	${COMMON_SOURCE_DIR}/View/EntityAttributeGridTable.h
	${COMMON_SOURCE_DIR}/View/EntityBrowser.h
	${COMMON_SOURCE_DIR}/View/EntityBrowserView.h
	${COMMON_SOURCE_DIR}/View/EntityDefinitionFileChooser.h
	${COMMON_SOURCE_DIR}/View/EntityDefinitionFileCommand.h
	${COMMON_SOURCE_DIR}/View/EntityInspector.h
	${COMMON_SOURCE_DIR}/View/ExecutableEvent.h
	${COMMON_SOURCE_DIR}/View/FaceAttribsEditor.h
	${COMMON_SOURCE_DIR}/View/FaceInspector.h
	${COMMON_SOURCE_DIR}/View/FaceToolController.h
	${COMMON_SOURCE_DIR}/View/FaceTool.h
	${COMMON_SOURCE_DIR}/View/FileTextureCollectionEditor.h
	${COMMON_SOURCE_DIR}/View/FindPlanePointsCommand.h
	${COMMON_SOURCE_DIR}/View/FlagsEditor.h
	${COMMON_SOURCE_DIR}/View/FlagsPopupEditor.h
	${COMMON_SOURCE_DIR}/View/FlashSelectionAnimation.h
	${COMMON_SOURCE_DIR}/View/FlyModeHelper.h
	${COMMON_SOURCE_DIR}/View/FourPaneMapView.h
	${COMMON_SOURCE_DIR}/View/FrameManager.h
	${COMMON_SOURCE_DIR}/View/GameDialog.h
	${COMMON_SOURCE_DIR}/View/GameEngineDialog.h
	${COMMON_SOURCE_DIR}/View/GameEngineProfileEditor.h
	${COMMON_SOURCE_DIR}/View/GameEngineProfileListBox.h
	${COMMON_SOURCE_DIR}/View/GameEngineProfileManager.h
	${COMMON_SOURCE_DIR}/View/GameListBox.h
	${COMMON_SOURCE_DIR}/View/GameSelectionCommand.h
	${COMMON_SOURCE_DIR}/View/GamesPreferencePane.h
	${COMMON_SOURCE_DIR}/View/GenericDropSource.h
	${COMMON_SOURCE_DIR}/View/GetVersion.h
	${COMMON_SOURCE_DIR}/View/GLAttribs.h
	${COMMON_SOURCE_DIR}/View/GLContext.h
	${COMMON_SOURCE_DIR}/View/GLContextManager.h
	${COMMON_SOURCE_DIR}/View/Grid.h
	${COMMON_SOURCE_DIR}/View/ImageListBox.h
	${COMMON_SOURCE_DIR}/View/InfoPanel.h
	${COMMON_SOURCE_DIR}/View/InputEvent.h
	${COMMON_SOURCE_DIR}/View/InputState.h
	${COMMON_SOURCE_DIR}/View/Inspector.h
	${COMMON_SOURCE_DIR}/View/IssueBrowser.h
	${COMMON_SOURCE_DIR}/View/IssueBrowserView.h
	${COMMON_SOURCE_DIR}/View/KeyboardGridCellEditor.h
	${COMMON_SOURCE_DIR}/View/KeyboardPreferencePane.h
	${COMMON_SOURCE_DIR}/View/KeyboardShortcutEditor.h
	${COMMON_SOURCE_DIR}/View/KeyboardShortcutEntry.h
	${COMMON_SOURCE_DIR}/View/KeyboardShortcutEvent.h
	${COMMON_SOURCE_DIR}/View/KeyboardShortcutGridTable.h
	${COMMON_SOURCE_DIR}/View/KeyboardShortcut.h
	${COMMON_SOURCE_DIR}/View/Lasso.h
	${COMMON_SOURCE_DIR}/View/LaunchGameEngineDialog.h
	${COMMON_SOURCE_DIR}/View/LayerEditor.h
	${COMMON_SOURCE_DIR}/View/LayerListBox.h
	${COMMON_SOURCE_DIR}/View/LockedGridCellRenderer.h
	${COMMON_SOURCE_DIR}/View/MapDocumentCommandFacade.h
	${COMMON_SOURCE_DIR}/View/MapDocument.h
	${COMMON_SOURCE_DIR}/View/MapFrameDropTarget.h
	${COMMON_SOURCE_DIR}/View/MapFrame.h
	${COMMON_SOURCE_DIR}/View/MapInspector.h
	${COMMON_SOURCE_DIR}/View/MapView2D.h
	${COMMON_SOURCE_DIR}/View/MapView3D.h
	${COMMON_SOURCE_DIR}/View/MapViewBar.h
	${COMMON_SOURCE_DIR}/View/MapViewBase.h
	${COMMON_SOURCE_DIR}/View/MapViewConfig.h
	${COMMON_SOURCE_DIR}/View/MapViewContainer.h
	${COMMON_SOURCE_DIR}/View/MapView.h
	${COMMON_SOURCE_DIR}/View/MapViewLayout.h
	${COMMON_SOURCE_DIR}/View/MapViewToolBox.h
	${COMMON_SOURCE_DIR}/View/ModEditor.h
	${COMMON_SOURCE_DIR}/View/MousePreferencePane.h
	${COMMON_SOURCE_DIR}/View/MoveBrushEdgesCommand.h
	${COMMON_SOURCE_DIR}/View/MoveBrushFacesCommand.h
	${COMMON_SOURCE_DIR}/View/MoveBrushVerticesCommand.h
	${COMMON_SOURCE_DIR}/View/MoveObjectsToolController.h
	${COMMON_SOURCE_DIR}/View/MoveObjectsTool.h
	${COMMON_SOURCE_DIR}/View/MoveObjectsToolPage.h
	${COMMON_SOURCE_DIR}/View/MoveTexturesCommand.h
	${COMMON_SOURCE_DIR}/View/MoveToolController.h
	${COMMON_SOURCE_DIR}/View/MultiMapView.h
	${COMMON_SOURCE_DIR}/View/OnePaneMapView.h
	${COMMON_SOURCE_DIR}/View/PickRequest.h
	${COMMON_SOURCE_DIR}/View/PopupButton.h
	${COMMON_SOURCE_DIR}/View/PopupWindow.h
	${COMMON_SOURCE_DIR}/View/PreferenceDialog.h
	${COMMON_SOURCE_DIR}/View/PreferencePane.h
	${COMMON_SOURCE_DIR}/View/RadioGroup.h
	${COMMON_SOURCE_DIR}/View/RecentDocumentListBox.h
	${COMMON_SOURCE_DIR}/View/RecentDocumentSelectedCommand.h
	${COMMON_SOURCE_DIR}/View/RecentDocuments.h
	${COMMON_SOURCE_DIR}/View/RemoveBrushEdgesCommand.h
	${COMMON_SOURCE_DIR}/View/RemoveBrushElementsCommand.h
	${COMMON_SOURCE_DIR}/View/RemoveBrushFacesCommand.h
	${COMMON_SOURCE_DIR}/View/RemoveBrushVerticesCommand.h
	${COMMON_SOURCE_DIR}/View/RenameGroupsCommand.h
	${COMMON_SOURCE_DIR}/View/RenderView.h
	${COMMON_SOURCE_DIR}/View/ReparentNodesCommand.h
	${COMMON_SOURCE_DIR}/View/ReplaceTextureDialog.h
	${COMMON_SOURCE_DIR}/View/ResizeBrushesCommand.h
	${COMMON_SOURCE_DIR}/View/ResizeBrushesToolController.h
	${COMMON_SOURCE_DIR}/View/ResizeBrushesTool.h
	${COMMON_SOURCE_DIR}/View/RotateObjectsHandle.h
	${COMMON_SOURCE_DIR}/View/RotateObjectsToolController.h
	${COMMON_SOURCE_DIR}/View/RotateObjectsTool.h
	${COMMON_SOURCE_DIR}/View/RotateObjectsToolPage.h
	${COMMON_SOURCE_DIR}/View/RotateTexturesCommand.h
	${COMMON_SOURCE_DIR}/View/ScaleObjectsToolController.h
	${COMMON_SOURCE_DIR}/View/ScaleObjectsTool.h
	${COMMON_SOURCE_DIR}/View/ScaleObjectsToolPage.h
	${COMMON_SOURCE_DIR}/View/SelectionCommand.h
	${COMMON_SOURCE_DIR}/View/Selection.h
	${COMMON_SOURCE_DIR}/View/SelectionTool.h
	${COMMON_SOURCE_DIR}/View/SetBrushFaceAttributesTool.h
	${COMMON_SOURCE_DIR}/View/SetLockStateCommand.h
	${COMMON_SOURCE_DIR}/View/SetModsCommand.h
	${COMMON_SOURCE_DIR}/View/SetTextureCollectionsCommand.h
	${COMMON_SOURCE_DIR}/View/SetVisibilityCommand.h
	${COMMON_SOURCE_DIR}/View/ShearObjectsToolController.h
	${COMMON_SOURCE_DIR}/View/ShearObjectsTool.h
	${COMMON_SOURCE_DIR}/View/ShearTexturesCommand.h
#	${COMMON_SOURCE_DIR}/View/SmartAttributeEditor.h
#	${COMMON_SOURCE_DIR}/View/SmartAttributeEditorManager.h
#	${COMMON_SOURCE_DIR}/View/SmartAttributeEditorMatcher.h
#	${COMMON_SOURCE_DIR}/View/SmartChoiceEditor.h
#	${COMMON_SOURCE_DIR}/View/SmartChoiceEditorMatcher.h
#	${COMMON_SOURCE_DIR}/View/SmartColorEditor.h
#	${COMMON_SOURCE_DIR}/View/SmartDefaultAttributeEditor.h
#	${COMMON_SOURCE_DIR}/View/SmartSpawnflagsEditor.h
	${COMMON_SOURCE_DIR}/View/SnapBrushVerticesCommand.h
	${COMMON_SOURCE_DIR}/View/SnapshotCommand.h
	${COMMON_SOURCE_DIR}/View/SpinControl.h
	${COMMON_SOURCE_DIR}/View/SplitterWindow4.h
	${COMMON_SOURCE_DIR}/View/SwitchableMapViewContainer.h
	${COMMON_SOURCE_DIR}/View/TabBar.h
	${COMMON_SOURCE_DIR}/View/TabBook.h
	${COMMON_SOURCE_DIR}/View/TextCtrlOutputAdapter.h
	${COMMON_SOURCE_DIR}/View/TextureBrowser.h
	${COMMON_SOURCE_DIR}/View/TextureBrowserView.h
	${COMMON_SOURCE_DIR}/View/TextureCollectionEditor.h
	${COMMON_SOURCE_DIR}/View/TextureSelectedCommand.h
	${COMMON_SOURCE_DIR}/View/ThreePaneMapView.h
	${COMMON_SOURCE_DIR}/View/TitleBar.h
	${COMMON_SOURCE_DIR}/View/TitledPanel.h
	${COMMON_SOURCE_DIR}/View/ToolBoxConnector.h
	${COMMON_SOURCE_DIR}/View/ToolBoxDropTarget.h
	${COMMON_SOURCE_DIR}/View/ToolBox.h
	${COMMON_SOURCE_DIR}/View/ToolChain.h
	${COMMON_SOURCE_DIR}/View/ToolController.h
	${COMMON_SOURCE_DIR}/View/Tool.h
	${COMMON_SOURCE_DIR}/View/TransformObjectsCommand.h
	${COMMON_SOURCE_DIR}/View/TwoPaneMapView.h
	${COMMON_SOURCE_DIR}/View/UndoableCommand.h
	${COMMON_SOURCE_DIR}/View/UpdateEntitySpawnflagCommand.h
	${COMMON_SOURCE_DIR}/View/UVCameraTool.h
	${COMMON_SOURCE_DIR}/View/UVEditor.h
	${COMMON_SOURCE_DIR}/View/UVOffsetTool.h
	${COMMON_SOURCE_DIR}/View/UVOriginTool.h
	${COMMON_SOURCE_DIR}/View/UVRotateTool.h
	${COMMON_SOURCE_DIR}/View/UVScaleTool.h
	${COMMON_SOURCE_DIR}/View/UVShearTool.h
	${COMMON_SOURCE_DIR}/View/UVView.h
	${COMMON_SOURCE_DIR}/View/UVViewHelper.h
	${COMMON_SOURCE_DIR}/View/VertexCommand.h
	${COMMON_SOURCE_DIR}/View/VertexHandleManager.h
	${COMMON_SOURCE_DIR}/View/VertexToolBase.h
	${COMMON_SOURCE_DIR}/View/VertexToolControllerBase.h
	${COMMON_SOURCE_DIR}/View/VertexToolController.h
	${COMMON_SOURCE_DIR}/View/VertexTool.h
	${COMMON_SOURCE_DIR}/View/ViewConstants.h
	${COMMON_SOURCE_DIR}/View/ViewEditor.h
	${COMMON_SOURCE_DIR}/View/ViewEffectsService.h
	${COMMON_SOURCE_DIR}/View/ViewPreferencePane.h
	${COMMON_SOURCE_DIR}/View/ViewTypes.h
	${COMMON_SOURCE_DIR}/View/ViewUtils.h
	${COMMON_SOURCE_DIR}/View/WelcomeFrame.h
	${COMMON_SOURCE_DIR}/View/wxUtils.h
	${COMMON_SOURCE_DIR}/Assets/Quake3Shader.h
	${COMMON_SOURCE_DIR}/IO/Quake3ShaderFileSystem.h
	${COMMON_SOURCE_DIR}/IO/Quake3ShaderParser.h
	${COMMON_SOURCE_DIR}/IO/Quake3ShaderTextureReader.h
	${COMMON_SOURCE_DIR}/Model/GameFileSystem.h
)

# Unfortunately, Xcode still compiles OBJECT libraries as static libraries
SET(TB_COMMON_LIBRARY_TYPE OBJECT)
IF(CMAKE_GENERATOR STREQUAL "Xcode" AND CMAKE_BUILD_TYPE STREQUAL "Debug")
	SET(TB_COMMON_LIBRARY_TYPE SHARED)
ENDIF()
MESSAGE(STATUS "Building common as ${TB_COMMON_LIBRARY_TYPE} library")

ADD_LIBRARY(common ${TB_COMMON_LIBRARY_TYPE} ${COMMON_SOURCE} ${COMMON_HEADER})
SET_XCODE_ATTRIBUTES(common)

# Configure dependencies if building a shared library.
get_target_property(common_TYPE common TYPE)
IF(common_TYPE STREQUAL "SHARED_LIBRARY")
	IF(COMPILER_IS_GNU AND TB_ENABLE_ASAN)
		TARGET_LINK_LIBRARIES(common asan)
	ENDIF()

	TARGET_LINK_LIBRARIES(common glew ${wxWidgets_LIBRARIES} ${FREETYPE_LIBRARIES} ${FREEIMAGE_LIBRARIES} vecmath)
ENDIF()
TARGET_LINK_LIBRARIES(common Qt5::Widgets)

INCLUDE_DIRECTORIES(${COMMON_SOURCE_DIR})

SET_TARGET_PROPERTIES(common PROPERTIES COMPILE_DEFINITIONS "GLEW_STATIC")

# Create the cmake script for generating the version information

# Need to find git first because GenerateVersion.cmake.in accesses the GIT_EXECUTABLE variable it populates.
FIND_PACKAGE(Git)
IF (NOT GIT_FOUND)
    MESSAGE(WARNING "Could not find git")
ENDIF()

CONFIGURE_FILE("${CMAKE_SOURCE_DIR}/cmake/GenerateVersion.cmake.in" "${CMAKE_CURRENT_BINARY_DIR}/GenerateVersion.cmake" @ONLY)
ADD_TARGET_PROPERTY(common INCLUDE_DIRECTORIES ${CMAKE_CURRENT_BINARY_DIR})
ADD_CUSTOM_TARGET(GenerateVersion
		${CMAKE_COMMAND} -P "${CMAKE_CURRENT_BINARY_DIR}/GenerateVersion.cmake")
ADD_DEPENDENCIES(common GenerateVersion)
