---@meta

---@class UnityEngine.RendererExtensions : System.Object
UnityEngine.RendererExtensions = {}
---@alias CS.UnityEngine.RendererExtensions UnityEngine.RendererExtensions
CS.UnityEngine.RendererExtensions = UnityEngine.RendererExtensions

---@param renderer UnityEngine.Renderer
function UnityEngine.RendererExtensions.UpdateGIMaterials(renderer) end

---@class UnityEngine.ImageEffectTransformsToLDR : System.Attribute
UnityEngine.ImageEffectTransformsToLDR = {}
---@alias CS.UnityEngine.ImageEffectTransformsToLDR UnityEngine.ImageEffectTransformsToLDR
CS.UnityEngine.ImageEffectTransformsToLDR = UnityEngine.ImageEffectTransformsToLDR

---@return UnityEngine.ImageEffectTransformsToLDR
function UnityEngine.ImageEffectTransformsToLDR.New() end

---@class UnityEngine.ImageEffectAllowedInSceneView : System.Attribute
UnityEngine.ImageEffectAllowedInSceneView = {}
---@alias CS.UnityEngine.ImageEffectAllowedInSceneView UnityEngine.ImageEffectAllowedInSceneView
CS.UnityEngine.ImageEffectAllowedInSceneView = UnityEngine.ImageEffectAllowedInSceneView

---@return UnityEngine.ImageEffectAllowedInSceneView
function UnityEngine.ImageEffectAllowedInSceneView.New() end

---@class UnityEngine.ImageEffectOpaque : System.Attribute
UnityEngine.ImageEffectOpaque = {}
---@alias CS.UnityEngine.ImageEffectOpaque UnityEngine.ImageEffectOpaque
CS.UnityEngine.ImageEffectOpaque = UnityEngine.ImageEffectOpaque

---@return UnityEngine.ImageEffectOpaque
function UnityEngine.ImageEffectOpaque.New() end

---@class UnityEngine.ImageEffectAfterScale : System.Attribute
UnityEngine.ImageEffectAfterScale = {}
---@alias CS.UnityEngine.ImageEffectAfterScale UnityEngine.ImageEffectAfterScale
CS.UnityEngine.ImageEffectAfterScale = UnityEngine.ImageEffectAfterScale

---@return UnityEngine.ImageEffectAfterScale
function UnityEngine.ImageEffectAfterScale.New() end

---@class UnityEngine.ImageEffectUsesCommandBuffer : System.Attribute
UnityEngine.ImageEffectUsesCommandBuffer = {}
---@alias CS.UnityEngine.ImageEffectUsesCommandBuffer UnityEngine.ImageEffectUsesCommandBuffer
CS.UnityEngine.ImageEffectUsesCommandBuffer = UnityEngine.ImageEffectUsesCommandBuffer

---@return UnityEngine.ImageEffectUsesCommandBuffer
function UnityEngine.ImageEffectUsesCommandBuffer.New() end

---@class UnityEngine.Mesh : UnityEngine.Object
---@field indexFormat UnityEngine.Rendering.IndexFormat
---@field vertexBufferCount number
---@field vertexBufferTarget UnityEngine.GraphicsBuffer.Target
---@field indexBufferTarget UnityEngine.GraphicsBuffer.Target
---@field blendShapeCount number
---@field bindposeCount number
---@field bindposes UnityEngine.Matrix4x4[]
---@field isReadable boolean
---@field vertexCount number
---@field subMeshCount number
---@field bounds UnityEngine.Bounds
---@field vertices UnityEngine.Vector3[]
---@field normals UnityEngine.Vector3[]
---@field tangents UnityEngine.Vector4[]
---@field uv UnityEngine.Vector2[]
---@field uv2 UnityEngine.Vector2[]
---@field uv3 UnityEngine.Vector2[]
---@field uv4 UnityEngine.Vector2[]
---@field uv5 UnityEngine.Vector2[]
---@field uv6 UnityEngine.Vector2[]
---@field uv7 UnityEngine.Vector2[]
---@field uv8 UnityEngine.Vector2[]
---@field colors UnityEngine.Color[]
---@field colors32 UnityEngine.Color32[]
---@field vertexAttributeCount number
---@field triangles System.Int32[]
---@field boneWeights UnityEngine.BoneWeight[]
---@field skinWeightBufferLayout UnityEngine.SkinWeights
UnityEngine.Mesh = {}
---@alias CS.UnityEngine.Mesh UnityEngine.Mesh
CS.UnityEngine.Mesh = UnityEngine.Mesh

---@return UnityEngine.Mesh
function UnityEngine.Mesh.New() end
---@overload fun(mesh: UnityEngine.Mesh) : UnityEngine.Mesh.MeshDataArray
---@overload fun(meshes: UnityEngine.Mesh[]) : UnityEngine.Mesh.MeshDataArray
---@param meshes System.Collections.Generic.List
---@return UnityEngine.Mesh.MeshDataArray
function UnityEngine.Mesh.AcquireReadOnlyMeshData(meshes) end
---@param meshCount number
---@return UnityEngine.Mesh.MeshDataArray
function UnityEngine.Mesh.AllocateWritableMeshData(meshCount) end
---@overload fun(data: UnityEngine.Mesh.MeshDataArray, mesh: UnityEngine.Mesh, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(data: UnityEngine.Mesh.MeshDataArray, meshes: UnityEngine.Mesh[], flags: UnityEngine.Rendering.MeshUpdateFlags)
---@param data UnityEngine.Mesh.MeshDataArray
---@param meshes System.Collections.Generic.List
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh.ApplyAndDisposeWritableMeshData(data, meshes, flags) end
---@param indexCount number
---@param format UnityEngine.Rendering.IndexFormat
function UnityEngine.Mesh:SetIndexBufferParams(indexCount, format) end
---@param index number
---@return UnityEngine.Rendering.VertexAttributeDescriptor
function UnityEngine.Mesh:GetVertexAttribute(index) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return boolean
function UnityEngine.Mesh:HasVertexAttribute(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function UnityEngine.Mesh:GetVertexAttributeDimension(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return UnityEngine.Rendering.VertexAttributeFormat
function UnityEngine.Mesh:GetVertexAttributeFormat(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function UnityEngine.Mesh:GetVertexAttributeStream(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function UnityEngine.Mesh:GetVertexAttributeOffset(attr) end
---@param stream number
---@return number
function UnityEngine.Mesh:GetVertexBufferStride(stream) end
---@param index number
---@return System.IntPtr
function UnityEngine.Mesh:GetNativeVertexBufferPtr(index) end
---@return System.IntPtr
function UnityEngine.Mesh:GetNativeIndexBufferPtr() end
function UnityEngine.Mesh:ClearBlendShapes() end
---@param shapeIndex number
---@return string
function UnityEngine.Mesh:GetBlendShapeName(shapeIndex) end
---@param blendShapeName string
---@return number
function UnityEngine.Mesh:GetBlendShapeIndex(blendShapeName) end
---@param shapeIndex number
---@return number
function UnityEngine.Mesh:GetBlendShapeFrameCount(shapeIndex) end
---@param shapeIndex number
---@param frameIndex number
---@return number
function UnityEngine.Mesh:GetBlendShapeFrameWeight(shapeIndex, frameIndex) end
---@param shapeIndex number
---@param frameIndex number
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
function UnityEngine.Mesh:GetBlendShapeFrameVertices(shapeIndex, frameIndex, deltaVertices, deltaNormals, deltaTangents) end
---@param shapeName string
---@param frameWeight number
---@param deltaVertices UnityEngine.Vector3[]
---@param deltaNormals UnityEngine.Vector3[]
---@param deltaTangents UnityEngine.Vector3[]
function UnityEngine.Mesh:AddBlendShapeFrame(shapeName, frameWeight, deltaVertices, deltaNormals, deltaTangents) end
---@param bonesPerVertex Unity.Collections.NativeArray
---@param weights Unity.Collections.NativeArray
function UnityEngine.Mesh:SetBoneWeights(bonesPerVertex, weights) end
---@return Unity.Collections.NativeArray
function UnityEngine.Mesh:GetAllBoneWeights() end
---@return Unity.Collections.NativeArray
function UnityEngine.Mesh:GetBonesPerVertex() end
---@overload fun() : Unity.Collections.NativeArray
---@param bindposes System.Collections.Generic.List
function UnityEngine.Mesh:GetBindposes(bindposes) end
---@param index number
---@param desc UnityEngine.Rendering.SubMeshDescriptor
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetSubMesh(index, desc, flags) end
---@param index number
---@return UnityEngine.Rendering.SubMeshDescriptor
function UnityEngine.Mesh:GetSubMesh(index) end
function UnityEngine.Mesh:MarkModified() end
---@param uvSetIndex number
---@return number
function UnityEngine.Mesh:GetUVDistributionMetric(uvSetIndex) end
---@param vertices System.Collections.Generic.List
function UnityEngine.Mesh:GetVertices(vertices) end
---@overload fun(self: UnityEngine.Mesh, inVertices: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, inVertices: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, inVertices: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, inVertices: UnityEngine.Vector3[])
---@overload fun(self: UnityEngine.Mesh, inVertices: UnityEngine.Vector3[], start: number, length: number)
---@param inVertices UnityEngine.Vector3[]
---@param start number
---@param length number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetVertices(inVertices, start, length, flags) end
---@param normals System.Collections.Generic.List
function UnityEngine.Mesh:GetNormals(normals) end
---@overload fun(self: UnityEngine.Mesh, inNormals: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, inNormals: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, inNormals: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, inNormals: UnityEngine.Vector3[])
---@overload fun(self: UnityEngine.Mesh, inNormals: UnityEngine.Vector3[], start: number, length: number)
---@param inNormals UnityEngine.Vector3[]
---@param start number
---@param length number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetNormals(inNormals, start, length, flags) end
---@param tangents System.Collections.Generic.List
function UnityEngine.Mesh:GetTangents(tangents) end
---@overload fun(self: UnityEngine.Mesh, inTangents: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, inTangents: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, inTangents: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, inTangents: UnityEngine.Vector4[])
---@overload fun(self: UnityEngine.Mesh, inTangents: UnityEngine.Vector4[], start: number, length: number)
---@param inTangents UnityEngine.Vector4[]
---@param start number
---@param length number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetTangents(inTangents, start, length, flags) end
---@overload fun(self: UnityEngine.Mesh, colors: System.Collections.Generic.List)
---@param colors System.Collections.Generic.List
function UnityEngine.Mesh:GetColors(colors) end
---@overload fun(self: UnityEngine.Mesh, inColors: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, inColors: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, inColors: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, inColors: UnityEngine.Color[])
---@overload fun(self: UnityEngine.Mesh, inColors: UnityEngine.Color[], start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, inColors: UnityEngine.Color[], start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, inColors: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, inColors: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, inColors: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, inColors: UnityEngine.Color32[])
---@overload fun(self: UnityEngine.Mesh, inColors: UnityEngine.Color32[], start: number, length: number)
---@param inColors UnityEngine.Color32[]
---@param start number
---@param length number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetColors(inColors, start, length, flags) end
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List, start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List, start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector2[])
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector3[])
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector4[])
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector2[], start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector2[], start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector3[], start: number, length: number)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector3[], start: number, length: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: UnityEngine.Vector4[], start: number, length: number)
---@param channel number
---@param uvs UnityEngine.Vector4[]
---@param start number
---@param length number
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetUVs(channel, uvs, start, length, flags) end
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Mesh, channel: number, uvs: System.Collections.Generic.List)
---@param channel number
---@param uvs System.Collections.Generic.List
function UnityEngine.Mesh:GetUVs(channel, uvs) end
---@overload fun() : UnityEngine.Rendering.VertexAttributeDescriptor[]
---@overload fun(self: UnityEngine.Mesh, attributes: UnityEngine.Rendering.VertexAttributeDescriptor[]) : number
---@param attributes System.Collections.Generic.List
---@return number
function UnityEngine.Mesh:GetVertexAttributes(attributes) end
---@overload fun(self: UnityEngine.Mesh, vertexCount: number, attributes: UnityEngine.Rendering.VertexAttributeDescriptor[])
---@param vertexCount number
---@param attributes Unity.Collections.NativeArray
function UnityEngine.Mesh:SetVertexBufferParams(vertexCount, attributes) end
---@param index number
---@return UnityEngine.GraphicsBuffer
function UnityEngine.Mesh:GetVertexBuffer(index) end
---@return UnityEngine.GraphicsBuffer
function UnityEngine.Mesh:GetIndexBuffer() end
---@param layout UnityEngine.SkinWeights
---@return UnityEngine.GraphicsBuffer
function UnityEngine.Mesh:GetBoneWeightBuffer(layout) end
---@overload fun(self: UnityEngine.Mesh, layout: UnityEngine.Rendering.BlendShapeBufferLayout) : UnityEngine.GraphicsBuffer
---@return UnityEngine.GraphicsBuffer
function UnityEngine.Mesh:GetBlendShapeBuffer() end
---@param blendShapeIndex number
---@return UnityEngine.BlendShapeBufferRange
function UnityEngine.Mesh:GetBlendShapeBufferRange(blendShapeIndex) end
---@overload fun(self: UnityEngine.Mesh, submesh: number) : System.Int32[]
---@overload fun(self: UnityEngine.Mesh, submesh: number, applyBaseVertex: boolean) : System.Int32[]
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, submesh: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, submesh: number, applyBaseVertex: boolean)
---@param triangles System.Collections.Generic.List
---@param submesh number
---@param applyBaseVertex boolean
function UnityEngine.Mesh:GetTriangles(triangles, submesh, applyBaseVertex) end
---@overload fun(self: UnityEngine.Mesh, submesh: number) : System.Int32[]
---@overload fun(self: UnityEngine.Mesh, submesh: number, applyBaseVertex: boolean) : System.Int32[]
---@overload fun(self: UnityEngine.Mesh, indices: System.Collections.Generic.List, submesh: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.Collections.Generic.List, submesh: number, applyBaseVertex: boolean)
---@param indices System.Collections.Generic.List
---@param submesh number
---@param applyBaseVertex boolean
function UnityEngine.Mesh:GetIndices(indices, submesh, applyBaseVertex) end
---@param submesh number
---@return number
function UnityEngine.Mesh:GetIndexStart(submesh) end
---@param submesh number
---@return number
function UnityEngine.Mesh:GetIndexCount(submesh) end
---@param submesh number
---@return number
function UnityEngine.Mesh:GetBaseVertex(submesh) end
---@overload fun(self: UnityEngine.Mesh, triangles: System.Int32[], submesh: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Int32[], submesh: number, calculateBounds: boolean)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Int32[], submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Int32[], trianglesStart: number, trianglesLength: number, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.UInt16[], submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.UInt16[], trianglesStart: number, trianglesLength: number, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, submesh: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, submesh: number, calculateBounds: boolean)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, trianglesStart: number, trianglesLength: number, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, triangles: System.Collections.Generic.List, submesh: number, calculateBounds: boolean, baseVertex: number)
---@param triangles System.Collections.Generic.List
---@param trianglesStart number
---@param trianglesLength number
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function UnityEngine.Mesh:SetTriangles(triangles, trianglesStart, trianglesLength, submesh, calculateBounds, baseVertex) end
---@overload fun(self: UnityEngine.Mesh, indices: System.Int32[], topology: UnityEngine.MeshTopology, submesh: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.Int32[], topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean)
---@overload fun(self: UnityEngine.Mesh, indices: System.Int32[], topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.Int32[], indicesStart: number, indicesLength: number, topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.UInt16[], topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.UInt16[], indicesStart: number, indicesLength: number, topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.Collections.Generic.List, topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.Collections.Generic.List, indicesStart: number, indicesLength: number, topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@overload fun(self: UnityEngine.Mesh, indices: System.Collections.Generic.List, topology: UnityEngine.MeshTopology, submesh: number, calculateBounds: boolean, baseVertex: number)
---@param indices System.Collections.Generic.List
---@param indicesStart number
---@param indicesLength number
---@param topology UnityEngine.MeshTopology
---@param submesh number
---@param calculateBounds boolean
---@param baseVertex number
function UnityEngine.Mesh:SetIndices(indices, indicesStart, indicesLength, topology, submesh, calculateBounds, baseVertex) end
---@overload fun(self: UnityEngine.Mesh, desc: UnityEngine.Rendering.SubMeshDescriptor[], start: number, count: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, desc: UnityEngine.Rendering.SubMeshDescriptor[], flags: UnityEngine.Rendering.MeshUpdateFlags)
---@overload fun(self: UnityEngine.Mesh, desc: System.Collections.Generic.List, start: number, count: number, flags: UnityEngine.Rendering.MeshUpdateFlags)
---@param desc System.Collections.Generic.List
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:SetSubMeshes(desc, flags) end
---@param boneWeights System.Collections.Generic.List
function UnityEngine.Mesh:GetBoneWeights(boneWeights) end
---@overload fun(self: UnityEngine.Mesh, keepVertexLayout: boolean)
function UnityEngine.Mesh:Clear() end
---@overload fun()
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:RecalculateBounds(flags) end
---@overload fun()
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:RecalculateNormals(flags) end
---@overload fun()
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh:RecalculateTangents(flags) end
---@param uvSetIndex number
---@param uvAreaThreshold number
function UnityEngine.Mesh:RecalculateUVDistributionMetric(uvSetIndex, uvAreaThreshold) end
---@param uvAreaThreshold number
function UnityEngine.Mesh:RecalculateUVDistributionMetrics(uvAreaThreshold) end
function UnityEngine.Mesh:MarkDynamic() end
---@param markNoLongerReadable boolean
function UnityEngine.Mesh:UploadMeshData(markNoLongerReadable) end
function UnityEngine.Mesh:Optimize() end
function UnityEngine.Mesh:OptimizeIndexBuffers() end
function UnityEngine.Mesh:OptimizeReorderVertexBuffer() end
---@param submesh number
---@return UnityEngine.MeshTopology
function UnityEngine.Mesh:GetTopology(submesh) end
---@overload fun(self: UnityEngine.Mesh, combine: UnityEngine.CombineInstance[], mergeSubMeshes: boolean, useMatrices: boolean, hasLightmapData: boolean)
---@overload fun(self: UnityEngine.Mesh, combine: UnityEngine.CombineInstance[], mergeSubMeshes: boolean, useMatrices: boolean)
---@overload fun(self: UnityEngine.Mesh, combine: UnityEngine.CombineInstance[], mergeSubMeshes: boolean)
---@param combine UnityEngine.CombineInstance[]
function UnityEngine.Mesh:CombineMeshes(combine) end
---@return UnityEngine.ProBuilder.Csg.Vertex[]
function UnityEngine.Mesh:GetVertices() end
---@return UnityEngine.ProBuilder.Vertex[]
function UnityEngine.Mesh:GetVertices() end

---@class UnityEngine.Mesh.SafetyHandleIndex
---@field BonesPerVertexArray UnityEngine.Mesh.SafetyHandleIndex
---@field BonesWeightsArray UnityEngine.Mesh.SafetyHandleIndex
---@field BindposeArray UnityEngine.Mesh.SafetyHandleIndex
UnityEngine.Mesh.SafetyHandleIndex = {}
---@alias CS.UnityEngine.Mesh.SafetyHandleIndex UnityEngine.Mesh.SafetyHandleIndex
CS.UnityEngine.Mesh.SafetyHandleIndex = UnityEngine.Mesh.SafetyHandleIndex


---@class UnityEngine.Mesh.MeshData : System.ValueType
---@field vertexCount number
---@field vertexBufferCount number
---@field indexFormat UnityEngine.Rendering.IndexFormat
---@field subMeshCount number
UnityEngine.Mesh.MeshData = {}
---@alias CS.UnityEngine.Mesh.MeshData UnityEngine.Mesh.MeshData
CS.UnityEngine.Mesh.MeshData = UnityEngine.Mesh.MeshData

---@param stream number
---@return number
function UnityEngine.Mesh.MeshData:GetVertexBufferStride(stream) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return boolean
function UnityEngine.Mesh.MeshData:HasVertexAttribute(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function UnityEngine.Mesh.MeshData:GetVertexAttributeDimension(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return UnityEngine.Rendering.VertexAttributeFormat
function UnityEngine.Mesh.MeshData:GetVertexAttributeFormat(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function UnityEngine.Mesh.MeshData:GetVertexAttributeStream(attr) end
---@param attr UnityEngine.Rendering.VertexAttribute
---@return number
function UnityEngine.Mesh.MeshData:GetVertexAttributeOffset(attr) end
---@param outVertices Unity.Collections.NativeArray
function UnityEngine.Mesh.MeshData:GetVertices(outVertices) end
---@param outNormals Unity.Collections.NativeArray
function UnityEngine.Mesh.MeshData:GetNormals(outNormals) end
---@param outTangents Unity.Collections.NativeArray
function UnityEngine.Mesh.MeshData:GetTangents(outTangents) end
---@overload fun(self: UnityEngine.Mesh.MeshData, outColors: Unity.Collections.NativeArray)
---@param outColors Unity.Collections.NativeArray
function UnityEngine.Mesh.MeshData:GetColors(outColors) end
---@overload fun(self: UnityEngine.Mesh.MeshData, channel: number, outUVs: Unity.Collections.NativeArray)
---@overload fun(self: UnityEngine.Mesh.MeshData, channel: number, outUVs: Unity.Collections.NativeArray)
---@param channel number
---@param outUVs Unity.Collections.NativeArray
function UnityEngine.Mesh.MeshData:GetUVs(channel, outUVs) end
---@overload fun(self: UnityEngine.Mesh.MeshData, vertexCount: number, attributes: UnityEngine.Rendering.VertexAttributeDescriptor[])
---@param vertexCount number
---@param attributes Unity.Collections.NativeArray
function UnityEngine.Mesh.MeshData:SetVertexBufferParams(vertexCount, attributes) end
---@param indexCount number
---@param format UnityEngine.Rendering.IndexFormat
function UnityEngine.Mesh.MeshData:SetIndexBufferParams(indexCount, format) end
---@overload fun(self: UnityEngine.Mesh.MeshData, outIndices: Unity.Collections.NativeArray, submesh: number, applyBaseVertex: boolean)
---@param outIndices Unity.Collections.NativeArray
---@param submesh number
---@param applyBaseVertex boolean
function UnityEngine.Mesh.MeshData:GetIndices(outIndices, submesh, applyBaseVertex) end
---@param index number
---@return UnityEngine.Rendering.SubMeshDescriptor
function UnityEngine.Mesh.MeshData:GetSubMesh(index) end
---@param index number
---@param desc UnityEngine.Rendering.SubMeshDescriptor
---@param flags UnityEngine.Rendering.MeshUpdateFlags
function UnityEngine.Mesh.MeshData:SetSubMesh(index, desc, flags) end

---@class UnityEngine.Mesh.MeshDataArray : System.ValueType
---@field Length number
---@field Item UnityEngine.Mesh.MeshData
UnityEngine.Mesh.MeshDataArray = {}
---@alias CS.UnityEngine.Mesh.MeshDataArray UnityEngine.Mesh.MeshDataArray
CS.UnityEngine.Mesh.MeshDataArray = UnityEngine.Mesh.MeshDataArray

function UnityEngine.Mesh.MeshDataArray:Dispose() end

---@class UnityEngine.Renderer : UnityEngine.Component
---@field bounds UnityEngine.Bounds
---@field localBounds UnityEngine.Bounds
---@field enabled boolean
---@field isVisible boolean
---@field shadowCastingMode UnityEngine.Rendering.ShadowCastingMode
---@field receiveShadows boolean
---@field forceRenderingOff boolean
---@field staticShadowCaster boolean
---@field motionVectorGenerationMode UnityEngine.MotionVectorGenerationMode
---@field lightProbeUsage UnityEngine.Rendering.LightProbeUsage
---@field reflectionProbeUsage UnityEngine.Rendering.ReflectionProbeUsage
---@field renderingLayerMask number
---@field rendererPriority number
---@field rayTracingMode UnityEngine.Experimental.Rendering.RayTracingMode
---@field sortingLayerName string
---@field sortingLayerID number
---@field sortingOrder number
---@field allowOcclusionWhenDynamic boolean
---@field isPartOfStaticBatch boolean
---@field worldToLocalMatrix UnityEngine.Matrix4x4
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field lightProbeProxyVolumeOverride UnityEngine.GameObject
---@field probeAnchor UnityEngine.Transform
---@field lightmapIndex number
---@field realtimeLightmapIndex number
---@field lightmapScaleOffset UnityEngine.Vector4
---@field realtimeLightmapScaleOffset UnityEngine.Vector4
---@field materials UnityEngine.Material[]
---@field material UnityEngine.Material
---@field sharedMaterial UnityEngine.Material
---@field sharedMaterials UnityEngine.Material[]
UnityEngine.Renderer = {}
---@alias CS.UnityEngine.Renderer UnityEngine.Renderer
CS.UnityEngine.Renderer = UnityEngine.Renderer

---@return UnityEngine.Renderer
function UnityEngine.Renderer.New() end
function UnityEngine.Renderer:ResetBounds() end
function UnityEngine.Renderer:ResetLocalBounds() end
---@return boolean
function UnityEngine.Renderer:HasPropertyBlock() end
---@overload fun(self: UnityEngine.Renderer, properties: UnityEngine.MaterialPropertyBlock)
---@param properties UnityEngine.MaterialPropertyBlock
---@param materialIndex number
function UnityEngine.Renderer:SetPropertyBlock(properties, materialIndex) end
---@overload fun(self: UnityEngine.Renderer, properties: UnityEngine.MaterialPropertyBlock)
---@param properties UnityEngine.MaterialPropertyBlock
---@param materialIndex number
function UnityEngine.Renderer:GetPropertyBlock(properties, materialIndex) end
---@param m System.Collections.Generic.List
function UnityEngine.Renderer:GetMaterials(m) end
---@param materials System.Collections.Generic.List
function UnityEngine.Renderer:SetSharedMaterials(materials) end
---@param materials System.Collections.Generic.List
function UnityEngine.Renderer:SetMaterials(materials) end
---@param m System.Collections.Generic.List
function UnityEngine.Renderer:GetSharedMaterials(m) end
---@param result System.Collections.Generic.List
function UnityEngine.Renderer:GetClosestReflectionProbes(result) end
function UnityEngine.Renderer:UpdateGIMaterials() end

---@class UnityEngine.Projector : UnityEngine.Behaviour
---@field nearClipPlane number
---@field farClipPlane number
---@field fieldOfView number
---@field aspectRatio number
---@field orthographic boolean
---@field orthographicSize number
---@field ignoreLayers number
---@field material UnityEngine.Material
UnityEngine.Projector = {}
---@alias CS.UnityEngine.Projector UnityEngine.Projector
CS.UnityEngine.Projector = UnityEngine.Projector

---@return UnityEngine.Projector
function UnityEngine.Projector.New() end

---@class UnityEngine.Shader : UnityEngine.Object
---@field maximumChunksOverride number
---@field globalMaximumLOD number
---@field globalRenderPipeline string
---@field enabledGlobalKeywords UnityEngine.Rendering.GlobalKeyword[]
---@field globalKeywords UnityEngine.Rendering.GlobalKeyword[]
---@field maximumLOD number
---@field isSupported boolean
---@field keywordSpace UnityEngine.Rendering.LocalKeywordSpace
---@field renderQueue number
---@field passCount number
---@field subshaderCount number
UnityEngine.Shader = {}
---@alias CS.UnityEngine.Shader UnityEngine.Shader
CS.UnityEngine.Shader = UnityEngine.Shader

---@param name string
---@return UnityEngine.Shader
function UnityEngine.Shader.Find(name) end
---@overload fun(keyword: string)
---@param ref_keyword UnityEngine.Rendering.GlobalKeyword
---@return ,UnityEngine.Rendering.GlobalKeyword
function UnityEngine.Shader.EnableKeyword(ref_keyword) end
---@overload fun(keyword: string)
---@param ref_keyword UnityEngine.Rendering.GlobalKeyword
---@return ,UnityEngine.Rendering.GlobalKeyword
function UnityEngine.Shader.DisableKeyword(ref_keyword) end
---@overload fun(keyword: string) : boolean
---@param ref_keyword UnityEngine.Rendering.GlobalKeyword
---@return boolean,UnityEngine.Rendering.GlobalKeyword
function UnityEngine.Shader.IsKeywordEnabled(ref_keyword) end
---@param ref_keyword UnityEngine.Rendering.GlobalKeyword
---@param value boolean
---@return ,UnityEngine.Rendering.GlobalKeyword
function UnityEngine.Shader.SetKeyword(ref_keyword, value) end
function UnityEngine.Shader.WarmupAllShaders() end
---@param name string
---@return number
function UnityEngine.Shader.PropertyToID(name) end
---@overload fun(name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.Shader.SetGlobalInt(nameID, value) end
---@overload fun(name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.Shader.SetGlobalFloat(nameID, value) end
---@overload fun(name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.Shader.SetGlobalInteger(nameID, value) end
---@overload fun(name: string, value: UnityEngine.Vector4)
---@param nameID number
---@param value UnityEngine.Vector4
function UnityEngine.Shader.SetGlobalVector(nameID, value) end
---@overload fun(name: string, value: UnityEngine.Color)
---@param nameID number
---@param value UnityEngine.Color
function UnityEngine.Shader.SetGlobalColor(nameID, value) end
---@overload fun(name: string, value: UnityEngine.Matrix4x4)
---@param nameID number
---@param value UnityEngine.Matrix4x4
function UnityEngine.Shader.SetGlobalMatrix(nameID, value) end
---@overload fun(name: string, value: UnityEngine.Texture)
---@overload fun(nameID: number, value: UnityEngine.Texture)
---@overload fun(name: string, value: UnityEngine.RenderTexture, element: UnityEngine.Rendering.RenderTextureSubElement)
---@param nameID number
---@param value UnityEngine.RenderTexture
---@param element UnityEngine.Rendering.RenderTextureSubElement
function UnityEngine.Shader.SetGlobalTexture(nameID, value, element) end
---@overload fun(name: string, value: UnityEngine.ComputeBuffer)
---@overload fun(nameID: number, value: UnityEngine.ComputeBuffer)
---@overload fun(name: string, value: UnityEngine.GraphicsBuffer)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
function UnityEngine.Shader.SetGlobalBuffer(nameID, value) end
---@overload fun(name: string, value: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(nameID: number, value: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(name: string, value: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.Shader.SetGlobalConstantBuffer(nameID, value, offset, size) end
---@overload fun(name: string, values: System.Collections.Generic.List)
---@overload fun(nameID: number, values: System.Collections.Generic.List)
---@overload fun(name: string, values: System.Single[])
---@param nameID number
---@param values System.Single[]
function UnityEngine.Shader.SetGlobalFloatArray(nameID, values) end
---@overload fun(name: string, values: System.Collections.Generic.List)
---@overload fun(nameID: number, values: System.Collections.Generic.List)
---@overload fun(name: string, values: UnityEngine.Vector4[])
---@param nameID number
---@param values UnityEngine.Vector4[]
function UnityEngine.Shader.SetGlobalVectorArray(nameID, values) end
---@overload fun(name: string, values: System.Collections.Generic.List)
---@overload fun(nameID: number, values: System.Collections.Generic.List)
---@overload fun(name: string, values: UnityEngine.Matrix4x4[])
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.Shader.SetGlobalMatrixArray(nameID, values) end
---@overload fun(name: string) : number
---@param nameID number
---@return number
function UnityEngine.Shader.GetGlobalInt(nameID) end
---@overload fun(name: string) : number
---@param nameID number
---@return number
function UnityEngine.Shader.GetGlobalFloat(nameID) end
---@overload fun(name: string) : number
---@param nameID number
---@return number
function UnityEngine.Shader.GetGlobalInteger(nameID) end
---@overload fun(name: string) : UnityEngine.Vector4
---@param nameID number
---@return UnityEngine.Vector4
function UnityEngine.Shader.GetGlobalVector(nameID) end
---@overload fun(name: string) : UnityEngine.Color
---@param nameID number
---@return UnityEngine.Color
function UnityEngine.Shader.GetGlobalColor(nameID) end
---@overload fun(name: string) : UnityEngine.Matrix4x4
---@param nameID number
---@return UnityEngine.Matrix4x4
function UnityEngine.Shader.GetGlobalMatrix(nameID) end
---@overload fun(name: string) : UnityEngine.Texture
---@param nameID number
---@return UnityEngine.Texture
function UnityEngine.Shader.GetGlobalTexture(nameID) end
---@overload fun(name: string) : System.Single[]
---@overload fun(nameID: number) : System.Single[]
---@overload fun(name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Shader.GetGlobalFloatArray(nameID, values) end
---@overload fun(name: string) : UnityEngine.Vector4[]
---@overload fun(nameID: number) : UnityEngine.Vector4[]
---@overload fun(name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Shader.GetGlobalVectorArray(nameID, values) end
---@overload fun(name: string) : UnityEngine.Matrix4x4[]
---@overload fun(nameID: number) : UnityEngine.Matrix4x4[]
---@overload fun(name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Shader.GetGlobalMatrixArray(nameID, values) end
---@param name string
---@return UnityEngine.Shader
function UnityEngine.Shader:GetDependency(name) end
---@param subshaderIndex number
---@return number
function UnityEngine.Shader:GetPassCountInSubshader(subshaderIndex) end
---@overload fun(self: UnityEngine.Shader, passIndex: number, tagName: UnityEngine.Rendering.ShaderTagId) : UnityEngine.Rendering.ShaderTagId
---@param subshaderIndex number
---@param passIndex number
---@param tagName UnityEngine.Rendering.ShaderTagId
---@return UnityEngine.Rendering.ShaderTagId
function UnityEngine.Shader:FindPassTagValue(subshaderIndex, passIndex, tagName) end
---@param subshaderIndex number
---@param tagName UnityEngine.Rendering.ShaderTagId
---@return UnityEngine.Rendering.ShaderTagId
function UnityEngine.Shader:FindSubshaderTagValue(subshaderIndex, tagName) end
---@return number
function UnityEngine.Shader:GetPropertyCount() end
---@param propertyName string
---@return number
function UnityEngine.Shader:FindPropertyIndex(propertyName) end
---@param propertyIndex number
---@return string
function UnityEngine.Shader:GetPropertyName(propertyIndex) end
---@param propertyIndex number
---@return number
function UnityEngine.Shader:GetPropertyNameId(propertyIndex) end
---@param propertyIndex number
---@return UnityEngine.Rendering.ShaderPropertyType
function UnityEngine.Shader:GetPropertyType(propertyIndex) end
---@param propertyIndex number
---@return string
function UnityEngine.Shader:GetPropertyDescription(propertyIndex) end
---@param propertyIndex number
---@return UnityEngine.Rendering.ShaderPropertyFlags
function UnityEngine.Shader:GetPropertyFlags(propertyIndex) end
---@param propertyIndex number
---@return System.String[]
function UnityEngine.Shader:GetPropertyAttributes(propertyIndex) end
---@param propertyIndex number
---@return number
function UnityEngine.Shader:GetPropertyDefaultFloatValue(propertyIndex) end
---@param propertyIndex number
---@return UnityEngine.Vector4
function UnityEngine.Shader:GetPropertyDefaultVectorValue(propertyIndex) end
---@param propertyIndex number
---@return UnityEngine.Vector2
function UnityEngine.Shader:GetPropertyRangeLimits(propertyIndex) end
---@param propertyIndex number
---@return number
function UnityEngine.Shader:GetPropertyDefaultIntValue(propertyIndex) end
---@param propertyIndex number
---@return UnityEngine.Rendering.TextureDimension
function UnityEngine.Shader:GetPropertyTextureDimension(propertyIndex) end
---@param propertyIndex number
---@return string
function UnityEngine.Shader:GetPropertyTextureDefaultName(propertyIndex) end
---@param propertyIndex number
---@param out_stackName string
---@param out_layerIndex number
---@return boolean,string,number
function UnityEngine.Shader:FindTextureStack(propertyIndex, out_stackName, out_layerIndex) end

---@class UnityEngine.LightmapsModeLegacy
---@field Single UnityEngine.LightmapsModeLegacy
---@field Dual UnityEngine.LightmapsModeLegacy
---@field Directional UnityEngine.LightmapsModeLegacy
UnityEngine.LightmapsModeLegacy = {}
---@alias CS.UnityEngine.LightmapsModeLegacy UnityEngine.LightmapsModeLegacy
CS.UnityEngine.LightmapsModeLegacy = UnityEngine.LightmapsModeLegacy


---@class UnityEngine.TrailRenderer : UnityEngine.Renderer
---@field time number
---@field startWidth number
---@field endWidth number
---@field widthMultiplier number
---@field autodestruct boolean
---@field emitting boolean
---@field numCornerVertices number
---@field numCapVertices number
---@field minVertexDistance number
---@field startColor UnityEngine.Color
---@field endColor UnityEngine.Color
---@field positionCount number
---@field textureScale UnityEngine.Vector2
---@field shadowBias number
---@field generateLightingData boolean
---@field textureMode UnityEngine.LineTextureMode
---@field alignment UnityEngine.LineAlignment
---@field maskInteraction UnityEngine.SpriteMaskInteraction
---@field widthCurve UnityEngine.AnimationCurve
---@field colorGradient UnityEngine.Gradient
UnityEngine.TrailRenderer = {}
---@alias CS.UnityEngine.TrailRenderer UnityEngine.TrailRenderer
CS.UnityEngine.TrailRenderer = UnityEngine.TrailRenderer

---@return UnityEngine.TrailRenderer
function UnityEngine.TrailRenderer.New() end
---@param index number
---@param position UnityEngine.Vector3
function UnityEngine.TrailRenderer:SetPosition(index, position) end
---@param index number
---@return UnityEngine.Vector3
function UnityEngine.TrailRenderer:GetPosition(index) end
function UnityEngine.TrailRenderer:Clear() end
---@overload fun(self: UnityEngine.TrailRenderer, mesh: UnityEngine.Mesh, useTransform: boolean)
---@param mesh UnityEngine.Mesh
---@param camera UnityEngine.Camera
---@param useTransform boolean
function UnityEngine.TrailRenderer:BakeMesh(mesh, camera, useTransform) end
---@overload fun(self: UnityEngine.TrailRenderer, out_positions: UnityEngine.Vector3) : number, UnityEngine.Vector3
---@overload fun(self: UnityEngine.TrailRenderer, out_positions: NullType) : number, NullType
---@param out_positions NullType
---@return number,NullType
function UnityEngine.TrailRenderer:GetPositions(out_positions) end
---@overload fun(self: UnityEngine.TrailRenderer, out_positions: UnityEngine.Vector3) : number, UnityEngine.Vector3
---@overload fun(self: UnityEngine.TrailRenderer, out_positions: NullType) : number, NullType
---@param out_positions NullType
---@return number,NullType
function UnityEngine.TrailRenderer:GetVisiblePositions(out_positions) end
---@overload fun(self: UnityEngine.TrailRenderer, positions: UnityEngine.Vector3[])
---@overload fun(self: UnityEngine.TrailRenderer, positions: Unity.Collections.NativeArray)
---@param positions Unity.Collections.NativeSlice
function UnityEngine.TrailRenderer:SetPositions(positions) end
---@param position UnityEngine.Vector3
function UnityEngine.TrailRenderer:AddPosition(position) end
---@overload fun(self: UnityEngine.TrailRenderer, positions: UnityEngine.Vector3[])
---@overload fun(self: UnityEngine.TrailRenderer, out_positions: NullType) : NullType
---@param out_positions NullType
---@return ,NullType
function UnityEngine.TrailRenderer:AddPositions(out_positions) end
---@param toStartWidth number
---@param toEndWidth number
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.TrailRenderer:DOResize(toStartWidth, toEndWidth, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.TrailRenderer:DOTime(endValue, duration) end

---@class UnityEngine.LineRenderer : UnityEngine.Renderer
---@field startWidth number
---@field endWidth number
---@field widthMultiplier number
---@field numCornerVertices number
---@field numCapVertices number
---@field useWorldSpace boolean
---@field loop boolean
---@field startColor UnityEngine.Color
---@field endColor UnityEngine.Color
---@field positionCount number
---@field textureScale UnityEngine.Vector2
---@field shadowBias number
---@field generateLightingData boolean
---@field textureMode UnityEngine.LineTextureMode
---@field alignment UnityEngine.LineAlignment
---@field maskInteraction UnityEngine.SpriteMaskInteraction
---@field widthCurve UnityEngine.AnimationCurve
---@field colorGradient UnityEngine.Gradient
UnityEngine.LineRenderer = {}
---@alias CS.UnityEngine.LineRenderer UnityEngine.LineRenderer
CS.UnityEngine.LineRenderer = UnityEngine.LineRenderer

---@return UnityEngine.LineRenderer
function UnityEngine.LineRenderer.New() end
---@param index number
---@param position UnityEngine.Vector3
function UnityEngine.LineRenderer:SetPosition(index, position) end
---@param index number
---@return UnityEngine.Vector3
function UnityEngine.LineRenderer:GetPosition(index) end
---@param tolerance number
function UnityEngine.LineRenderer:Simplify(tolerance) end
---@overload fun(self: UnityEngine.LineRenderer, mesh: UnityEngine.Mesh, useTransform: boolean)
---@param mesh UnityEngine.Mesh
---@param camera UnityEngine.Camera
---@param useTransform boolean
function UnityEngine.LineRenderer:BakeMesh(mesh, camera, useTransform) end
---@overload fun(self: UnityEngine.LineRenderer, out_positions: UnityEngine.Vector3) : number, UnityEngine.Vector3
---@overload fun(self: UnityEngine.LineRenderer, out_positions: NullType) : number, NullType
---@param out_positions NullType
---@return number,NullType
function UnityEngine.LineRenderer:GetPositions(out_positions) end
---@overload fun(self: UnityEngine.LineRenderer, positions: UnityEngine.Vector3[])
---@overload fun(self: UnityEngine.LineRenderer, positions: Unity.Collections.NativeArray)
---@param positions Unity.Collections.NativeSlice
function UnityEngine.LineRenderer:SetPositions(positions) end
---@param startValue DG.Tweening.Color2
---@param endValue DG.Tweening.Color2
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.LineRenderer:DOColor(startValue, endValue, duration) end

---@class UnityEngine.MaterialPropertyBlock : System.Object
---@field isEmpty boolean
UnityEngine.MaterialPropertyBlock = {}
---@alias CS.UnityEngine.MaterialPropertyBlock UnityEngine.MaterialPropertyBlock
CS.UnityEngine.MaterialPropertyBlock = UnityEngine.MaterialPropertyBlock

---@return UnityEngine.MaterialPropertyBlock
function UnityEngine.MaterialPropertyBlock.New() end
function UnityEngine.MaterialPropertyBlock:Clear() end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.MaterialPropertyBlock:SetInt(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.MaterialPropertyBlock:SetFloat(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.MaterialPropertyBlock:SetInteger(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.Vector4)
---@param nameID number
---@param value UnityEngine.Vector4
function UnityEngine.MaterialPropertyBlock:SetVector(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.Color)
---@param nameID number
---@param value UnityEngine.Color
function UnityEngine.MaterialPropertyBlock:SetColor(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.Matrix4x4)
---@param nameID number
---@param value UnityEngine.Matrix4x4
function UnityEngine.MaterialPropertyBlock:SetMatrix(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number, value: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.GraphicsBuffer)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
function UnityEngine.MaterialPropertyBlock:SetBuffer(nameID, value) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.Texture)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number, value: UnityEngine.Texture)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.RenderTexture, element: UnityEngine.Rendering.RenderTextureSubElement)
---@param nameID number
---@param value UnityEngine.RenderTexture
---@param element UnityEngine.Rendering.RenderTextureSubElement
function UnityEngine.MaterialPropertyBlock:SetTexture(nameID, value, element) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number, value: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, value: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.MaterialPropertyBlock:SetConstantBuffer(nameID, value, offset, size) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Single[])
---@param nameID number
---@param values System.Single[]
function UnityEngine.MaterialPropertyBlock:SetFloatArray(nameID, values) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: UnityEngine.Vector4[])
---@param nameID number
---@param values UnityEngine.Vector4[]
function UnityEngine.MaterialPropertyBlock:SetVectorArray(nameID, values) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: UnityEngine.Matrix4x4[])
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.MaterialPropertyBlock:SetMatrixArray(nameID, values) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasProperty(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasInt(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasFloat(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasInteger(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasTexture(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasMatrix(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasVector(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasColor(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasBuffer(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.MaterialPropertyBlock:HasConstantBuffer(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : number
---@param nameID number
---@return number
function UnityEngine.MaterialPropertyBlock:GetFloat(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : number
---@param nameID number
---@return number
function UnityEngine.MaterialPropertyBlock:GetInt(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : number
---@param nameID number
---@return number
function UnityEngine.MaterialPropertyBlock:GetInteger(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : UnityEngine.Vector4
---@param nameID number
---@return UnityEngine.Vector4
function UnityEngine.MaterialPropertyBlock:GetVector(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : UnityEngine.Color
---@param nameID number
---@return UnityEngine.Color
function UnityEngine.MaterialPropertyBlock:GetColor(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : UnityEngine.Matrix4x4
---@param nameID number
---@return UnityEngine.Matrix4x4
function UnityEngine.MaterialPropertyBlock:GetMatrix(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : UnityEngine.Texture
---@param nameID number
---@return UnityEngine.Texture
function UnityEngine.MaterialPropertyBlock:GetTexture(nameID) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : System.Single[]
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number) : System.Single[]
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.MaterialPropertyBlock:GetFloatArray(nameID, values) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : UnityEngine.Vector4[]
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number) : UnityEngine.Vector4[]
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.MaterialPropertyBlock:GetVectorArray(nameID, values) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string) : UnityEngine.Matrix4x4[]
---@overload fun(self: UnityEngine.MaterialPropertyBlock, nameID: number) : UnityEngine.Matrix4x4[]
---@overload fun(self: UnityEngine.MaterialPropertyBlock, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.MaterialPropertyBlock:GetMatrixArray(nameID, values) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, lightProbes: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, lightProbes: UnityEngine.Rendering.SphericalHarmonicsL2[])
---@overload fun(self: UnityEngine.MaterialPropertyBlock, lightProbes: System.Collections.Generic.List, sourceStart: number, destStart: number, count: number)
---@param lightProbes UnityEngine.Rendering.SphericalHarmonicsL2[]
---@param sourceStart number
---@param destStart number
---@param count number
function UnityEngine.MaterialPropertyBlock:CopySHCoefficientArraysFrom(lightProbes, sourceStart, destStart, count) end
---@overload fun(self: UnityEngine.MaterialPropertyBlock, occlusionProbes: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.MaterialPropertyBlock, occlusionProbes: UnityEngine.Vector4[])
---@overload fun(self: UnityEngine.MaterialPropertyBlock, occlusionProbes: System.Collections.Generic.List, sourceStart: number, destStart: number, count: number)
---@param occlusionProbes UnityEngine.Vector4[]
---@param sourceStart number
---@param destStart number
---@param count number
function UnityEngine.MaterialPropertyBlock:CopyProbeOcclusionArrayFrom(occlusionProbes, sourceStart, destStart, count) end

---@class UnityEngine.RenderSettings : UnityEngine.Object
---@field fog boolean
---@field fogStartDistance number
---@field fogEndDistance number
---@field fogMode UnityEngine.FogMode
---@field fogColor UnityEngine.Color
---@field fogDensity number
---@field ambientMode UnityEngine.Rendering.AmbientMode
---@field ambientSkyColor UnityEngine.Color
---@field ambientEquatorColor UnityEngine.Color
---@field ambientGroundColor UnityEngine.Color
---@field ambientIntensity number
---@field ambientLight UnityEngine.Color
---@field subtractiveShadowColor UnityEngine.Color
---@field skybox UnityEngine.Material
---@field sun UnityEngine.Light
---@field ambientProbe UnityEngine.Rendering.SphericalHarmonicsL2
---@field customReflectionTexture UnityEngine.Texture
---@field reflectionIntensity number
---@field reflectionBounces number
---@field defaultReflectionMode UnityEngine.Rendering.DefaultReflectionMode
---@field defaultReflectionResolution number
---@field haloStrength number
---@field flareStrength number
---@field flareFadeSpeed number
UnityEngine.RenderSettings = {}
---@alias CS.UnityEngine.RenderSettings UnityEngine.RenderSettings
CS.UnityEngine.RenderSettings = UnityEngine.RenderSettings


---@class UnityEngine.Material : UnityEngine.Object
---@field shader UnityEngine.Shader
---@field color UnityEngine.Color
---@field mainTexture UnityEngine.Texture
---@field mainTextureOffset UnityEngine.Vector2
---@field mainTextureScale UnityEngine.Vector2
---@field renderQueue number
---@field enabledKeywords UnityEngine.Rendering.LocalKeyword[]
---@field globalIlluminationFlags UnityEngine.MaterialGlobalIlluminationFlags
---@field doubleSidedGI boolean
---@field enableInstancing boolean
---@field passCount number
---@field shaderKeywords System.String[]
---@field parent UnityEngine.Material
---@field isVariant boolean
UnityEngine.Material = {}
---@alias CS.UnityEngine.Material UnityEngine.Material
CS.UnityEngine.Material = UnityEngine.Material

---@overload fun(shader: UnityEngine.Shader) : UnityEngine.Material
---@overload fun(source: UnityEngine.Material) : UnityEngine.Material
---@param contents string
---@return UnityEngine.Material
function UnityEngine.Material.New(contents) end
---@overload fun(self: UnityEngine.Material, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.Material:HasProperty(name) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasFloat(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasInt(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasInteger(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasTexture(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasMatrix(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasVector(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasColor(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasBuffer(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : boolean
---@param nameID number
---@return boolean
function UnityEngine.Material:HasConstantBuffer(nameID) end
---@overload fun(self: UnityEngine.Material, keyword: string)
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Material:EnableKeyword(ref_keyword) end
---@overload fun(self: UnityEngine.Material, keyword: string)
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Material:DisableKeyword(ref_keyword) end
---@overload fun(self: UnityEngine.Material, keyword: string) : boolean
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return boolean,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Material:IsKeywordEnabled(ref_keyword) end
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@param value boolean
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.Material:SetKeyword(ref_keyword, value) end
---@param passName string
---@param enabled boolean
function UnityEngine.Material:SetShaderPassEnabled(passName, enabled) end
---@param passName string
---@return boolean
function UnityEngine.Material:GetShaderPassEnabled(passName) end
---@param pass number
---@return string
function UnityEngine.Material:GetPassName(pass) end
---@param passName string
---@return number
function UnityEngine.Material:FindPass(passName) end
---@param tag string
---@param val string
function UnityEngine.Material:SetOverrideTag(tag, val) end
---@overload fun(self: UnityEngine.Material, tag: string, searchFallbacks: boolean, defaultValue: string) : string
---@param tag string
---@param searchFallbacks boolean
---@return string
function UnityEngine.Material:GetTag(tag, searchFallbacks) end
---@param start UnityEngine.Material
---@param _end UnityEngine.Material
---@param t number
function UnityEngine.Material:Lerp(start, _end, t) end
---@param pass number
---@return boolean
function UnityEngine.Material:SetPass(pass) end
---@param mat UnityEngine.Material
function UnityEngine.Material:CopyPropertiesFromMaterial(mat) end
---@param mat UnityEngine.Material
function UnityEngine.Material:CopyMatchingPropertiesFromMaterial(mat) end
---@return number
function UnityEngine.Material:ComputeCRC() end
---@overload fun() : System.String[]
---@param outNames System.Collections.Generic.List
function UnityEngine.Material:GetTexturePropertyNames(outNames) end
---@overload fun() : System.Int32[]
---@param outNames System.Collections.Generic.List
function UnityEngine.Material:GetTexturePropertyNameIDs(outNames) end
---@param ancestor UnityEngine.Material
---@return boolean
function UnityEngine.Material:IsChildOf(ancestor) end
function UnityEngine.Material:RevertAllPropertyOverrides() end
---@overload fun(self: UnityEngine.Material, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.Material:IsPropertyOverriden(name) end
---@overload fun(self: UnityEngine.Material, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.Material:IsPropertyLocked(name) end
---@overload fun(self: UnityEngine.Material, nameID: number) : boolean
---@param name string
---@return boolean
function UnityEngine.Material:IsPropertyLockedByAncestor(name) end
---@overload fun(self: UnityEngine.Material, nameID: number, value: boolean)
---@param name string
---@param value boolean
function UnityEngine.Material:SetPropertyLock(name, value) end
---@overload fun(self: UnityEngine.Material, destination: UnityEngine.Material, nameID: number, recordUndo: boolean)
---@param destination UnityEngine.Material
---@param name string
---@param recordUndo boolean
function UnityEngine.Material:ApplyPropertyOverride(destination, name, recordUndo) end
---@overload fun(self: UnityEngine.Material, nameID: number)
---@param name string
function UnityEngine.Material:RevertPropertyOverride(name) end
---@overload fun(self: UnityEngine.Material, name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.Material:SetInt(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.Material:SetFloat(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: number)
---@param nameID number
---@param value number
function UnityEngine.Material:SetInteger(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.Color)
---@param nameID number
---@param value UnityEngine.Color
function UnityEngine.Material:SetColor(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.Vector4)
---@param nameID number
---@param value UnityEngine.Vector4
function UnityEngine.Material:SetVector(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.Matrix4x4)
---@param nameID number
---@param value UnityEngine.Matrix4x4
function UnityEngine.Material:SetMatrix(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.Texture)
---@overload fun(self: UnityEngine.Material, nameID: number, value: UnityEngine.Texture)
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.RenderTexture, element: UnityEngine.Rendering.RenderTextureSubElement)
---@param nameID number
---@param value UnityEngine.RenderTexture
---@param element UnityEngine.Rendering.RenderTextureSubElement
function UnityEngine.Material:SetTexture(nameID, value, element) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Material, nameID: number, value: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.GraphicsBuffer)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
function UnityEngine.Material:SetBuffer(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Material, nameID: number, value: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param nameID number
---@param value UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.Material:SetConstantBuffer(nameID, value, offset, size) end
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, name: string, values: System.Single[])
---@param nameID number
---@param values System.Single[]
function UnityEngine.Material:SetFloatArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, name: string, values: UnityEngine.Color[])
---@param nameID number
---@param values UnityEngine.Color[]
function UnityEngine.Material:SetColorArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, name: string, values: UnityEngine.Vector4[])
---@param nameID number
---@param values UnityEngine.Vector4[]
function UnityEngine.Material:SetVectorArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, nameID: number, values: System.Collections.Generic.List)
---@overload fun(self: UnityEngine.Material, name: string, values: UnityEngine.Matrix4x4[])
---@param nameID number
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.Material:SetMatrixArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string) : number
---@param nameID number
---@return number
function UnityEngine.Material:GetInt(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : number
---@param nameID number
---@return number
function UnityEngine.Material:GetFloat(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : number
---@param nameID number
---@return number
function UnityEngine.Material:GetInteger(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Color
---@param nameID number
---@return UnityEngine.Color
function UnityEngine.Material:GetColor(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Vector4
---@param nameID number
---@return UnityEngine.Vector4
function UnityEngine.Material:GetVector(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Matrix4x4
---@param nameID number
---@return UnityEngine.Matrix4x4
function UnityEngine.Material:GetMatrix(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Texture
---@param nameID number
---@return UnityEngine.Texture
function UnityEngine.Material:GetTexture(nameID) end
---@param name string
---@return UnityEngine.GraphicsBufferHandle
function UnityEngine.Material:GetBuffer(name) end
---@param name string
---@return UnityEngine.GraphicsBufferHandle
function UnityEngine.Material:GetConstantBuffer(name) end
---@overload fun(self: UnityEngine.Material, name: string) : System.Single[]
---@overload fun(self: UnityEngine.Material, nameID: number) : System.Single[]
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Material:GetFloatArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Color[]
---@overload fun(self: UnityEngine.Material, nameID: number) : UnityEngine.Color[]
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Material:GetColorArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Vector4[]
---@overload fun(self: UnityEngine.Material, nameID: number) : UnityEngine.Vector4[]
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Material:GetVectorArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Matrix4x4[]
---@overload fun(self: UnityEngine.Material, nameID: number) : UnityEngine.Matrix4x4[]
---@overload fun(self: UnityEngine.Material, name: string, values: System.Collections.Generic.List)
---@param nameID number
---@param values System.Collections.Generic.List
function UnityEngine.Material:GetMatrixArray(nameID, values) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.Vector2)
---@param nameID number
---@param value UnityEngine.Vector2
function UnityEngine.Material:SetTextureOffset(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string, value: UnityEngine.Vector2)
---@param nameID number
---@param value UnityEngine.Vector2
function UnityEngine.Material:SetTextureScale(nameID, value) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Vector2
---@param nameID number
---@return UnityEngine.Vector2
function UnityEngine.Material:GetTextureOffset(nameID) end
---@overload fun(self: UnityEngine.Material, name: string) : UnityEngine.Vector2
---@param nameID number
---@return UnityEngine.Vector2
function UnityEngine.Material:GetTextureScale(nameID) end
---@param type UnityEngine.MaterialPropertyType
---@return System.String[]
function UnityEngine.Material:GetPropertyNames(type) end
---@param gradient UnityEngine.Gradient
---@param duration number
---@return DG.Tweening.Sequence
function UnityEngine.Material:DOGradientColor(gradient, duration) end
---@param gradient UnityEngine.Gradient
---@param property string
---@param duration number
---@return DG.Tweening.Sequence
function UnityEngine.Material:DOGradientColor(gradient, property, duration) end
---@param endValue UnityEngine.Vector2
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOOffset(endValue, propertyID, duration) end
---@param endValue UnityEngine.Vector2
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOTiling(endValue, propertyID, duration) end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOColor(endValue, duration) end
---@param endValue UnityEngine.Color
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOColor(endValue, property, duration) end
---@param endValue UnityEngine.Color
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOColor(endValue, propertyID, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOFade(endValue, duration) end
---@param endValue number
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOFade(endValue, property, duration) end
---@param endValue number
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOFade(endValue, propertyID, duration) end
---@param endValue number
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOFloat(endValue, property, duration) end
---@param endValue number
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOFloat(endValue, propertyID, duration) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOOffset(endValue, duration) end
---@param endValue UnityEngine.Vector2
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOOffset(endValue, property, duration) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOTiling(endValue, duration) end
---@param endValue UnityEngine.Vector2
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOTiling(endValue, property, duration) end
---@param endValue UnityEngine.Vector4
---@param property string
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOVector(endValue, property, duration) end
---@param endValue UnityEngine.Vector4
---@param propertyID number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Material:DOVector(endValue, propertyID, duration) end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.Material:DOBlendableColor(endValue, duration) end
---@param endValue UnityEngine.Color
---@param property string
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.Material:DOBlendableColor(endValue, property, duration) end
---@param endValue UnityEngine.Color
---@param propertyID number
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.Material:DOBlendableColor(endValue, propertyID, duration) end
---@param withCallbacks boolean
---@return number
function UnityEngine.Material:DOComplete(withCallbacks) end
---@param complete boolean
---@return number
function UnityEngine.Material:DOKill(complete) end
---@return number
function UnityEngine.Material:DOFlip() end
---@param to number
---@param andPlay boolean
---@return number
function UnityEngine.Material:DOGoto(to, andPlay) end
---@return number
function UnityEngine.Material:DOPause() end
---@return number
function UnityEngine.Material:DOPlay() end
---@return number
function UnityEngine.Material:DOPlayBackwards() end
---@return number
function UnityEngine.Material:DOPlayForward() end
---@param includeDelay boolean
---@return number
function UnityEngine.Material:DORestart(includeDelay) end
---@param includeDelay boolean
---@return number
function UnityEngine.Material:DORewind(includeDelay) end
---@return number
function UnityEngine.Material:DOSmoothRewind() end
---@return number
function UnityEngine.Material:DOTogglePause() end

---@class UnityEngine.GraphicsBufferHandle : System.ValueType
---@field value number
UnityEngine.GraphicsBufferHandle = {}
---@alias CS.UnityEngine.GraphicsBufferHandle UnityEngine.GraphicsBufferHandle
CS.UnityEngine.GraphicsBufferHandle = UnityEngine.GraphicsBufferHandle

---@return number
function UnityEngine.GraphicsBufferHandle:GetHashCode() end
---@overload fun(self: UnityEngine.GraphicsBufferHandle, obj: System.Object) : boolean
---@param other UnityEngine.GraphicsBufferHandle
---@return boolean
function UnityEngine.GraphicsBufferHandle:Equals(other) end
---@param other UnityEngine.GraphicsBufferHandle
---@return number
function UnityEngine.GraphicsBufferHandle:CompareTo(other) end

---@class UnityEngine.GraphicsBuffer : System.Object
---@field count number
---@field stride number
---@field target UnityEngine.GraphicsBuffer.Target
---@field usageFlags UnityEngine.GraphicsBuffer.UsageFlags
---@field bufferHandle UnityEngine.GraphicsBufferHandle
---@field name string
UnityEngine.GraphicsBuffer = {}
---@alias CS.UnityEngine.GraphicsBuffer UnityEngine.GraphicsBuffer
CS.UnityEngine.GraphicsBuffer = UnityEngine.GraphicsBuffer

---@overload fun(target: UnityEngine.GraphicsBuffer.Target, count: number, stride: number) : UnityEngine.GraphicsBuffer
---@param target UnityEngine.GraphicsBuffer.Target
---@param usageFlags UnityEngine.GraphicsBuffer.UsageFlags
---@param count number
---@param stride number
---@return UnityEngine.GraphicsBuffer
function UnityEngine.GraphicsBuffer.New(target, usageFlags, count, stride) end
---@overload fun(src: UnityEngine.ComputeBuffer, dst: UnityEngine.ComputeBuffer, dstOffsetBytes: number)
---@overload fun(src: UnityEngine.GraphicsBuffer, dst: UnityEngine.ComputeBuffer, dstOffsetBytes: number)
---@overload fun(src: UnityEngine.ComputeBuffer, dst: UnityEngine.GraphicsBuffer, dstOffsetBytes: number)
---@param src UnityEngine.GraphicsBuffer
---@param dst UnityEngine.GraphicsBuffer
---@param dstOffsetBytes number
function UnityEngine.GraphicsBuffer.CopyCount(src, dst, dstOffsetBytes) end
function UnityEngine.GraphicsBuffer:Dispose() end
function UnityEngine.GraphicsBuffer:Release() end
---@return boolean
function UnityEngine.GraphicsBuffer:IsValid() end
---@overload fun(self: UnityEngine.GraphicsBuffer, data: System.Array)
---@param data System.Array
---@param managedBufferStartIndex number
---@param graphicsBufferStartIndex number
---@param count number
function UnityEngine.GraphicsBuffer:SetData(data, managedBufferStartIndex, graphicsBufferStartIndex, count) end
---@overload fun(self: UnityEngine.GraphicsBuffer, data: System.Array)
---@param data System.Array
---@param managedBufferStartIndex number
---@param computeBufferStartIndex number
---@param count number
function UnityEngine.GraphicsBuffer:GetData(data, managedBufferStartIndex, computeBufferStartIndex, count) end
---@return System.IntPtr
function UnityEngine.GraphicsBuffer:GetNativeBufferPtr() end
---@param counterValue number
function UnityEngine.GraphicsBuffer:SetCounterValue(counterValue) end

---@class UnityEngine.GraphicsBuffer.Target
---@field Vertex UnityEngine.GraphicsBuffer.Target
---@field Index UnityEngine.GraphicsBuffer.Target
---@field CopySource UnityEngine.GraphicsBuffer.Target
---@field CopyDestination UnityEngine.GraphicsBuffer.Target
---@field Structured UnityEngine.GraphicsBuffer.Target
---@field Raw UnityEngine.GraphicsBuffer.Target
---@field Append UnityEngine.GraphicsBuffer.Target
---@field Counter UnityEngine.GraphicsBuffer.Target
---@field IndirectArguments UnityEngine.GraphicsBuffer.Target
---@field Constant UnityEngine.GraphicsBuffer.Target
UnityEngine.GraphicsBuffer.Target = {}
---@alias CS.UnityEngine.GraphicsBuffer.Target UnityEngine.GraphicsBuffer.Target
CS.UnityEngine.GraphicsBuffer.Target = UnityEngine.GraphicsBuffer.Target


---@class UnityEngine.GraphicsBuffer.UsageFlags
---@field None UnityEngine.GraphicsBuffer.UsageFlags
---@field LockBufferForWrite UnityEngine.GraphicsBuffer.UsageFlags
UnityEngine.GraphicsBuffer.UsageFlags = {}
---@alias CS.UnityEngine.GraphicsBuffer.UsageFlags UnityEngine.GraphicsBuffer.UsageFlags
CS.UnityEngine.GraphicsBuffer.UsageFlags = UnityEngine.GraphicsBuffer.UsageFlags


---@class UnityEngine.GraphicsBuffer.IndirectDrawArgs : System.ValueType
---@field size number
---@field vertexCountPerInstance number
---@field instanceCount number
---@field startVertex number
---@field startInstance number
UnityEngine.GraphicsBuffer.IndirectDrawArgs = {}
---@alias CS.UnityEngine.GraphicsBuffer.IndirectDrawArgs UnityEngine.GraphicsBuffer.IndirectDrawArgs
CS.UnityEngine.GraphicsBuffer.IndirectDrawArgs = UnityEngine.GraphicsBuffer.IndirectDrawArgs


---@class UnityEngine.GraphicsBuffer.IndirectDrawIndexedArgs : System.ValueType
---@field size number
---@field indexCountPerInstance number
---@field instanceCount number
---@field startIndex number
---@field baseVertexIndex number
---@field startInstance number
UnityEngine.GraphicsBuffer.IndirectDrawIndexedArgs = {}
---@alias CS.UnityEngine.GraphicsBuffer.IndirectDrawIndexedArgs UnityEngine.GraphicsBuffer.IndirectDrawIndexedArgs
CS.UnityEngine.GraphicsBuffer.IndirectDrawIndexedArgs = UnityEngine.GraphicsBuffer.IndirectDrawIndexedArgs


---@class UnityEngine.OcclusionPortal : UnityEngine.Component
---@field open boolean
UnityEngine.OcclusionPortal = {}
---@alias CS.UnityEngine.OcclusionPortal UnityEngine.OcclusionPortal
CS.UnityEngine.OcclusionPortal = UnityEngine.OcclusionPortal

---@return UnityEngine.OcclusionPortal
function UnityEngine.OcclusionPortal.New() end

---@class UnityEngine.OcclusionArea : UnityEngine.Component
---@field center UnityEngine.Vector3
---@field size UnityEngine.Vector3
UnityEngine.OcclusionArea = {}
---@alias CS.UnityEngine.OcclusionArea UnityEngine.OcclusionArea
CS.UnityEngine.OcclusionArea = UnityEngine.OcclusionArea

---@return UnityEngine.OcclusionArea
function UnityEngine.OcclusionArea.New() end

---@class UnityEngine.Flare : UnityEngine.Object
UnityEngine.Flare = {}
---@alias CS.UnityEngine.Flare UnityEngine.Flare
CS.UnityEngine.Flare = UnityEngine.Flare

---@return UnityEngine.Flare
function UnityEngine.Flare.New() end

---@class UnityEngine.LensFlare : UnityEngine.Behaviour
---@field brightness number
---@field fadeSpeed number
---@field color UnityEngine.Color
---@field flare UnityEngine.Flare
UnityEngine.LensFlare = {}
---@alias CS.UnityEngine.LensFlare UnityEngine.LensFlare
CS.UnityEngine.LensFlare = UnityEngine.LensFlare

---@return UnityEngine.LensFlare
function UnityEngine.LensFlare.New() end

---@class UnityEngine.LightBakingOutput : System.ValueType
---@field probeOcclusionLightIndex number
---@field occlusionMaskChannel number
---@field lightmapBakeType UnityEngine.LightmapBakeType
---@field mixedLightingMode UnityEngine.MixedLightingMode
---@field isBaked boolean
UnityEngine.LightBakingOutput = {}
---@alias CS.UnityEngine.LightBakingOutput UnityEngine.LightBakingOutput
CS.UnityEngine.LightBakingOutput = UnityEngine.LightBakingOutput


---@class UnityEngine.LightShadowCasterMode
---@field Default UnityEngine.LightShadowCasterMode
---@field NonLightmappedOnly UnityEngine.LightShadowCasterMode
---@field Everything UnityEngine.LightShadowCasterMode
UnityEngine.LightShadowCasterMode = {}
---@alias CS.UnityEngine.LightShadowCasterMode UnityEngine.LightShadowCasterMode
CS.UnityEngine.LightShadowCasterMode = UnityEngine.LightShadowCasterMode


---@class UnityEngine.Light : UnityEngine.Behaviour
---@field type UnityEngine.LightType
---@field shape UnityEngine.LightShape
---@field spotAngle number
---@field innerSpotAngle number
---@field color UnityEngine.Color
---@field colorTemperature number
---@field useColorTemperature boolean
---@field intensity number
---@field bounceIntensity number
---@field useBoundingSphereOverride boolean
---@field boundingSphereOverride UnityEngine.Vector4
---@field useViewFrustumForShadowCasterCull boolean
---@field shadowCustomResolution number
---@field shadowBias number
---@field shadowNormalBias number
---@field shadowNearPlane number
---@field useShadowMatrixOverride boolean
---@field shadowMatrixOverride UnityEngine.Matrix4x4
---@field range number
---@field flare UnityEngine.Flare
---@field bakingOutput UnityEngine.LightBakingOutput
---@field cullingMask number
---@field renderingLayerMask number
---@field lightShadowCasterMode UnityEngine.LightShadowCasterMode
---@field shadowRadius number
---@field shadowAngle number
---@field shadows UnityEngine.LightShadows
---@field shadowStrength number
---@field shadowResolution UnityEngine.Rendering.LightShadowResolution
---@field layerShadowCullDistances System.Single[]
---@field cookieSize number
---@field cookie UnityEngine.Texture
---@field renderMode UnityEngine.LightRenderMode
---@field areaSize UnityEngine.Vector2
---@field lightmapBakeType UnityEngine.LightmapBakeType
---@field commandBufferCount number
UnityEngine.Light = {}
---@alias CS.UnityEngine.Light UnityEngine.Light
CS.UnityEngine.Light = UnityEngine.Light

---@return UnityEngine.Light
function UnityEngine.Light.New() end
function UnityEngine.Light:Reset() end
function UnityEngine.Light:SetLightDirty() end
---@overload fun(self: UnityEngine.Light, evt: UnityEngine.Rendering.LightEvent, buffer: UnityEngine.Rendering.CommandBuffer)
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param shadowPassMask UnityEngine.Rendering.ShadowMapPass
function UnityEngine.Light:AddCommandBuffer(evt, buffer, shadowPassMask) end
---@overload fun(self: UnityEngine.Light, evt: UnityEngine.Rendering.LightEvent, buffer: UnityEngine.Rendering.CommandBuffer, queueType: UnityEngine.Rendering.ComputeQueueType)
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
---@param shadowPassMask UnityEngine.Rendering.ShadowMapPass
---@param queueType UnityEngine.Rendering.ComputeQueueType
function UnityEngine.Light:AddCommandBufferAsync(evt, buffer, shadowPassMask, queueType) end
---@param evt UnityEngine.Rendering.LightEvent
---@param buffer UnityEngine.Rendering.CommandBuffer
function UnityEngine.Light:RemoveCommandBuffer(evt, buffer) end
---@param evt UnityEngine.Rendering.LightEvent
function UnityEngine.Light:RemoveCommandBuffers(evt) end
function UnityEngine.Light:RemoveAllCommandBuffers() end
---@param evt UnityEngine.Rendering.LightEvent
---@return UnityEngine.Rendering.CommandBuffer[]
function UnityEngine.Light:GetCommandBuffers(evt) end
---@return UnityEngine.Rendering.Universal.UniversalAdditionalLightData
function UnityEngine.Light:GetUniversalAdditionalLightData() end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Light:DOColor(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Light:DOIntensity(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Light:DOShadowStrength(endValue, duration) end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.Light:DOBlendableColor(endValue, duration) end

---@class UnityEngine.Skybox : UnityEngine.Behaviour
---@field material UnityEngine.Material
UnityEngine.Skybox = {}
---@alias CS.UnityEngine.Skybox UnityEngine.Skybox
CS.UnityEngine.Skybox = UnityEngine.Skybox

---@return UnityEngine.Skybox
function UnityEngine.Skybox.New() end

---@class UnityEngine.MeshFilter : UnityEngine.Component
---@field sharedMesh UnityEngine.Mesh
---@field mesh UnityEngine.Mesh
UnityEngine.MeshFilter = {}
---@alias CS.UnityEngine.MeshFilter UnityEngine.MeshFilter
CS.UnityEngine.MeshFilter = UnityEngine.MeshFilter

---@return UnityEngine.MeshFilter
function UnityEngine.MeshFilter.New() end

---@class UnityEngine.Halo : UnityEngine.Behaviour
UnityEngine.Halo = {}
---@alias CS.UnityEngine.Halo UnityEngine.Halo
CS.UnityEngine.Halo = UnityEngine.Halo

---@return UnityEngine.Halo
function UnityEngine.Halo.New() end

---@class UnityEngine.RenderingPath
---@field UsePlayerSettings UnityEngine.RenderingPath
---@field VertexLit UnityEngine.RenderingPath
---@field Forward UnityEngine.RenderingPath
---@field DeferredShading UnityEngine.RenderingPath
UnityEngine.RenderingPath = {}
---@alias CS.UnityEngine.RenderingPath UnityEngine.RenderingPath
CS.UnityEngine.RenderingPath = UnityEngine.RenderingPath


---@class UnityEngine.TransparencySortMode
---@field Default UnityEngine.TransparencySortMode
---@field Perspective UnityEngine.TransparencySortMode
---@field Orthographic UnityEngine.TransparencySortMode
---@field CustomAxis UnityEngine.TransparencySortMode
UnityEngine.TransparencySortMode = {}
---@alias CS.UnityEngine.TransparencySortMode UnityEngine.TransparencySortMode
CS.UnityEngine.TransparencySortMode = UnityEngine.TransparencySortMode


---@class UnityEngine.StereoTargetEyeMask
---@field None UnityEngine.StereoTargetEyeMask
---@field Left UnityEngine.StereoTargetEyeMask
---@field Right UnityEngine.StereoTargetEyeMask
---@field Both UnityEngine.StereoTargetEyeMask
UnityEngine.StereoTargetEyeMask = {}
---@alias CS.UnityEngine.StereoTargetEyeMask UnityEngine.StereoTargetEyeMask
CS.UnityEngine.StereoTargetEyeMask = UnityEngine.StereoTargetEyeMask


---@class UnityEngine.CameraType
---@field Game UnityEngine.CameraType
---@field SceneView UnityEngine.CameraType
---@field Preview UnityEngine.CameraType
---@field VR UnityEngine.CameraType
---@field Reflection UnityEngine.CameraType
UnityEngine.CameraType = {}
---@alias CS.UnityEngine.CameraType UnityEngine.CameraType
CS.UnityEngine.CameraType = UnityEngine.CameraType


---@class UnityEngine.ComputeBufferType
---@field Default UnityEngine.ComputeBufferType
---@field Raw UnityEngine.ComputeBufferType
---@field Append UnityEngine.ComputeBufferType
---@field Counter UnityEngine.ComputeBufferType
---@field Constant UnityEngine.ComputeBufferType
---@field Structured UnityEngine.ComputeBufferType
---@field IndirectArguments UnityEngine.ComputeBufferType
UnityEngine.ComputeBufferType = {}
---@alias CS.UnityEngine.ComputeBufferType UnityEngine.ComputeBufferType
CS.UnityEngine.ComputeBufferType = UnityEngine.ComputeBufferType


---@class UnityEngine.LightType
---@field Spot UnityEngine.LightType
---@field Directional UnityEngine.LightType
---@field Point UnityEngine.LightType
---@field Area UnityEngine.LightType
---@field Rectangle UnityEngine.LightType
---@field Disc UnityEngine.LightType
UnityEngine.LightType = {}
---@alias CS.UnityEngine.LightType UnityEngine.LightType
CS.UnityEngine.LightType = UnityEngine.LightType


---@class UnityEngine.LightShape
---@field Cone UnityEngine.LightShape
---@field Pyramid UnityEngine.LightShape
---@field Box UnityEngine.LightShape
UnityEngine.LightShape = {}
---@alias CS.UnityEngine.LightShape UnityEngine.LightShape
CS.UnityEngine.LightShape = UnityEngine.LightShape


---@class UnityEngine.LightRenderMode
---@field Auto UnityEngine.LightRenderMode
---@field ForcePixel UnityEngine.LightRenderMode
---@field ForceVertex UnityEngine.LightRenderMode
UnityEngine.LightRenderMode = {}
---@alias CS.UnityEngine.LightRenderMode UnityEngine.LightRenderMode
CS.UnityEngine.LightRenderMode = UnityEngine.LightRenderMode


---@class UnityEngine.LightShadows
---@field None UnityEngine.LightShadows
---@field Hard UnityEngine.LightShadows
---@field Soft UnityEngine.LightShadows
UnityEngine.LightShadows = {}
---@alias CS.UnityEngine.LightShadows UnityEngine.LightShadows
CS.UnityEngine.LightShadows = UnityEngine.LightShadows


---@class UnityEngine.FogMode
---@field Linear UnityEngine.FogMode
---@field Exponential UnityEngine.FogMode
---@field ExponentialSquared UnityEngine.FogMode
UnityEngine.FogMode = {}
---@alias CS.UnityEngine.FogMode UnityEngine.FogMode
CS.UnityEngine.FogMode = UnityEngine.FogMode


---@class UnityEngine.LightmapBakeType
---@field Realtime UnityEngine.LightmapBakeType
---@field Baked UnityEngine.LightmapBakeType
---@field Mixed UnityEngine.LightmapBakeType
UnityEngine.LightmapBakeType = {}
---@alias CS.UnityEngine.LightmapBakeType UnityEngine.LightmapBakeType
CS.UnityEngine.LightmapBakeType = UnityEngine.LightmapBakeType


---@class UnityEngine.MixedLightingMode
---@field IndirectOnly UnityEngine.MixedLightingMode
---@field Shadowmask UnityEngine.MixedLightingMode
---@field Subtractive UnityEngine.MixedLightingMode
UnityEngine.MixedLightingMode = {}
---@alias CS.UnityEngine.MixedLightingMode UnityEngine.MixedLightingMode
CS.UnityEngine.MixedLightingMode = UnityEngine.MixedLightingMode


---@class UnityEngine.ReceiveGI
---@field Lightmaps UnityEngine.ReceiveGI
---@field LightProbes UnityEngine.ReceiveGI
UnityEngine.ReceiveGI = {}
---@alias CS.UnityEngine.ReceiveGI UnityEngine.ReceiveGI
CS.UnityEngine.ReceiveGI = UnityEngine.ReceiveGI


---@class UnityEngine.LightmapCompression
---@field None UnityEngine.LightmapCompression
---@field LowQuality UnityEngine.LightmapCompression
---@field NormalQuality UnityEngine.LightmapCompression
---@field HighQuality UnityEngine.LightmapCompression
UnityEngine.LightmapCompression = {}
---@alias CS.UnityEngine.LightmapCompression UnityEngine.LightmapCompression
CS.UnityEngine.LightmapCompression = UnityEngine.LightmapCompression


---@class UnityEngine.QualityLevel
---@field Fastest UnityEngine.QualityLevel
---@field Fast UnityEngine.QualityLevel
---@field Simple UnityEngine.QualityLevel
---@field Good UnityEngine.QualityLevel
---@field Beautiful UnityEngine.QualityLevel
---@field Fantastic UnityEngine.QualityLevel
UnityEngine.QualityLevel = {}
---@alias CS.UnityEngine.QualityLevel UnityEngine.QualityLevel
CS.UnityEngine.QualityLevel = UnityEngine.QualityLevel


---@class UnityEngine.ShadowProjection
---@field CloseFit UnityEngine.ShadowProjection
---@field StableFit UnityEngine.ShadowProjection
UnityEngine.ShadowProjection = {}
---@alias CS.UnityEngine.ShadowProjection UnityEngine.ShadowProjection
CS.UnityEngine.ShadowProjection = UnityEngine.ShadowProjection


---@class UnityEngine.ShadowQuality
---@field Disable UnityEngine.ShadowQuality
---@field HardOnly UnityEngine.ShadowQuality
---@field All UnityEngine.ShadowQuality
UnityEngine.ShadowQuality = {}
---@alias CS.UnityEngine.ShadowQuality UnityEngine.ShadowQuality
CS.UnityEngine.ShadowQuality = UnityEngine.ShadowQuality


---@class UnityEngine.ShadowResolution
---@field Low UnityEngine.ShadowResolution
---@field Medium UnityEngine.ShadowResolution
---@field High UnityEngine.ShadowResolution
---@field VeryHigh UnityEngine.ShadowResolution
UnityEngine.ShadowResolution = {}
---@alias CS.UnityEngine.ShadowResolution UnityEngine.ShadowResolution
CS.UnityEngine.ShadowResolution = UnityEngine.ShadowResolution


---@class UnityEngine.ShadowmaskMode
---@field Shadowmask UnityEngine.ShadowmaskMode
---@field DistanceShadowmask UnityEngine.ShadowmaskMode
UnityEngine.ShadowmaskMode = {}
---@alias CS.UnityEngine.ShadowmaskMode UnityEngine.ShadowmaskMode
CS.UnityEngine.ShadowmaskMode = UnityEngine.ShadowmaskMode


---@class UnityEngine.ShadowObjectsFilter
---@field AllObjects UnityEngine.ShadowObjectsFilter
---@field DynamicOnly UnityEngine.ShadowObjectsFilter
---@field StaticOnly UnityEngine.ShadowObjectsFilter
UnityEngine.ShadowObjectsFilter = {}
---@alias CS.UnityEngine.ShadowObjectsFilter UnityEngine.ShadowObjectsFilter
CS.UnityEngine.ShadowObjectsFilter = UnityEngine.ShadowObjectsFilter


---@class UnityEngine.CameraClearFlags
---@field Skybox UnityEngine.CameraClearFlags
---@field Color UnityEngine.CameraClearFlags
---@field SolidColor UnityEngine.CameraClearFlags
---@field Depth UnityEngine.CameraClearFlags
---@field Nothing UnityEngine.CameraClearFlags
UnityEngine.CameraClearFlags = {}
---@alias CS.UnityEngine.CameraClearFlags UnityEngine.CameraClearFlags
CS.UnityEngine.CameraClearFlags = UnityEngine.CameraClearFlags


---@class UnityEngine.DepthTextureMode
---@field None UnityEngine.DepthTextureMode
---@field Depth UnityEngine.DepthTextureMode
---@field DepthNormals UnityEngine.DepthTextureMode
---@field MotionVectors UnityEngine.DepthTextureMode
UnityEngine.DepthTextureMode = {}
---@alias CS.UnityEngine.DepthTextureMode UnityEngine.DepthTextureMode
CS.UnityEngine.DepthTextureMode = UnityEngine.DepthTextureMode


---@class UnityEngine.TexGenMode
---@field None UnityEngine.TexGenMode
---@field SphereMap UnityEngine.TexGenMode
---@field Object UnityEngine.TexGenMode
---@field EyeLinear UnityEngine.TexGenMode
---@field CubeReflect UnityEngine.TexGenMode
---@field CubeNormal UnityEngine.TexGenMode
UnityEngine.TexGenMode = {}
---@alias CS.UnityEngine.TexGenMode UnityEngine.TexGenMode
CS.UnityEngine.TexGenMode = UnityEngine.TexGenMode


---@class UnityEngine.AnisotropicFiltering
---@field Disable UnityEngine.AnisotropicFiltering
---@field Enable UnityEngine.AnisotropicFiltering
---@field ForceEnable UnityEngine.AnisotropicFiltering
UnityEngine.AnisotropicFiltering = {}
---@alias CS.UnityEngine.AnisotropicFiltering UnityEngine.AnisotropicFiltering
CS.UnityEngine.AnisotropicFiltering = UnityEngine.AnisotropicFiltering


---@class UnityEngine.BlendWeights
UnityEngine.BlendWeights = {}
---@alias CS.UnityEngine.BlendWeights UnityEngine.BlendWeights
CS.UnityEngine.BlendWeights = UnityEngine.BlendWeights


---@class UnityEngine.SkinWeights
---@field None UnityEngine.SkinWeights
---@field OneBone UnityEngine.SkinWeights
---@field TwoBones UnityEngine.SkinWeights
---@field FourBones UnityEngine.SkinWeights
---@field Unlimited UnityEngine.SkinWeights
UnityEngine.SkinWeights = {}
---@alias CS.UnityEngine.SkinWeights UnityEngine.SkinWeights
CS.UnityEngine.SkinWeights = UnityEngine.SkinWeights


---@class UnityEngine.MeshTopology
---@field Triangles UnityEngine.MeshTopology
---@field Quads UnityEngine.MeshTopology
---@field Lines UnityEngine.MeshTopology
---@field LineStrip UnityEngine.MeshTopology
---@field Points UnityEngine.MeshTopology
UnityEngine.MeshTopology = {}
---@alias CS.UnityEngine.MeshTopology UnityEngine.MeshTopology
CS.UnityEngine.MeshTopology = UnityEngine.MeshTopology


---@class UnityEngine.SkinQuality
---@field Auto UnityEngine.SkinQuality
---@field Bone1 UnityEngine.SkinQuality
---@field Bone2 UnityEngine.SkinQuality
---@field Bone4 UnityEngine.SkinQuality
UnityEngine.SkinQuality = {}
---@alias CS.UnityEngine.SkinQuality UnityEngine.SkinQuality
CS.UnityEngine.SkinQuality = UnityEngine.SkinQuality


---@class UnityEngine.ColorSpace
---@field Uninitialized UnityEngine.ColorSpace
---@field Gamma UnityEngine.ColorSpace
---@field Linear UnityEngine.ColorSpace
UnityEngine.ColorSpace = {}
---@alias CS.UnityEngine.ColorSpace UnityEngine.ColorSpace
CS.UnityEngine.ColorSpace = UnityEngine.ColorSpace


---@class UnityEngine.ColorGamut
---@field sRGB UnityEngine.ColorGamut
---@field Rec709 UnityEngine.ColorGamut
---@field Rec2020 UnityEngine.ColorGamut
---@field DisplayP3 UnityEngine.ColorGamut
---@field HDR10 UnityEngine.ColorGamut
---@field DolbyHDR UnityEngine.ColorGamut
---@field P3D65G22 UnityEngine.ColorGamut
UnityEngine.ColorGamut = {}
---@alias CS.UnityEngine.ColorGamut UnityEngine.ColorGamut
CS.UnityEngine.ColorGamut = UnityEngine.ColorGamut


---@class UnityEngine.ColorPrimaries
---@field Unknown UnityEngine.ColorPrimaries
---@field Rec709 UnityEngine.ColorPrimaries
---@field Rec2020 UnityEngine.ColorPrimaries
---@field P3 UnityEngine.ColorPrimaries
UnityEngine.ColorPrimaries = {}
---@alias CS.UnityEngine.ColorPrimaries UnityEngine.ColorPrimaries
CS.UnityEngine.ColorPrimaries = UnityEngine.ColorPrimaries


---@class UnityEngine.WhitePoint
---@field Unknown UnityEngine.WhitePoint
---@field D65 UnityEngine.WhitePoint
UnityEngine.WhitePoint = {}
---@alias CS.UnityEngine.WhitePoint UnityEngine.WhitePoint
CS.UnityEngine.WhitePoint = UnityEngine.WhitePoint


---@class UnityEngine.TransferFunction
---@field Unknown UnityEngine.TransferFunction
---@field sRGB UnityEngine.TransferFunction
---@field BT1886 UnityEngine.TransferFunction
---@field PQ UnityEngine.TransferFunction
---@field Linear UnityEngine.TransferFunction
---@field Gamma22 UnityEngine.TransferFunction
UnityEngine.TransferFunction = {}
---@alias CS.UnityEngine.TransferFunction UnityEngine.TransferFunction
CS.UnityEngine.TransferFunction = UnityEngine.TransferFunction


---@class UnityEngine.ScreenOrientation
---@field Portrait UnityEngine.ScreenOrientation
---@field PortraitUpsideDown UnityEngine.ScreenOrientation
---@field LandscapeLeft UnityEngine.ScreenOrientation
---@field LandscapeRight UnityEngine.ScreenOrientation
---@field AutoRotation UnityEngine.ScreenOrientation
UnityEngine.ScreenOrientation = {}
---@alias CS.UnityEngine.ScreenOrientation UnityEngine.ScreenOrientation
CS.UnityEngine.ScreenOrientation = UnityEngine.ScreenOrientation


---@class UnityEngine.FilterMode
---@field Point UnityEngine.FilterMode
---@field Bilinear UnityEngine.FilterMode
---@field Trilinear UnityEngine.FilterMode
UnityEngine.FilterMode = {}
---@alias CS.UnityEngine.FilterMode UnityEngine.FilterMode
CS.UnityEngine.FilterMode = UnityEngine.FilterMode


---@class UnityEngine.TextureWrapMode
---@field Repeat UnityEngine.TextureWrapMode
---@field Clamp UnityEngine.TextureWrapMode
---@field Mirror UnityEngine.TextureWrapMode
---@field MirrorOnce UnityEngine.TextureWrapMode
UnityEngine.TextureWrapMode = {}
---@alias CS.UnityEngine.TextureWrapMode UnityEngine.TextureWrapMode
CS.UnityEngine.TextureWrapMode = UnityEngine.TextureWrapMode


---@class UnityEngine.NPOTSupport
---@field Restricted UnityEngine.NPOTSupport
---@field Full UnityEngine.NPOTSupport
UnityEngine.NPOTSupport = {}
---@alias CS.UnityEngine.NPOTSupport UnityEngine.NPOTSupport
CS.UnityEngine.NPOTSupport = UnityEngine.NPOTSupport


---@class UnityEngine.TextureFormat
---@field Alpha8 UnityEngine.TextureFormat
---@field ARGB4444 UnityEngine.TextureFormat
---@field RGB24 UnityEngine.TextureFormat
---@field RGBA32 UnityEngine.TextureFormat
---@field ARGB32 UnityEngine.TextureFormat
---@field RGB565 UnityEngine.TextureFormat
---@field R16 UnityEngine.TextureFormat
---@field DXT1 UnityEngine.TextureFormat
---@field DXT5 UnityEngine.TextureFormat
---@field RGBA4444 UnityEngine.TextureFormat
---@field BGRA32 UnityEngine.TextureFormat
---@field RHalf UnityEngine.TextureFormat
---@field RGHalf UnityEngine.TextureFormat
---@field RGBAHalf UnityEngine.TextureFormat
---@field RFloat UnityEngine.TextureFormat
---@field RGFloat UnityEngine.TextureFormat
---@field RGBAFloat UnityEngine.TextureFormat
---@field YUY2 UnityEngine.TextureFormat
---@field RGB9e5Float UnityEngine.TextureFormat
---@field BC4 UnityEngine.TextureFormat
---@field BC5 UnityEngine.TextureFormat
---@field BC6H UnityEngine.TextureFormat
---@field BC7 UnityEngine.TextureFormat
---@field DXT1Crunched UnityEngine.TextureFormat
---@field DXT5Crunched UnityEngine.TextureFormat
---@field PVRTC_RGB2 UnityEngine.TextureFormat
---@field PVRTC_RGBA2 UnityEngine.TextureFormat
---@field PVRTC_RGB4 UnityEngine.TextureFormat
---@field PVRTC_RGBA4 UnityEngine.TextureFormat
---@field ETC_RGB4 UnityEngine.TextureFormat
---@field EAC_R UnityEngine.TextureFormat
---@field EAC_R_SIGNED UnityEngine.TextureFormat
---@field EAC_RG UnityEngine.TextureFormat
---@field EAC_RG_SIGNED UnityEngine.TextureFormat
---@field ETC2_RGB UnityEngine.TextureFormat
---@field ETC2_RGBA1 UnityEngine.TextureFormat
---@field ETC2_RGBA8 UnityEngine.TextureFormat
---@field ASTC_4x4 UnityEngine.TextureFormat
---@field ASTC_5x5 UnityEngine.TextureFormat
---@field ASTC_6x6 UnityEngine.TextureFormat
---@field ASTC_8x8 UnityEngine.TextureFormat
---@field ASTC_10x10 UnityEngine.TextureFormat
---@field ASTC_12x12 UnityEngine.TextureFormat
---@field RG16 UnityEngine.TextureFormat
---@field R8 UnityEngine.TextureFormat
---@field ETC_RGB4Crunched UnityEngine.TextureFormat
---@field ETC2_RGBA8Crunched UnityEngine.TextureFormat
---@field ASTC_HDR_4x4 UnityEngine.TextureFormat
---@field ASTC_HDR_5x5 UnityEngine.TextureFormat
---@field ASTC_HDR_6x6 UnityEngine.TextureFormat
---@field ASTC_HDR_8x8 UnityEngine.TextureFormat
---@field ASTC_HDR_10x10 UnityEngine.TextureFormat
---@field ASTC_HDR_12x12 UnityEngine.TextureFormat
---@field RG32 UnityEngine.TextureFormat
---@field RGB48 UnityEngine.TextureFormat
---@field RGBA64 UnityEngine.TextureFormat
UnityEngine.TextureFormat = {}
---@alias CS.UnityEngine.TextureFormat UnityEngine.TextureFormat
CS.UnityEngine.TextureFormat = UnityEngine.TextureFormat


---@class UnityEngine.TextureColorSpace
---@field Linear UnityEngine.TextureColorSpace
---@field sRGB UnityEngine.TextureColorSpace
UnityEngine.TextureColorSpace = {}
---@alias CS.UnityEngine.TextureColorSpace UnityEngine.TextureColorSpace
CS.UnityEngine.TextureColorSpace = UnityEngine.TextureColorSpace


---@class UnityEngine.CubemapFace
---@field Unknown UnityEngine.CubemapFace
---@field PositiveX UnityEngine.CubemapFace
---@field NegativeX UnityEngine.CubemapFace
---@field PositiveY UnityEngine.CubemapFace
---@field NegativeY UnityEngine.CubemapFace
---@field PositiveZ UnityEngine.CubemapFace
---@field NegativeZ UnityEngine.CubemapFace
UnityEngine.CubemapFace = {}
---@alias CS.UnityEngine.CubemapFace UnityEngine.CubemapFace
CS.UnityEngine.CubemapFace = UnityEngine.CubemapFace


---@class UnityEngine.RenderTextureFormat
---@field ARGB32 UnityEngine.RenderTextureFormat
---@field Depth UnityEngine.RenderTextureFormat
---@field ARGBHalf UnityEngine.RenderTextureFormat
---@field Shadowmap UnityEngine.RenderTextureFormat
---@field RGB565 UnityEngine.RenderTextureFormat
---@field ARGB4444 UnityEngine.RenderTextureFormat
---@field ARGB1555 UnityEngine.RenderTextureFormat
---@field Default UnityEngine.RenderTextureFormat
---@field ARGB2101010 UnityEngine.RenderTextureFormat
---@field DefaultHDR UnityEngine.RenderTextureFormat
---@field ARGB64 UnityEngine.RenderTextureFormat
---@field ARGBFloat UnityEngine.RenderTextureFormat
---@field RGFloat UnityEngine.RenderTextureFormat
---@field RGHalf UnityEngine.RenderTextureFormat
---@field RFloat UnityEngine.RenderTextureFormat
---@field RHalf UnityEngine.RenderTextureFormat
---@field R8 UnityEngine.RenderTextureFormat
---@field ARGBInt UnityEngine.RenderTextureFormat
---@field RGInt UnityEngine.RenderTextureFormat
---@field RInt UnityEngine.RenderTextureFormat
---@field BGRA32 UnityEngine.RenderTextureFormat
---@field RGB111110Float UnityEngine.RenderTextureFormat
---@field RG32 UnityEngine.RenderTextureFormat
---@field RGBAUShort UnityEngine.RenderTextureFormat
---@field RG16 UnityEngine.RenderTextureFormat
---@field BGRA10101010_XR UnityEngine.RenderTextureFormat
---@field BGR101010_XR UnityEngine.RenderTextureFormat
---@field R16 UnityEngine.RenderTextureFormat
UnityEngine.RenderTextureFormat = {}
---@alias CS.UnityEngine.RenderTextureFormat UnityEngine.RenderTextureFormat
CS.UnityEngine.RenderTextureFormat = UnityEngine.RenderTextureFormat


---@class UnityEngine.VRTextureUsage
---@field None UnityEngine.VRTextureUsage
---@field OneEye UnityEngine.VRTextureUsage
---@field TwoEyes UnityEngine.VRTextureUsage
---@field DeviceSpecific UnityEngine.VRTextureUsage
UnityEngine.VRTextureUsage = {}
---@alias CS.UnityEngine.VRTextureUsage UnityEngine.VRTextureUsage
CS.UnityEngine.VRTextureUsage = UnityEngine.VRTextureUsage


---@class UnityEngine.RenderTextureCreationFlags
---@field MipMap UnityEngine.RenderTextureCreationFlags
---@field AutoGenerateMips UnityEngine.RenderTextureCreationFlags
---@field SRGB UnityEngine.RenderTextureCreationFlags
---@field EyeTexture UnityEngine.RenderTextureCreationFlags
---@field EnableRandomWrite UnityEngine.RenderTextureCreationFlags
---@field CreatedFromScript UnityEngine.RenderTextureCreationFlags
---@field AllowVerticalFlip UnityEngine.RenderTextureCreationFlags
---@field NoResolvedColorSurface UnityEngine.RenderTextureCreationFlags
---@field DynamicallyScalable UnityEngine.RenderTextureCreationFlags
---@field BindMS UnityEngine.RenderTextureCreationFlags
UnityEngine.RenderTextureCreationFlags = {}
---@alias CS.UnityEngine.RenderTextureCreationFlags UnityEngine.RenderTextureCreationFlags
CS.UnityEngine.RenderTextureCreationFlags = UnityEngine.RenderTextureCreationFlags


---@class UnityEngine.RenderTextureReadWrite
---@field Default UnityEngine.RenderTextureReadWrite
---@field Linear UnityEngine.RenderTextureReadWrite
---@field sRGB UnityEngine.RenderTextureReadWrite
UnityEngine.RenderTextureReadWrite = {}
---@alias CS.UnityEngine.RenderTextureReadWrite UnityEngine.RenderTextureReadWrite
CS.UnityEngine.RenderTextureReadWrite = UnityEngine.RenderTextureReadWrite


---@class UnityEngine.RenderTextureMemoryless
---@field None UnityEngine.RenderTextureMemoryless
---@field Color UnityEngine.RenderTextureMemoryless
---@field Depth UnityEngine.RenderTextureMemoryless
---@field MSAA UnityEngine.RenderTextureMemoryless
UnityEngine.RenderTextureMemoryless = {}
---@alias CS.UnityEngine.RenderTextureMemoryless UnityEngine.RenderTextureMemoryless
CS.UnityEngine.RenderTextureMemoryless = UnityEngine.RenderTextureMemoryless


---@class UnityEngine.HDRDisplaySupportFlags
---@field None UnityEngine.HDRDisplaySupportFlags
---@field Supported UnityEngine.HDRDisplaySupportFlags
---@field RuntimeSwitchable UnityEngine.HDRDisplaySupportFlags
---@field AutomaticTonemapping UnityEngine.HDRDisplaySupportFlags
UnityEngine.HDRDisplaySupportFlags = {}
---@alias CS.UnityEngine.HDRDisplaySupportFlags UnityEngine.HDRDisplaySupportFlags
CS.UnityEngine.HDRDisplaySupportFlags = UnityEngine.HDRDisplaySupportFlags


---@class UnityEngine.HDRDisplayBitDepth
---@field BitDepth10 UnityEngine.HDRDisplayBitDepth
---@field BitDepth16 UnityEngine.HDRDisplayBitDepth
UnityEngine.HDRDisplayBitDepth = {}
---@alias CS.UnityEngine.HDRDisplayBitDepth UnityEngine.HDRDisplayBitDepth
CS.UnityEngine.HDRDisplayBitDepth = UnityEngine.HDRDisplayBitDepth


---@class UnityEngine.LightmapsMode
---@field NonDirectional UnityEngine.LightmapsMode
---@field CombinedDirectional UnityEngine.LightmapsMode
UnityEngine.LightmapsMode = {}
---@alias CS.UnityEngine.LightmapsMode UnityEngine.LightmapsMode
CS.UnityEngine.LightmapsMode = UnityEngine.LightmapsMode


---@class UnityEngine.MaterialGlobalIlluminationFlags
---@field None UnityEngine.MaterialGlobalIlluminationFlags
---@field RealtimeEmissive UnityEngine.MaterialGlobalIlluminationFlags
---@field BakedEmissive UnityEngine.MaterialGlobalIlluminationFlags
---@field EmissiveIsBlack UnityEngine.MaterialGlobalIlluminationFlags
---@field AnyEmissive UnityEngine.MaterialGlobalIlluminationFlags
UnityEngine.MaterialGlobalIlluminationFlags = {}
---@alias CS.UnityEngine.MaterialGlobalIlluminationFlags UnityEngine.MaterialGlobalIlluminationFlags
CS.UnityEngine.MaterialGlobalIlluminationFlags = UnityEngine.MaterialGlobalIlluminationFlags


---@class UnityEngine.MaterialSerializedProperty
---@field None UnityEngine.MaterialSerializedProperty
---@field LightmapFlags UnityEngine.MaterialSerializedProperty
---@field EnableInstancingVariants UnityEngine.MaterialSerializedProperty
---@field DoubleSidedGI UnityEngine.MaterialSerializedProperty
---@field CustomRenderQueue UnityEngine.MaterialSerializedProperty
UnityEngine.MaterialSerializedProperty = {}
---@alias CS.UnityEngine.MaterialSerializedProperty UnityEngine.MaterialSerializedProperty
CS.UnityEngine.MaterialSerializedProperty = UnityEngine.MaterialSerializedProperty


---@class UnityEngine.LightProbeProxyVolume : UnityEngine.Behaviour
---@field isFeatureSupported boolean
---@field boundsGlobal UnityEngine.Bounds
---@field sizeCustom UnityEngine.Vector3
---@field originCustom UnityEngine.Vector3
---@field probeDensity number
---@field gridResolutionX number
---@field gridResolutionY number
---@field gridResolutionZ number
---@field boundingBoxMode UnityEngine.LightProbeProxyVolume.BoundingBoxMode
---@field resolutionMode UnityEngine.LightProbeProxyVolume.ResolutionMode
---@field probePositionMode UnityEngine.LightProbeProxyVolume.ProbePositionMode
---@field refreshMode UnityEngine.LightProbeProxyVolume.RefreshMode
---@field qualityMode UnityEngine.LightProbeProxyVolume.QualityMode
---@field dataFormat UnityEngine.LightProbeProxyVolume.DataFormat
UnityEngine.LightProbeProxyVolume = {}
---@alias CS.UnityEngine.LightProbeProxyVolume UnityEngine.LightProbeProxyVolume
CS.UnityEngine.LightProbeProxyVolume = UnityEngine.LightProbeProxyVolume

---@return UnityEngine.LightProbeProxyVolume
function UnityEngine.LightProbeProxyVolume.New() end
function UnityEngine.LightProbeProxyVolume:Update() end

---@class UnityEngine.LightProbeProxyVolume.ResolutionMode
---@field Automatic UnityEngine.LightProbeProxyVolume.ResolutionMode
---@field Custom UnityEngine.LightProbeProxyVolume.ResolutionMode
UnityEngine.LightProbeProxyVolume.ResolutionMode = {}
---@alias CS.UnityEngine.LightProbeProxyVolume.ResolutionMode UnityEngine.LightProbeProxyVolume.ResolutionMode
CS.UnityEngine.LightProbeProxyVolume.ResolutionMode = UnityEngine.LightProbeProxyVolume.ResolutionMode


---@class UnityEngine.LightProbeProxyVolume.BoundingBoxMode
---@field AutomaticLocal UnityEngine.LightProbeProxyVolume.BoundingBoxMode
---@field AutomaticWorld UnityEngine.LightProbeProxyVolume.BoundingBoxMode
---@field Custom UnityEngine.LightProbeProxyVolume.BoundingBoxMode
UnityEngine.LightProbeProxyVolume.BoundingBoxMode = {}
---@alias CS.UnityEngine.LightProbeProxyVolume.BoundingBoxMode UnityEngine.LightProbeProxyVolume.BoundingBoxMode
CS.UnityEngine.LightProbeProxyVolume.BoundingBoxMode = UnityEngine.LightProbeProxyVolume.BoundingBoxMode


---@class UnityEngine.LightProbeProxyVolume.ProbePositionMode
---@field CellCorner UnityEngine.LightProbeProxyVolume.ProbePositionMode
---@field CellCenter UnityEngine.LightProbeProxyVolume.ProbePositionMode
UnityEngine.LightProbeProxyVolume.ProbePositionMode = {}
---@alias CS.UnityEngine.LightProbeProxyVolume.ProbePositionMode UnityEngine.LightProbeProxyVolume.ProbePositionMode
CS.UnityEngine.LightProbeProxyVolume.ProbePositionMode = UnityEngine.LightProbeProxyVolume.ProbePositionMode


---@class UnityEngine.LightProbeProxyVolume.RefreshMode
---@field Automatic UnityEngine.LightProbeProxyVolume.RefreshMode
---@field EveryFrame UnityEngine.LightProbeProxyVolume.RefreshMode
---@field ViaScripting UnityEngine.LightProbeProxyVolume.RefreshMode
UnityEngine.LightProbeProxyVolume.RefreshMode = {}
---@alias CS.UnityEngine.LightProbeProxyVolume.RefreshMode UnityEngine.LightProbeProxyVolume.RefreshMode
CS.UnityEngine.LightProbeProxyVolume.RefreshMode = UnityEngine.LightProbeProxyVolume.RefreshMode


---@class UnityEngine.LightProbeProxyVolume.QualityMode
---@field Low UnityEngine.LightProbeProxyVolume.QualityMode
---@field Normal UnityEngine.LightProbeProxyVolume.QualityMode
UnityEngine.LightProbeProxyVolume.QualityMode = {}
---@alias CS.UnityEngine.LightProbeProxyVolume.QualityMode UnityEngine.LightProbeProxyVolume.QualityMode
CS.UnityEngine.LightProbeProxyVolume.QualityMode = UnityEngine.LightProbeProxyVolume.QualityMode


---@class UnityEngine.LightProbeProxyVolume.DataFormat
---@field HalfFloat UnityEngine.LightProbeProxyVolume.DataFormat
---@field Float UnityEngine.LightProbeProxyVolume.DataFormat
UnityEngine.LightProbeProxyVolume.DataFormat = {}
---@alias CS.UnityEngine.LightProbeProxyVolume.DataFormat UnityEngine.LightProbeProxyVolume.DataFormat
CS.UnityEngine.LightProbeProxyVolume.DataFormat = UnityEngine.LightProbeProxyVolume.DataFormat


---@class UnityEngine.CustomRenderTextureInitializationSource
---@field TextureAndColor UnityEngine.CustomRenderTextureInitializationSource
---@field Material UnityEngine.CustomRenderTextureInitializationSource
UnityEngine.CustomRenderTextureInitializationSource = {}
---@alias CS.UnityEngine.CustomRenderTextureInitializationSource UnityEngine.CustomRenderTextureInitializationSource
CS.UnityEngine.CustomRenderTextureInitializationSource = UnityEngine.CustomRenderTextureInitializationSource


---@class UnityEngine.CustomRenderTextureUpdateMode
---@field OnLoad UnityEngine.CustomRenderTextureUpdateMode
---@field Realtime UnityEngine.CustomRenderTextureUpdateMode
---@field OnDemand UnityEngine.CustomRenderTextureUpdateMode
UnityEngine.CustomRenderTextureUpdateMode = {}
---@alias CS.UnityEngine.CustomRenderTextureUpdateMode UnityEngine.CustomRenderTextureUpdateMode
CS.UnityEngine.CustomRenderTextureUpdateMode = UnityEngine.CustomRenderTextureUpdateMode


---@class UnityEngine.CustomRenderTextureUpdateZoneSpace
---@field Normalized UnityEngine.CustomRenderTextureUpdateZoneSpace
---@field Pixel UnityEngine.CustomRenderTextureUpdateZoneSpace
UnityEngine.CustomRenderTextureUpdateZoneSpace = {}
---@alias CS.UnityEngine.CustomRenderTextureUpdateZoneSpace UnityEngine.CustomRenderTextureUpdateZoneSpace
CS.UnityEngine.CustomRenderTextureUpdateZoneSpace = UnityEngine.CustomRenderTextureUpdateZoneSpace


---@class UnityEngine.MotionVectorGenerationMode
---@field Camera UnityEngine.MotionVectorGenerationMode
---@field Object UnityEngine.MotionVectorGenerationMode
---@field ForceNoMotion UnityEngine.MotionVectorGenerationMode
UnityEngine.MotionVectorGenerationMode = {}
---@alias CS.UnityEngine.MotionVectorGenerationMode UnityEngine.MotionVectorGenerationMode
CS.UnityEngine.MotionVectorGenerationMode = UnityEngine.MotionVectorGenerationMode


---@class UnityEngine.LineTextureMode
---@field Stretch UnityEngine.LineTextureMode
---@field Tile UnityEngine.LineTextureMode
---@field DistributePerSegment UnityEngine.LineTextureMode
---@field RepeatPerSegment UnityEngine.LineTextureMode
---@field Static UnityEngine.LineTextureMode
UnityEngine.LineTextureMode = {}
---@alias CS.UnityEngine.LineTextureMode UnityEngine.LineTextureMode
CS.UnityEngine.LineTextureMode = UnityEngine.LineTextureMode


---@class UnityEngine.LineAlignment
---@field View UnityEngine.LineAlignment
---@field TransformZ UnityEngine.LineAlignment
UnityEngine.LineAlignment = {}
---@alias CS.UnityEngine.LineAlignment UnityEngine.LineAlignment
CS.UnityEngine.LineAlignment = UnityEngine.LineAlignment


---@class UnityEngine.TextureMipmapLimitBiasMode
---@field OffsetGlobalLimit UnityEngine.TextureMipmapLimitBiasMode
---@field OverrideGlobalLimit UnityEngine.TextureMipmapLimitBiasMode
UnityEngine.TextureMipmapLimitBiasMode = {}
---@alias CS.UnityEngine.TextureMipmapLimitBiasMode UnityEngine.TextureMipmapLimitBiasMode
CS.UnityEngine.TextureMipmapLimitBiasMode = UnityEngine.TextureMipmapLimitBiasMode


---@class UnityEngine.TerrainQualityOverrides
---@field None UnityEngine.TerrainQualityOverrides
---@field PixelError UnityEngine.TerrainQualityOverrides
---@field BasemapDistance UnityEngine.TerrainQualityOverrides
---@field DetailDensity UnityEngine.TerrainQualityOverrides
---@field DetailDistance UnityEngine.TerrainQualityOverrides
---@field TreeDistance UnityEngine.TerrainQualityOverrides
---@field BillboardStart UnityEngine.TerrainQualityOverrides
---@field FadeLength UnityEngine.TerrainQualityOverrides
---@field MaxTrees UnityEngine.TerrainQualityOverrides
UnityEngine.TerrainQualityOverrides = {}
---@alias CS.UnityEngine.TerrainQualityOverrides UnityEngine.TerrainQualityOverrides
CS.UnityEngine.TerrainQualityOverrides = UnityEngine.TerrainQualityOverrides


---@class UnityEngine.TextureMipmapLimitSettings : System.ValueType
---@field limitBiasMode UnityEngine.TextureMipmapLimitBiasMode
---@field limitBias number
UnityEngine.TextureMipmapLimitSettings = {}
---@alias CS.UnityEngine.TextureMipmapLimitSettings UnityEngine.TextureMipmapLimitSettings
CS.UnityEngine.TextureMipmapLimitSettings = UnityEngine.TextureMipmapLimitSettings


---@class UnityEngine.TextureMipmapLimitGroups : System.Object
UnityEngine.TextureMipmapLimitGroups = {}
---@alias CS.UnityEngine.TextureMipmapLimitGroups UnityEngine.TextureMipmapLimitGroups
CS.UnityEngine.TextureMipmapLimitGroups = UnityEngine.TextureMipmapLimitGroups

---@param groupName string
function UnityEngine.TextureMipmapLimitGroups.CreateGroup(groupName) end
---@param groupName string
function UnityEngine.TextureMipmapLimitGroups.RemoveGroup(groupName) end
---@return System.String[]
function UnityEngine.TextureMipmapLimitGroups.GetGroups() end
---@param groupName string
---@return boolean
function UnityEngine.TextureMipmapLimitGroups.HasGroup(groupName) end

---@class UnityEngine.SkinnedMeshRenderer : UnityEngine.Renderer
---@field quality UnityEngine.SkinQuality
---@field updateWhenOffscreen boolean
---@field forceMatrixRecalculationPerRender boolean
---@field rootBone UnityEngine.Transform
---@field bones UnityEngine.Transform[]
---@field sharedMesh UnityEngine.Mesh
---@field skinnedMotionVectors boolean
---@field vertexBufferTarget UnityEngine.GraphicsBuffer.Target
UnityEngine.SkinnedMeshRenderer = {}
---@alias CS.UnityEngine.SkinnedMeshRenderer UnityEngine.SkinnedMeshRenderer
CS.UnityEngine.SkinnedMeshRenderer = UnityEngine.SkinnedMeshRenderer

---@return UnityEngine.SkinnedMeshRenderer
function UnityEngine.SkinnedMeshRenderer.New() end
---@param index number
---@return number
function UnityEngine.SkinnedMeshRenderer:GetBlendShapeWeight(index) end
---@param index number
---@param value number
function UnityEngine.SkinnedMeshRenderer:SetBlendShapeWeight(index, value) end
---@overload fun(self: UnityEngine.SkinnedMeshRenderer, mesh: UnityEngine.Mesh)
---@param mesh UnityEngine.Mesh
---@param useScale boolean
function UnityEngine.SkinnedMeshRenderer:BakeMesh(mesh, useScale) end
---@return UnityEngine.GraphicsBuffer
function UnityEngine.SkinnedMeshRenderer:GetVertexBuffer() end
---@return UnityEngine.GraphicsBuffer
function UnityEngine.SkinnedMeshRenderer:GetPreviousVertexBuffer() end

---@class UnityEngine.MeshRenderer : UnityEngine.Renderer
---@field additionalVertexStreams UnityEngine.Mesh
---@field enlightenVertexStream UnityEngine.Mesh
---@field subMeshStartIndex number
---@field scaleInLightmap number
---@field receiveGI UnityEngine.ReceiveGI
---@field stitchLightmapSeams boolean
UnityEngine.MeshRenderer = {}
---@alias CS.UnityEngine.MeshRenderer UnityEngine.MeshRenderer
CS.UnityEngine.MeshRenderer = UnityEngine.MeshRenderer

---@return UnityEngine.MeshRenderer
function UnityEngine.MeshRenderer.New() end

---@class UnityEngine.LightmappingMode
UnityEngine.LightmappingMode = {}
---@alias CS.UnityEngine.LightmappingMode UnityEngine.LightmappingMode
CS.UnityEngine.LightmappingMode = UnityEngine.LightmappingMode


---@class UnityEngine.LightProbeGroup : UnityEngine.Behaviour
---@field probePositions UnityEngine.Vector3[]
---@field dering boolean
UnityEngine.LightProbeGroup = {}
---@alias CS.UnityEngine.LightProbeGroup UnityEngine.LightProbeGroup
CS.UnityEngine.LightProbeGroup = UnityEngine.LightProbeGroup

---@return UnityEngine.LightProbeGroup
function UnityEngine.LightProbeGroup.New() end

---@class UnityEngine.LineUtility : System.Object
UnityEngine.LineUtility = {}
---@alias CS.UnityEngine.LineUtility UnityEngine.LineUtility
CS.UnityEngine.LineUtility = UnityEngine.LineUtility

---@return UnityEngine.LineUtility
function UnityEngine.LineUtility.New() end
---@overload fun(points: System.Collections.Generic.List, tolerance: number, pointsToKeep: System.Collections.Generic.List)
---@overload fun(points: System.Collections.Generic.List, tolerance: number, simplifiedPoints: System.Collections.Generic.List)
---@overload fun(points: System.Collections.Generic.List, tolerance: number, pointsToKeep: System.Collections.Generic.List)
---@param points System.Collections.Generic.List
---@param tolerance number
---@param simplifiedPoints System.Collections.Generic.List
function UnityEngine.LineUtility.Simplify(points, tolerance, simplifiedPoints) end

---@class UnityEngine.LODFadeMode
---@field None UnityEngine.LODFadeMode
---@field CrossFade UnityEngine.LODFadeMode
---@field SpeedTree UnityEngine.LODFadeMode
UnityEngine.LODFadeMode = {}
---@alias CS.UnityEngine.LODFadeMode UnityEngine.LODFadeMode
CS.UnityEngine.LODFadeMode = UnityEngine.LODFadeMode


---@class UnityEngine.LOD : System.ValueType
---@field screenRelativeTransitionHeight number
---@field fadeTransitionWidth number
---@field renderers UnityEngine.Renderer[]
UnityEngine.LOD = {}
---@alias CS.UnityEngine.LOD UnityEngine.LOD
CS.UnityEngine.LOD = UnityEngine.LOD

---@param screenRelativeTransitionHeight number
---@param renderers UnityEngine.Renderer[]
---@return UnityEngine.LOD
function UnityEngine.LOD.New(screenRelativeTransitionHeight, renderers) end

---@class UnityEngine.LODGroup : UnityEngine.Component
---@field crossFadeAnimationDuration number
---@field localReferencePoint UnityEngine.Vector3
---@field size number
---@field lodCount number
---@field lastLODBillboard boolean
---@field fadeMode UnityEngine.LODFadeMode
---@field animateCrossFading boolean
---@field enabled boolean
UnityEngine.LODGroup = {}
---@alias CS.UnityEngine.LODGroup UnityEngine.LODGroup
CS.UnityEngine.LODGroup = UnityEngine.LODGroup

---@return UnityEngine.LODGroup
function UnityEngine.LODGroup.New() end
function UnityEngine.LODGroup:RecalculateBounds() end
---@return UnityEngine.LOD[]
function UnityEngine.LODGroup:GetLODs() end
---@param lods UnityEngine.LOD[]
function UnityEngine.LODGroup:SetLODs(lods) end
---@param index number
function UnityEngine.LODGroup:ForceLOD(index) end
---@return number
function UnityEngine.LODGroup:GetWorldSpaceSize() end
---@param camera UnityEngine.Camera
---@return number
function UnityEngine.LODGroup:GetRelativeHeight(camera) end

---@class UnityEngine.StaticBatchingHelper : System.ValueType
UnityEngine.StaticBatchingHelper = {}
---@alias CS.UnityEngine.StaticBatchingHelper UnityEngine.StaticBatchingHelper
CS.UnityEngine.StaticBatchingHelper = UnityEngine.StaticBatchingHelper


---@class UnityEngine.BlendShape : System.ValueType
---@field firstVertex number
---@field vertexCount number
---@field hasNormals boolean
---@field hasTangents boolean
UnityEngine.BlendShape = {}
---@alias CS.UnityEngine.BlendShape UnityEngine.BlendShape
CS.UnityEngine.BlendShape = UnityEngine.BlendShape


---@class UnityEngine.BlendShapeBufferRange : System.ValueType
---@field startIndex number
---@field endIndex number
UnityEngine.BlendShapeBufferRange = {}
---@alias CS.UnityEngine.BlendShapeBufferRange UnityEngine.BlendShapeBufferRange
CS.UnityEngine.BlendShapeBufferRange = UnityEngine.BlendShapeBufferRange


---@class UnityEngine.BoneWeight : System.ValueType
---@field weight0 number
---@field weight1 number
---@field weight2 number
---@field weight3 number
---@field boneIndex0 number
---@field boneIndex1 number
---@field boneIndex2 number
---@field boneIndex3 number
UnityEngine.BoneWeight = {}
---@alias CS.UnityEngine.BoneWeight UnityEngine.BoneWeight
CS.UnityEngine.BoneWeight = UnityEngine.BoneWeight

---@return number
function UnityEngine.BoneWeight:GetHashCode() end
---@overload fun(self: UnityEngine.BoneWeight, other: System.Object) : boolean
---@param other UnityEngine.BoneWeight
---@return boolean
function UnityEngine.BoneWeight:Equals(other) end

---@class UnityEngine.BoneWeight1 : System.ValueType
---@field weight number
---@field boneIndex number
UnityEngine.BoneWeight1 = {}
---@alias CS.UnityEngine.BoneWeight1 UnityEngine.BoneWeight1
CS.UnityEngine.BoneWeight1 = UnityEngine.BoneWeight1

---@overload fun(self: UnityEngine.BoneWeight1, other: System.Object) : boolean
---@param other UnityEngine.BoneWeight1
---@return boolean
function UnityEngine.BoneWeight1:Equals(other) end
---@return number
function UnityEngine.BoneWeight1:GetHashCode() end

---@class UnityEngine.CombineInstance : System.ValueType
---@field mesh UnityEngine.Mesh
---@field subMeshIndex number
---@field transform UnityEngine.Matrix4x4
---@field lightmapScaleOffset UnityEngine.Vector4
---@field realtimeLightmapScaleOffset UnityEngine.Vector4
UnityEngine.CombineInstance = {}
---@alias CS.UnityEngine.CombineInstance UnityEngine.CombineInstance
CS.UnityEngine.CombineInstance = UnityEngine.CombineInstance


---@class UnityEngine.Texture : UnityEngine.Object
---@field GenerateAllMips number
---@field anisotropicFiltering UnityEngine.AnisotropicFiltering
---@field totalTextureMemory number
---@field desiredTextureMemory number
---@field targetTextureMemory number
---@field currentTextureMemory number
---@field nonStreamingTextureMemory number
---@field streamingMipmapUploadCount number
---@field streamingRendererCount number
---@field streamingTextureCount number
---@field nonStreamingTextureCount number
---@field streamingTexturePendingLoadCount number
---@field streamingTextureLoadingCount number
---@field streamingTextureForceLoadAll boolean
---@field streamingTextureDiscardUnusedMips boolean
---@field allowThreadedTextureCreation boolean
---@field mipmapCount number
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field width number
---@field height number
---@field dimension UnityEngine.Rendering.TextureDimension
---@field isReadable boolean
---@field wrapMode UnityEngine.TextureWrapMode
---@field wrapModeU UnityEngine.TextureWrapMode
---@field wrapModeV UnityEngine.TextureWrapMode
---@field wrapModeW UnityEngine.TextureWrapMode
---@field filterMode UnityEngine.FilterMode
---@field anisoLevel number
---@field mipMapBias number
---@field texelSize UnityEngine.Vector2
---@field updateCount number
---@field isDataSRGB boolean
---@field imageContentsHash UnityEngine.Hash128
UnityEngine.Texture = {}
---@alias CS.UnityEngine.Texture UnityEngine.Texture
CS.UnityEngine.Texture = UnityEngine.Texture

---@param forcedMin number
---@param globalMax number
function UnityEngine.Texture.SetGlobalAnisotropicFilteringLimits(forcedMin, globalMax) end
function UnityEngine.Texture.SetStreamingTextureMaterialDebugProperties() end
---@return System.IntPtr
function UnityEngine.Texture:GetNativeTexturePtr() end
function UnityEngine.Texture:IncrementUpdateCount() end

---@class UnityEngine.Texture2D : UnityEngine.Texture
---@field whiteTexture UnityEngine.Texture2D
---@field blackTexture UnityEngine.Texture2D
---@field redTexture UnityEngine.Texture2D
---@field grayTexture UnityEngine.Texture2D
---@field linearGrayTexture UnityEngine.Texture2D
---@field normalTexture UnityEngine.Texture2D
---@field format UnityEngine.TextureFormat
---@field ignoreMipmapLimit boolean
---@field mipmapLimitGroup string
---@field activeMipmapLimit number
---@field isReadable boolean
---@field vtOnly boolean
---@field streamingMipmaps boolean
---@field streamingMipmapsPriority number
---@field requestedMipmapLevel number
---@field minimumMipmapLevel number
---@field calculatedMipmapLevel number
---@field desiredMipmapLevel number
---@field loadingMipmapLevel number
---@field loadedMipmapLevel number
---@field alphaIsTransparency boolean
UnityEngine.Texture2D = {}
---@alias CS.UnityEngine.Texture2D UnityEngine.Texture2D
CS.UnityEngine.Texture2D = UnityEngine.Texture2D

---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, mipCount: number, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, mipCount: number, mipmapLimitGroupName: string, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number, mipmapLimitGroupName: string, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean, createUninitialized: boolean) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean, createUninitialized: boolean, ignoreMipmapLimit: boolean, mipmapLimitGroupName: string) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, linear: boolean) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, linear: boolean, createUninitialized: boolean) : UnityEngine.Texture2D
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean) : UnityEngine.Texture2D
---@param width number
---@param height number
---@return UnityEngine.Texture2D
function UnityEngine.Texture2D.New(width, height) end
---@param width number
---@param height number
---@param format UnityEngine.TextureFormat
---@param mipChain boolean
---@param linear boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture2D
function UnityEngine.Texture2D.CreateExternalTexture(width, height, format, mipChain, linear, nativeTex) end
---@param sizes UnityEngine.Vector2[]
---@param padding number
---@param atlasSize number
---@param results System.Collections.Generic.List
---@return boolean
function UnityEngine.Texture2D.GenerateAtlas(sizes, padding, atlasSize, results) end
---@param highQuality boolean
function UnityEngine.Texture2D:Compress(highQuality) end
function UnityEngine.Texture2D:ClearRequestedMipmapLevel() end
---@return boolean
function UnityEngine.Texture2D:IsRequestedMipmapLevelLoaded() end
function UnityEngine.Texture2D:ClearMinimumMipmapLevel() end
---@param nativeTex System.IntPtr
function UnityEngine.Texture2D:UpdateExternalTexture(nativeTex) end
---@return System.Byte[]
function UnityEngine.Texture2D:GetRawTextureData() end
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number, blockWidth: number, blockHeight: number, miplevel: number) : UnityEngine.Color[]
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number, blockWidth: number, blockHeight: number) : UnityEngine.Color[]
---@overload fun(self: UnityEngine.Texture2D, miplevel: number) : UnityEngine.Color[]
---@return UnityEngine.Color[]
function UnityEngine.Texture2D:GetPixels() end
---@overload fun(self: UnityEngine.Texture2D, miplevel: number) : UnityEngine.Color32[]
---@return UnityEngine.Color32[]
function UnityEngine.Texture2D:GetPixels32() end
---@overload fun(self: UnityEngine.Texture2D, textures: UnityEngine.Texture2D[], padding: number, maximumAtlasSize: number, makeNoLongerReadable: boolean) : UnityEngine.Rect[]
---@overload fun(self: UnityEngine.Texture2D, textures: UnityEngine.Texture2D[], padding: number, maximumAtlasSize: number) : UnityEngine.Rect[]
---@param textures UnityEngine.Texture2D[]
---@param padding number
---@return UnityEngine.Rect[]
function UnityEngine.Texture2D:PackTextures(textures, padding) end
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number, color: UnityEngine.Color)
---@param x number
---@param y number
---@param color UnityEngine.Color
---@param mipLevel number
function UnityEngine.Texture2D:SetPixel(x, y, color, mipLevel) end
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number, blockWidth: number, blockHeight: number, colors: UnityEngine.Color[], miplevel: number)
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number, blockWidth: number, blockHeight: number, colors: UnityEngine.Color[])
---@overload fun(self: UnityEngine.Texture2D, colors: UnityEngine.Color[], miplevel: number)
---@param colors UnityEngine.Color[]
function UnityEngine.Texture2D:SetPixels(colors) end
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number) : UnityEngine.Color
---@param x number
---@param y number
---@param mipLevel number
---@return UnityEngine.Color
function UnityEngine.Texture2D:GetPixel(x, y, mipLevel) end
---@overload fun(self: UnityEngine.Texture2D, u: number, v: number) : UnityEngine.Color
---@param u number
---@param v number
---@param mipLevel number
---@return UnityEngine.Color
function UnityEngine.Texture2D:GetPixelBilinear(u, v, mipLevel) end
---@overload fun(self: UnityEngine.Texture2D, data: System.IntPtr, size: number)
---@param data System.Byte[]
function UnityEngine.Texture2D:LoadRawTextureData(data) end
---@overload fun(self: UnityEngine.Texture2D, updateMipmaps: boolean, makeNoLongerReadable: boolean)
---@overload fun(self: UnityEngine.Texture2D, updateMipmaps: boolean)
function UnityEngine.Texture2D:Apply() end
---@overload fun(self: UnityEngine.Texture2D, width: number, height: number) : boolean
---@overload fun(self: UnityEngine.Texture2D, width: number, height: number, format: UnityEngine.TextureFormat, hasMipMap: boolean) : boolean
---@param width number
---@param height number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param hasMipMap boolean
---@return boolean
function UnityEngine.Texture2D:Reinitialize(width, height, format, hasMipMap) end
---@overload fun(self: UnityEngine.Texture2D, source: UnityEngine.Rect, destX: number, destY: number, recalculateMipMaps: boolean)
---@param source UnityEngine.Rect
---@param destX number
---@param destY number
function UnityEngine.Texture2D:ReadPixels(source, destX, destY) end
---@overload fun(self: UnityEngine.Texture2D, colors: UnityEngine.Color32[], miplevel: number)
---@overload fun(self: UnityEngine.Texture2D, colors: UnityEngine.Color32[])
---@overload fun(self: UnityEngine.Texture2D, x: number, y: number, blockWidth: number, blockHeight: number, colors: UnityEngine.Color32[], miplevel: number)
---@param x number
---@param y number
---@param blockWidth number
---@param blockHeight number
---@param colors UnityEngine.Color32[]
function UnityEngine.Texture2D:SetPixels32(x, y, blockWidth, blockHeight, colors) end
---@return System.Byte[]
function UnityEngine.Texture2D:EncodeToTGA() end
---@return System.Byte[]
function UnityEngine.Texture2D:EncodeToPNG() end
---@param quality number
---@return System.Byte[]
function UnityEngine.Texture2D:EncodeToJPG(quality) end
---@return System.Byte[]
function UnityEngine.Texture2D:EncodeToJPG() end
---@param flags UnityEngine.Texture2D.EXRFlags
---@return System.Byte[]
function UnityEngine.Texture2D:EncodeToEXR(flags) end
---@return System.Byte[]
function UnityEngine.Texture2D:EncodeToEXR() end
---@param data System.Byte[]
---@param markNonReadable boolean
---@return boolean
function UnityEngine.Texture2D:LoadImage(data, markNonReadable) end
---@param data System.Byte[]
---@return boolean
function UnityEngine.Texture2D:LoadImage(data) end

---@class UnityEngine.Texture2D.EXRFlags
---@field None UnityEngine.Texture2D.EXRFlags
---@field OutputAsFloat UnityEngine.Texture2D.EXRFlags
---@field CompressZIP UnityEngine.Texture2D.EXRFlags
---@field CompressRLE UnityEngine.Texture2D.EXRFlags
---@field CompressPIZ UnityEngine.Texture2D.EXRFlags
UnityEngine.Texture2D.EXRFlags = {}
---@alias CS.UnityEngine.Texture2D.EXRFlags UnityEngine.Texture2D.EXRFlags
CS.UnityEngine.Texture2D.EXRFlags = UnityEngine.Texture2D.EXRFlags


---@class UnityEngine.Cubemap : UnityEngine.Texture
---@field format UnityEngine.TextureFormat
---@field isReadable boolean
---@field streamingMipmaps boolean
---@field streamingMipmapsPriority number
---@field requestedMipmapLevel number
---@field desiredMipmapLevel number
---@field loadingMipmapLevel number
---@field loadedMipmapLevel number
UnityEngine.Cubemap = {}
---@alias CS.UnityEngine.Cubemap UnityEngine.Cubemap
CS.UnityEngine.Cubemap = UnityEngine.Cubemap

---@overload fun(width: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Cubemap
---@overload fun(width: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.Cubemap
---@overload fun(width: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Cubemap
---@overload fun(width: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.Cubemap
---@overload fun(width: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean) : UnityEngine.Cubemap
---@overload fun(width: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, createUninitialized: boolean) : UnityEngine.Cubemap
---@overload fun(width: number, format: UnityEngine.TextureFormat, mipCount: number) : UnityEngine.Cubemap
---@param width number
---@param format UnityEngine.TextureFormat
---@param mipCount number
---@param createUninitialized boolean
---@return UnityEngine.Cubemap
function UnityEngine.Cubemap.New(width, format, mipCount, createUninitialized) end
---@param width number
---@param format UnityEngine.TextureFormat
---@param mipmap boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Cubemap
function UnityEngine.Cubemap.CreateExternalTexture(width, format, mipmap, nativeTex) end
---@param nativeTexture System.IntPtr
function UnityEngine.Cubemap:UpdateExternalTexture(nativeTexture) end
---@overload fun(self: UnityEngine.Cubemap, smoothRegionWidthInPixels: number)
function UnityEngine.Cubemap:SmoothEdges() end
---@overload fun(self: UnityEngine.Cubemap, face: UnityEngine.CubemapFace, miplevel: number) : UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@return UnityEngine.Color[]
function UnityEngine.Cubemap:GetPixels(face) end
---@overload fun(self: UnityEngine.Cubemap, colors: UnityEngine.Color[], face: UnityEngine.CubemapFace, miplevel: number)
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
function UnityEngine.Cubemap:SetPixels(colors, face) end
function UnityEngine.Cubemap:ClearRequestedMipmapLevel() end
---@return boolean
function UnityEngine.Cubemap:IsRequestedMipmapLevelLoaded() end
---@overload fun(self: UnityEngine.Cubemap, face: UnityEngine.CubemapFace, x: number, y: number, color: UnityEngine.Color)
---@param face UnityEngine.CubemapFace
---@param x number
---@param y number
---@param color UnityEngine.Color
---@param mip number
function UnityEngine.Cubemap:SetPixel(face, x, y, color, mip) end
---@overload fun(self: UnityEngine.Cubemap, face: UnityEngine.CubemapFace, x: number, y: number) : UnityEngine.Color
---@param face UnityEngine.CubemapFace
---@param x number
---@param y number
---@param mip number
---@return UnityEngine.Color
function UnityEngine.Cubemap:GetPixel(face, x, y, mip) end
---@overload fun(self: UnityEngine.Cubemap, updateMipmaps: boolean, makeNoLongerReadable: boolean)
---@overload fun(self: UnityEngine.Cubemap, updateMipmaps: boolean)
function UnityEngine.Cubemap:Apply() end

---@class UnityEngine.Texture3D : UnityEngine.Texture
---@field depth number
---@field format UnityEngine.TextureFormat
---@field isReadable boolean
UnityEngine.Texture3D = {}
---@alias CS.UnityEngine.Texture3D UnityEngine.Texture3D
CS.UnityEngine.Texture3D = UnityEngine.Texture3D

---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipCount: number) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, nativeTex: System.IntPtr) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, nativeTex: System.IntPtr, createUninitialized: boolean) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean) : UnityEngine.Texture3D
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, createUninitialized: boolean) : UnityEngine.Texture3D
---@param width number
---@param height number
---@param depth number
---@param textureFormat UnityEngine.TextureFormat
---@param mipChain boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture3D
function UnityEngine.Texture3D.New(width, height, depth, textureFormat, mipChain, nativeTex) end
---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.TextureFormat
---@param mipChain boolean
---@param nativeTex System.IntPtr
---@return UnityEngine.Texture3D
function UnityEngine.Texture3D.CreateExternalTexture(width, height, depth, format, mipChain, nativeTex) end
---@param nativeTex System.IntPtr
function UnityEngine.Texture3D:UpdateExternalTexture(nativeTex) end
---@overload fun(self: UnityEngine.Texture3D, miplevel: number) : UnityEngine.Color[]
---@return UnityEngine.Color[]
function UnityEngine.Texture3D:GetPixels() end
---@overload fun(self: UnityEngine.Texture3D, miplevel: number) : UnityEngine.Color32[]
---@return UnityEngine.Color32[]
function UnityEngine.Texture3D:GetPixels32() end
---@overload fun(self: UnityEngine.Texture3D, colors: UnityEngine.Color[], miplevel: number)
---@param colors UnityEngine.Color[]
function UnityEngine.Texture3D:SetPixels(colors) end
---@overload fun(self: UnityEngine.Texture3D, colors: UnityEngine.Color32[], miplevel: number)
---@param colors UnityEngine.Color32[]
function UnityEngine.Texture3D:SetPixels32(colors) end
---@overload fun(self: UnityEngine.Texture3D, updateMipmaps: boolean, makeNoLongerReadable: boolean)
---@overload fun(self: UnityEngine.Texture3D, updateMipmaps: boolean)
function UnityEngine.Texture3D:Apply() end
---@overload fun(self: UnityEngine.Texture3D, x: number, y: number, z: number, color: UnityEngine.Color)
---@param x number
---@param y number
---@param z number
---@param color UnityEngine.Color
---@param mipLevel number
function UnityEngine.Texture3D:SetPixel(x, y, z, color, mipLevel) end
---@overload fun(self: UnityEngine.Texture3D, x: number, y: number, z: number) : UnityEngine.Color
---@param x number
---@param y number
---@param z number
---@param mipLevel number
---@return UnityEngine.Color
function UnityEngine.Texture3D:GetPixel(x, y, z, mipLevel) end
---@overload fun(self: UnityEngine.Texture3D, u: number, v: number, w: number) : UnityEngine.Color
---@param u number
---@param v number
---@param w number
---@param mipLevel number
---@return UnityEngine.Color
function UnityEngine.Texture3D:GetPixelBilinear(u, v, w, mipLevel) end

---@class UnityEngine.Texture2DArray : UnityEngine.Texture
---@field allSlices number
---@field depth number
---@field format UnityEngine.TextureFormat
---@field isReadable boolean
UnityEngine.Texture2DArray = {}
---@alias CS.UnityEngine.Texture2DArray UnityEngine.Texture2DArray
CS.UnityEngine.Texture2DArray = UnityEngine.Texture2DArray

---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean, createUninitialized: boolean) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, linear: boolean, createUninitialized: boolean) : UnityEngine.Texture2DArray
---@overload fun(width: number, height: number, depth: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, linear: boolean) : UnityEngine.Texture2DArray
---@param width number
---@param height number
---@param depth number
---@param textureFormat UnityEngine.TextureFormat
---@param mipChain boolean
---@return UnityEngine.Texture2DArray
function UnityEngine.Texture2DArray.New(width, height, depth, textureFormat, mipChain) end
---@overload fun(self: UnityEngine.Texture2DArray, arrayElement: number, miplevel: number) : UnityEngine.Color[]
---@param arrayElement number
---@return UnityEngine.Color[]
function UnityEngine.Texture2DArray:GetPixels(arrayElement) end
---@overload fun(self: UnityEngine.Texture2DArray, arrayElement: number, miplevel: number) : UnityEngine.Color32[]
---@param arrayElement number
---@return UnityEngine.Color32[]
function UnityEngine.Texture2DArray:GetPixels32(arrayElement) end
---@overload fun(self: UnityEngine.Texture2DArray, colors: UnityEngine.Color[], arrayElement: number, miplevel: number)
---@param colors UnityEngine.Color[]
---@param arrayElement number
function UnityEngine.Texture2DArray:SetPixels(colors, arrayElement) end
---@overload fun(self: UnityEngine.Texture2DArray, colors: UnityEngine.Color32[], arrayElement: number, miplevel: number)
---@param colors UnityEngine.Color32[]
---@param arrayElement number
function UnityEngine.Texture2DArray:SetPixels32(colors, arrayElement) end
---@overload fun(self: UnityEngine.Texture2DArray, updateMipmaps: boolean, makeNoLongerReadable: boolean)
---@overload fun(self: UnityEngine.Texture2DArray, updateMipmaps: boolean)
function UnityEngine.Texture2DArray:Apply() end

---@class UnityEngine.CubemapArray : UnityEngine.Texture
---@field cubemapCount number
---@field format UnityEngine.TextureFormat
---@field isReadable boolean
UnityEngine.CubemapArray = {}
---@alias CS.UnityEngine.CubemapArray UnityEngine.CubemapArray
CS.UnityEngine.CubemapArray = UnityEngine.CubemapArray

---@overload fun(width: number, cubemapCount: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, flags: UnityEngine.Experimental.Rendering.TextureCreationFlags, mipCount: number) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean, createUninitialized: boolean) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, textureFormat: UnityEngine.TextureFormat, mipCount: number, linear: boolean) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, linear: boolean, createUninitialized: boolean) : UnityEngine.CubemapArray
---@overload fun(width: number, cubemapCount: number, textureFormat: UnityEngine.TextureFormat, mipChain: boolean, linear: boolean) : UnityEngine.CubemapArray
---@param width number
---@param cubemapCount number
---@param textureFormat UnityEngine.TextureFormat
---@param mipChain boolean
---@return UnityEngine.CubemapArray
function UnityEngine.CubemapArray.New(width, cubemapCount, textureFormat, mipChain) end
---@overload fun(self: UnityEngine.CubemapArray, face: UnityEngine.CubemapFace, arrayElement: number, miplevel: number) : UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@return UnityEngine.Color[]
function UnityEngine.CubemapArray:GetPixels(face, arrayElement) end
---@overload fun(self: UnityEngine.CubemapArray, face: UnityEngine.CubemapFace, arrayElement: number, miplevel: number) : UnityEngine.Color32[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
---@return UnityEngine.Color32[]
function UnityEngine.CubemapArray:GetPixels32(face, arrayElement) end
---@overload fun(self: UnityEngine.CubemapArray, colors: UnityEngine.Color[], face: UnityEngine.CubemapFace, arrayElement: number, miplevel: number)
---@param colors UnityEngine.Color[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
function UnityEngine.CubemapArray:SetPixels(colors, face, arrayElement) end
---@overload fun(self: UnityEngine.CubemapArray, colors: UnityEngine.Color32[], face: UnityEngine.CubemapFace, arrayElement: number, miplevel: number)
---@param colors UnityEngine.Color32[]
---@param face UnityEngine.CubemapFace
---@param arrayElement number
function UnityEngine.CubemapArray:SetPixels32(colors, face, arrayElement) end
---@overload fun(self: UnityEngine.CubemapArray, updateMipmaps: boolean, makeNoLongerReadable: boolean)
---@overload fun(self: UnityEngine.CubemapArray, updateMipmaps: boolean)
function UnityEngine.CubemapArray:Apply() end

---@class UnityEngine.SparseTexture : UnityEngine.Texture
---@field tileWidth number
---@field tileHeight number
---@field isCreated boolean
UnityEngine.SparseTexture = {}
---@alias CS.UnityEngine.SparseTexture UnityEngine.SparseTexture
CS.UnityEngine.SparseTexture = UnityEngine.SparseTexture

---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.DefaultFormat, mipCount: number) : UnityEngine.SparseTexture
---@overload fun(width: number, height: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number) : UnityEngine.SparseTexture
---@overload fun(width: number, height: number, textureFormat: UnityEngine.TextureFormat, mipCount: number) : UnityEngine.SparseTexture
---@param width number
---@param height number
---@param textureFormat UnityEngine.TextureFormat
---@param mipCount number
---@param linear boolean
---@return UnityEngine.SparseTexture
function UnityEngine.SparseTexture.New(width, height, textureFormat, mipCount, linear) end
---@param tileX number
---@param tileY number
---@param miplevel number
---@param data UnityEngine.Color32[]
function UnityEngine.SparseTexture:UpdateTile(tileX, tileY, miplevel, data) end
---@param tileX number
---@param tileY number
---@param miplevel number
---@param data System.Byte[]
function UnityEngine.SparseTexture:UpdateTileRaw(tileX, tileY, miplevel, data) end
---@param tileX number
---@param tileY number
---@param miplevel number
function UnityEngine.SparseTexture:UnloadTile(tileX, tileY, miplevel) end

---@class UnityEngine.RenderTexture : UnityEngine.Texture
---@field active UnityEngine.RenderTexture
---@field width number
---@field height number
---@field dimension UnityEngine.Rendering.TextureDimension
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field useMipMap boolean
---@field sRGB boolean
---@field vrUsage UnityEngine.VRTextureUsage
---@field memorylessMode UnityEngine.RenderTextureMemoryless
---@field format UnityEngine.RenderTextureFormat
---@field stencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field depthStencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field autoGenerateMips boolean
---@field volumeDepth number
---@field antiAliasing number
---@field bindTextureMS boolean
---@field enableRandomWrite boolean
---@field useDynamicScale boolean
---@field isPowerOfTwo boolean
---@field colorBuffer UnityEngine.RenderBuffer
---@field depthBuffer UnityEngine.RenderBuffer
---@field depth number
---@field descriptor UnityEngine.RenderTextureDescriptor
UnityEngine.RenderTexture = {}
---@alias CS.UnityEngine.RenderTexture UnityEngine.RenderTexture
CS.UnityEngine.RenderTexture = UnityEngine.RenderTexture

---@overload fun(desc: UnityEngine.RenderTextureDescriptor) : UnityEngine.RenderTexture
---@overload fun(textureToCopy: UnityEngine.RenderTexture) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.DefaultFormat) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, depthStencilFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, mipCount: number) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, depthStencilFormat: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depth: number, format: UnityEngine.RenderTextureFormat) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depth: number) : UnityEngine.RenderTexture
---@param width number
---@param height number
---@param depth number
---@param format UnityEngine.RenderTextureFormat
---@param mipCount number
---@return UnityEngine.RenderTexture
function UnityEngine.RenderTexture.New(width, height, depth, format, mipCount) end
---@param rt UnityEngine.RenderTexture
---@return boolean
function UnityEngine.RenderTexture.SupportsStencil(rt) end
---@param temp UnityEngine.RenderTexture
function UnityEngine.RenderTexture.ReleaseTemporary(temp) end
---@overload fun(desc: UnityEngine.RenderTextureDescriptor) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, memorylessMode: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, useDynamicScale: boolean) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, memorylessMode: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number, memorylessMode: UnityEngine.RenderTextureMemoryless) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat, antiAliasing: number) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, memorylessMode: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage, useDynamicScale: boolean) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, memorylessMode: UnityEngine.RenderTextureMemoryless, vrUsage: UnityEngine.VRTextureUsage) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number, memorylessMode: UnityEngine.RenderTextureMemoryless) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite, antiAliasing: number) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number, format: UnityEngine.RenderTextureFormat) : UnityEngine.RenderTexture
---@overload fun(width: number, height: number, depthBuffer: number) : UnityEngine.RenderTexture
---@param width number
---@param height number
---@return UnityEngine.RenderTexture
function UnityEngine.RenderTexture.GetTemporary(width, height) end
---@return System.IntPtr
function UnityEngine.RenderTexture:GetNativeDepthBufferPtr() end
---@overload fun(self: UnityEngine.RenderTexture, discardColor: boolean, discardDepth: boolean)
function UnityEngine.RenderTexture:DiscardContents() end
---@overload fun()
---@param target UnityEngine.RenderTexture
function UnityEngine.RenderTexture:ResolveAntiAliasedSurface(target) end
---@param propertyName string
function UnityEngine.RenderTexture:SetGlobalShaderProperty(propertyName) end
---@return boolean
function UnityEngine.RenderTexture:Create() end
function UnityEngine.RenderTexture:Release() end
---@return boolean
function UnityEngine.RenderTexture:IsCreated() end
function UnityEngine.RenderTexture:GenerateMips() end
---@param equirect UnityEngine.RenderTexture
---@param eye UnityEngine.Camera.MonoOrStereoscopicEye
function UnityEngine.RenderTexture:ConvertToEquirect(equirect, eye) end

---@class UnityEngine.CustomRenderTextureUpdateZone : System.ValueType
---@field updateZoneCenter UnityEngine.Vector3
---@field updateZoneSize UnityEngine.Vector3
---@field rotation number
---@field passIndex number
---@field needSwap boolean
UnityEngine.CustomRenderTextureUpdateZone = {}
---@alias CS.UnityEngine.CustomRenderTextureUpdateZone UnityEngine.CustomRenderTextureUpdateZone
CS.UnityEngine.CustomRenderTextureUpdateZone = UnityEngine.CustomRenderTextureUpdateZone


---@class UnityEngine.CustomRenderTexture : UnityEngine.RenderTexture
---@field material UnityEngine.Material
---@field initializationMaterial UnityEngine.Material
---@field initializationTexture UnityEngine.Texture
---@field initializationSource UnityEngine.CustomRenderTextureInitializationSource
---@field initializationColor UnityEngine.Color
---@field updateMode UnityEngine.CustomRenderTextureUpdateMode
---@field initializationMode UnityEngine.CustomRenderTextureUpdateMode
---@field updateZoneSpace UnityEngine.CustomRenderTextureUpdateZoneSpace
---@field shaderPass number
---@field cubemapFaceMask number
---@field doubleBuffered boolean
---@field wrapUpdateZones boolean
---@field updatePeriod number
UnityEngine.CustomRenderTexture = {}
---@alias CS.UnityEngine.CustomRenderTexture UnityEngine.CustomRenderTexture
CS.UnityEngine.CustomRenderTexture = UnityEngine.CustomRenderTexture

---@overload fun(width: number, height: number, format: UnityEngine.RenderTextureFormat, readWrite: UnityEngine.RenderTextureReadWrite) : UnityEngine.CustomRenderTexture
---@overload fun(width: number, height: number, format: UnityEngine.RenderTextureFormat) : UnityEngine.CustomRenderTexture
---@overload fun(width: number, height: number) : UnityEngine.CustomRenderTexture
---@overload fun(width: number, height: number, defaultFormat: UnityEngine.Experimental.Rendering.DefaultFormat) : UnityEngine.CustomRenderTexture
---@param width number
---@param height number
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@return UnityEngine.CustomRenderTexture
function UnityEngine.CustomRenderTexture.New(width, height, format) end
---@overload fun(self: UnityEngine.CustomRenderTexture, count: number)
function UnityEngine.CustomRenderTexture:Update() end
function UnityEngine.CustomRenderTexture:Initialize() end
function UnityEngine.CustomRenderTexture:ClearUpdateZones() end
---@param updateZones System.Collections.Generic.List
function UnityEngine.CustomRenderTexture:GetUpdateZones(updateZones) end
---@return UnityEngine.RenderTexture
function UnityEngine.CustomRenderTexture:GetDoubleBufferRenderTexture() end
function UnityEngine.CustomRenderTexture:EnsureDoubleBufferConsistency() end
---@param updateZones UnityEngine.CustomRenderTextureUpdateZone[]
function UnityEngine.CustomRenderTexture:SetUpdateZones(updateZones) end

---@class UnityEngine.RenderTextureDescriptor : System.ValueType
---@field width number
---@field height number
---@field msaaSamples number
---@field volumeDepth number
---@field mipCount number
---@field graphicsFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field stencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field depthStencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@field colorFormat UnityEngine.RenderTextureFormat
---@field sRGB boolean
---@field depthBufferBits number
---@field dimension UnityEngine.Rendering.TextureDimension
---@field shadowSamplingMode UnityEngine.Rendering.ShadowSamplingMode
---@field vrUsage UnityEngine.VRTextureUsage
---@field flags UnityEngine.RenderTextureCreationFlags
---@field memoryless UnityEngine.RenderTextureMemoryless
---@field useMipMap boolean
---@field autoGenerateMips boolean
---@field enableRandomWrite boolean
---@field bindMS boolean
---@field useDynamicScale boolean
UnityEngine.RenderTextureDescriptor = {}
---@alias CS.UnityEngine.RenderTextureDescriptor UnityEngine.RenderTextureDescriptor
CS.UnityEngine.RenderTextureDescriptor = UnityEngine.RenderTextureDescriptor

---@overload fun(width: number, height: number) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.RenderTextureFormat) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.RenderTextureFormat, depthBufferBits: number) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, depthBufferBits: number) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.RenderTextureFormat, depthBufferBits: number, mipCount: number) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.RenderTextureFormat, depthBufferBits: number, mipCount: number, readWrite: UnityEngine.RenderTextureReadWrite) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, depthBufferBits: number, mipCount: number) : UnityEngine.RenderTextureDescriptor
---@overload fun(width: number, height: number, colorFormat: UnityEngine.Experimental.Rendering.GraphicsFormat, depthStencilFormat: UnityEngine.Experimental.Rendering.GraphicsFormat) : UnityEngine.RenderTextureDescriptor
---@param width number
---@param height number
---@param colorFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@param depthStencilFormat UnityEngine.Experimental.Rendering.GraphicsFormat
---@param mipCount number
---@return UnityEngine.RenderTextureDescriptor
function UnityEngine.RenderTextureDescriptor.New(width, height, colorFormat, depthStencilFormat, mipCount) end

---@class UnityEngine.FullScreenMovieControlMode
---@field Full UnityEngine.FullScreenMovieControlMode
---@field Minimal UnityEngine.FullScreenMovieControlMode
---@field CancelOnInput UnityEngine.FullScreenMovieControlMode
---@field Hidden UnityEngine.FullScreenMovieControlMode
UnityEngine.FullScreenMovieControlMode = {}
---@alias CS.UnityEngine.FullScreenMovieControlMode UnityEngine.FullScreenMovieControlMode
CS.UnityEngine.FullScreenMovieControlMode = UnityEngine.FullScreenMovieControlMode


---@class UnityEngine.FullScreenMovieScalingMode
---@field None UnityEngine.FullScreenMovieScalingMode
---@field AspectFit UnityEngine.FullScreenMovieScalingMode
---@field AspectFill UnityEngine.FullScreenMovieScalingMode
---@field Fill UnityEngine.FullScreenMovieScalingMode
UnityEngine.FullScreenMovieScalingMode = {}
---@alias CS.UnityEngine.FullScreenMovieScalingMode UnityEngine.FullScreenMovieScalingMode
CS.UnityEngine.FullScreenMovieScalingMode = UnityEngine.FullScreenMovieScalingMode


---@class UnityEngine.AndroidActivityIndicatorStyle
---@field DontShow UnityEngine.AndroidActivityIndicatorStyle
---@field Large UnityEngine.AndroidActivityIndicatorStyle
---@field InversedLarge UnityEngine.AndroidActivityIndicatorStyle
---@field Small UnityEngine.AndroidActivityIndicatorStyle
---@field InversedSmall UnityEngine.AndroidActivityIndicatorStyle
UnityEngine.AndroidActivityIndicatorStyle = {}
---@alias CS.UnityEngine.AndroidActivityIndicatorStyle UnityEngine.AndroidActivityIndicatorStyle
CS.UnityEngine.AndroidActivityIndicatorStyle = UnityEngine.AndroidActivityIndicatorStyle


---@class UnityEngine.Handheld : System.Object
UnityEngine.Handheld = {}
---@alias CS.UnityEngine.Handheld UnityEngine.Handheld
CS.UnityEngine.Handheld = UnityEngine.Handheld

---@return UnityEngine.Handheld
function UnityEngine.Handheld.New() end
---@overload fun(path: string, bgColor: UnityEngine.Color, controlMode: UnityEngine.FullScreenMovieControlMode, scalingMode: UnityEngine.FullScreenMovieScalingMode) : boolean
---@overload fun(path: string, bgColor: UnityEngine.Color, controlMode: UnityEngine.FullScreenMovieControlMode) : boolean
---@overload fun(path: string, bgColor: UnityEngine.Color) : boolean
---@param path string
---@return boolean
function UnityEngine.Handheld.PlayFullScreenMovie(path) end
function UnityEngine.Handheld.Vibrate() end
---@overload fun(style: UnityEngine.iOS.ActivityIndicatorStyle)
---@param style UnityEngine.AndroidActivityIndicatorStyle
function UnityEngine.Handheld.SetActivityIndicatorStyle(style) end
---@return number
function UnityEngine.Handheld.GetActivityIndicatorStyle() end
function UnityEngine.Handheld.StartActivityIndicator() end
function UnityEngine.Handheld.StopActivityIndicator() end
function UnityEngine.Handheld.ClearShaderCache() end

---@class UnityEngine.Hash128 : System.ValueType
---@field isValid boolean
UnityEngine.Hash128 = {}
---@alias CS.UnityEngine.Hash128 UnityEngine.Hash128
CS.UnityEngine.Hash128 = UnityEngine.Hash128

---@overload fun(u32_0: number, u32_1: number, u32_2: number, u32_3: number) : UnityEngine.Hash128
---@param u64_0 number
---@param u64_1 number
---@return UnityEngine.Hash128
function UnityEngine.Hash128.New(u64_0, u64_1) end
---@param hashString string
---@return UnityEngine.Hash128
function UnityEngine.Hash128.Parse(hashString) end
---@overload fun(data: string) : UnityEngine.Hash128
---@overload fun(val: number) : UnityEngine.Hash128
---@overload fun(val: number) : UnityEngine.Hash128
---@param data System.Void*
---@param size number
---@return UnityEngine.Hash128
function UnityEngine.Hash128.Compute(data, size) end
---@overload fun(self: UnityEngine.Hash128, rhs: UnityEngine.Hash128) : number
---@param obj System.Object
---@return number
function UnityEngine.Hash128:CompareTo(obj) end
---@return string
function UnityEngine.Hash128:ToString() end
---@overload fun(self: UnityEngine.Hash128, data: string)
---@overload fun(self: UnityEngine.Hash128, val: number)
---@overload fun(self: UnityEngine.Hash128, val: number)
---@param data System.Void*
---@param size number
function UnityEngine.Hash128:Append(data, size) end
---@overload fun(self: UnityEngine.Hash128, obj: System.Object) : boolean
---@param obj UnityEngine.Hash128
---@return boolean
function UnityEngine.Hash128:Equals(obj) end
---@return number
function UnityEngine.Hash128:GetHashCode() end

---@class UnityEngine.HashUtilities : System.Object
UnityEngine.HashUtilities = {}
---@alias CS.UnityEngine.HashUtilities UnityEngine.HashUtilities
CS.UnityEngine.HashUtilities = UnityEngine.HashUtilities

---@param ref_inHash UnityEngine.Hash128
---@param ref_outHash UnityEngine.Hash128
---@return ,UnityEngine.Hash128,UnityEngine.Hash128
function UnityEngine.HashUtilities.AppendHash(ref_inHash, ref_outHash) end
---@param ref_value UnityEngine.Matrix4x4
---@param ref_hash UnityEngine.Hash128
---@return ,UnityEngine.Matrix4x4,UnityEngine.Hash128
function UnityEngine.HashUtilities.QuantisedMatrixHash(ref_value, ref_hash) end
---@param ref_value UnityEngine.Vector3
---@param ref_hash UnityEngine.Hash128
---@return ,UnityEngine.Vector3,UnityEngine.Hash128
function UnityEngine.HashUtilities.QuantisedVectorHash(ref_value, ref_hash) end
---@param value System.Byte[]
---@param ref_hash UnityEngine.Hash128
---@return ,UnityEngine.Hash128
function UnityEngine.HashUtilities.ComputeHash128(value, ref_hash) end

---@class UnityEngine.HashUnsafeUtilities : System.Object
UnityEngine.HashUnsafeUtilities = {}
---@alias CS.UnityEngine.HashUnsafeUtilities UnityEngine.HashUnsafeUtilities
CS.UnityEngine.HashUnsafeUtilities = UnityEngine.HashUnsafeUtilities

---@overload fun(data: System.Void*, dataSize: number, hash1: System.UInt64*, hash2: System.UInt64*)
---@param data System.Void*
---@param dataSize number
---@param hash UnityEngine.Hash128*
function UnityEngine.HashUnsafeUtilities.ComputeHash128(data, dataSize, hash) end

---@class UnityEngine.SpookyHash : System.Object
UnityEngine.SpookyHash = {}
---@alias CS.UnityEngine.SpookyHash UnityEngine.SpookyHash
CS.UnityEngine.SpookyHash = UnityEngine.SpookyHash

---@param message System.Void*
---@param length number
---@param hash1 System.UInt64*
---@param hash2 System.UInt64*
function UnityEngine.SpookyHash.Hash(message, length, hash1, hash2) end

---@class UnityEngine.SpookyHash.U : System.ValueType
---@field p8 System.Byte*
---@field p32 System.UInt32*
---@field p64 System.UInt64*
---@field i number
UnityEngine.SpookyHash.U = {}
---@alias CS.UnityEngine.SpookyHash.U UnityEngine.SpookyHash.U
CS.UnityEngine.SpookyHash.U = UnityEngine.SpookyHash.U

---@param p8 System.UInt16*
---@return UnityEngine.SpookyHash.U
function UnityEngine.SpookyHash.U.New(p8) end

---@class UnityEngine.ScrollWaitDefinitions : System.Object
---@field firstWait number
---@field regularWait number
UnityEngine.ScrollWaitDefinitions = {}
---@alias CS.UnityEngine.ScrollWaitDefinitions UnityEngine.ScrollWaitDefinitions
CS.UnityEngine.ScrollWaitDefinitions = UnityEngine.ScrollWaitDefinitions


---@class UnityEngine.CursorMode
---@field Auto UnityEngine.CursorMode
---@field ForceSoftware UnityEngine.CursorMode
UnityEngine.CursorMode = {}
---@alias CS.UnityEngine.CursorMode UnityEngine.CursorMode
CS.UnityEngine.CursorMode = UnityEngine.CursorMode


---@class UnityEngine.CursorLockMode
---@field None UnityEngine.CursorLockMode
---@field Locked UnityEngine.CursorLockMode
---@field Confined UnityEngine.CursorLockMode
UnityEngine.CursorLockMode = {}
---@alias CS.UnityEngine.CursorLockMode UnityEngine.CursorLockMode
CS.UnityEngine.CursorLockMode = UnityEngine.CursorLockMode


---@class UnityEngine.Cursor : System.Object
---@field visible boolean
---@field lockState UnityEngine.CursorLockMode
UnityEngine.Cursor = {}
---@alias CS.UnityEngine.Cursor UnityEngine.Cursor
CS.UnityEngine.Cursor = UnityEngine.Cursor

---@return UnityEngine.Cursor
function UnityEngine.Cursor.New() end
---@param texture UnityEngine.Texture2D
---@param hotspot UnityEngine.Vector2
---@param cursorMode UnityEngine.CursorMode
function UnityEngine.Cursor.SetCursor(texture, hotspot, cursorMode) end

---@class UnityEngine.KeyCode
---@field None UnityEngine.KeyCode
---@field Backspace UnityEngine.KeyCode
---@field Delete UnityEngine.KeyCode
---@field Tab UnityEngine.KeyCode
---@field Clear UnityEngine.KeyCode
---@field Return UnityEngine.KeyCode
---@field Pause UnityEngine.KeyCode
---@field Escape UnityEngine.KeyCode
---@field Space UnityEngine.KeyCode
---@field Keypad0 UnityEngine.KeyCode
---@field Keypad1 UnityEngine.KeyCode
---@field Keypad2 UnityEngine.KeyCode
---@field Keypad3 UnityEngine.KeyCode
---@field Keypad4 UnityEngine.KeyCode
---@field Keypad5 UnityEngine.KeyCode
---@field Keypad6 UnityEngine.KeyCode
---@field Keypad7 UnityEngine.KeyCode
---@field Keypad8 UnityEngine.KeyCode
---@field Keypad9 UnityEngine.KeyCode
---@field KeypadPeriod UnityEngine.KeyCode
---@field KeypadDivide UnityEngine.KeyCode
---@field KeypadMultiply UnityEngine.KeyCode
---@field KeypadMinus UnityEngine.KeyCode
---@field KeypadPlus UnityEngine.KeyCode
---@field KeypadEnter UnityEngine.KeyCode
---@field KeypadEquals UnityEngine.KeyCode
---@field UpArrow UnityEngine.KeyCode
---@field DownArrow UnityEngine.KeyCode
---@field RightArrow UnityEngine.KeyCode
---@field LeftArrow UnityEngine.KeyCode
---@field Insert UnityEngine.KeyCode
---@field Home UnityEngine.KeyCode
---@field End UnityEngine.KeyCode
---@field PageUp UnityEngine.KeyCode
---@field PageDown UnityEngine.KeyCode
---@field F1 UnityEngine.KeyCode
---@field F2 UnityEngine.KeyCode
---@field F3 UnityEngine.KeyCode
---@field F4 UnityEngine.KeyCode
---@field F5 UnityEngine.KeyCode
---@field F6 UnityEngine.KeyCode
---@field F7 UnityEngine.KeyCode
---@field F8 UnityEngine.KeyCode
---@field F9 UnityEngine.KeyCode
---@field F10 UnityEngine.KeyCode
---@field F11 UnityEngine.KeyCode
---@field F12 UnityEngine.KeyCode
---@field F13 UnityEngine.KeyCode
---@field F14 UnityEngine.KeyCode
---@field F15 UnityEngine.KeyCode
---@field Alpha0 UnityEngine.KeyCode
---@field Alpha1 UnityEngine.KeyCode
---@field Alpha2 UnityEngine.KeyCode
---@field Alpha3 UnityEngine.KeyCode
---@field Alpha4 UnityEngine.KeyCode
---@field Alpha5 UnityEngine.KeyCode
---@field Alpha6 UnityEngine.KeyCode
---@field Alpha7 UnityEngine.KeyCode
---@field Alpha8 UnityEngine.KeyCode
---@field Alpha9 UnityEngine.KeyCode
---@field Exclaim UnityEngine.KeyCode
---@field DoubleQuote UnityEngine.KeyCode
---@field Hash UnityEngine.KeyCode
---@field Dollar UnityEngine.KeyCode
---@field Percent UnityEngine.KeyCode
---@field Ampersand UnityEngine.KeyCode
---@field Quote UnityEngine.KeyCode
---@field LeftParen UnityEngine.KeyCode
---@field RightParen UnityEngine.KeyCode
---@field Asterisk UnityEngine.KeyCode
---@field Plus UnityEngine.KeyCode
---@field Comma UnityEngine.KeyCode
---@field Minus UnityEngine.KeyCode
---@field Period UnityEngine.KeyCode
---@field Slash UnityEngine.KeyCode
---@field Colon UnityEngine.KeyCode
---@field Semicolon UnityEngine.KeyCode
---@field Less UnityEngine.KeyCode
---@field Equals UnityEngine.KeyCode
---@field Greater UnityEngine.KeyCode
---@field Question UnityEngine.KeyCode
---@field At UnityEngine.KeyCode
---@field LeftBracket UnityEngine.KeyCode
---@field Backslash UnityEngine.KeyCode
---@field RightBracket UnityEngine.KeyCode
---@field Caret UnityEngine.KeyCode
---@field Underscore UnityEngine.KeyCode
---@field BackQuote UnityEngine.KeyCode
---@field A UnityEngine.KeyCode
---@field B UnityEngine.KeyCode
---@field C UnityEngine.KeyCode
---@field D UnityEngine.KeyCode
---@field E UnityEngine.KeyCode
---@field F UnityEngine.KeyCode
---@field G UnityEngine.KeyCode
---@field H UnityEngine.KeyCode
---@field I UnityEngine.KeyCode
---@field J UnityEngine.KeyCode
---@field K UnityEngine.KeyCode
---@field L UnityEngine.KeyCode
---@field M UnityEngine.KeyCode
---@field N UnityEngine.KeyCode
---@field O UnityEngine.KeyCode
---@field P UnityEngine.KeyCode
---@field Q UnityEngine.KeyCode
---@field R UnityEngine.KeyCode
---@field S UnityEngine.KeyCode
---@field T UnityEngine.KeyCode
---@field U UnityEngine.KeyCode
---@field V UnityEngine.KeyCode
---@field W UnityEngine.KeyCode
---@field X UnityEngine.KeyCode
---@field Y UnityEngine.KeyCode
---@field Z UnityEngine.KeyCode
---@field LeftCurlyBracket UnityEngine.KeyCode
---@field Pipe UnityEngine.KeyCode
---@field RightCurlyBracket UnityEngine.KeyCode
---@field Tilde UnityEngine.KeyCode
---@field Numlock UnityEngine.KeyCode
---@field CapsLock UnityEngine.KeyCode
---@field ScrollLock UnityEngine.KeyCode
---@field RightShift UnityEngine.KeyCode
---@field LeftShift UnityEngine.KeyCode
---@field RightControl UnityEngine.KeyCode
---@field LeftControl UnityEngine.KeyCode
---@field RightAlt UnityEngine.KeyCode
---@field LeftAlt UnityEngine.KeyCode
---@field LeftMeta UnityEngine.KeyCode
---@field LeftCommand UnityEngine.KeyCode
---@field LeftApple UnityEngine.KeyCode
---@field LeftWindows UnityEngine.KeyCode
---@field RightMeta UnityEngine.KeyCode
---@field RightCommand UnityEngine.KeyCode
---@field RightApple UnityEngine.KeyCode
---@field RightWindows UnityEngine.KeyCode
---@field AltGr UnityEngine.KeyCode
---@field Help UnityEngine.KeyCode
---@field Print UnityEngine.KeyCode
---@field SysReq UnityEngine.KeyCode
---@field Break UnityEngine.KeyCode
---@field Menu UnityEngine.KeyCode
---@field Mouse0 UnityEngine.KeyCode
---@field Mouse1 UnityEngine.KeyCode
---@field Mouse2 UnityEngine.KeyCode
---@field Mouse3 UnityEngine.KeyCode
---@field Mouse4 UnityEngine.KeyCode
---@field Mouse5 UnityEngine.KeyCode
---@field Mouse6 UnityEngine.KeyCode
---@field JoystickButton0 UnityEngine.KeyCode
---@field JoystickButton1 UnityEngine.KeyCode
---@field JoystickButton2 UnityEngine.KeyCode
---@field JoystickButton3 UnityEngine.KeyCode
---@field JoystickButton4 UnityEngine.KeyCode
---@field JoystickButton5 UnityEngine.KeyCode
---@field JoystickButton6 UnityEngine.KeyCode
---@field JoystickButton7 UnityEngine.KeyCode
---@field JoystickButton8 UnityEngine.KeyCode
---@field JoystickButton9 UnityEngine.KeyCode
---@field JoystickButton10 UnityEngine.KeyCode
---@field JoystickButton11 UnityEngine.KeyCode
---@field JoystickButton12 UnityEngine.KeyCode
---@field JoystickButton13 UnityEngine.KeyCode
---@field JoystickButton14 UnityEngine.KeyCode
---@field JoystickButton15 UnityEngine.KeyCode
---@field JoystickButton16 UnityEngine.KeyCode
---@field JoystickButton17 UnityEngine.KeyCode
---@field JoystickButton18 UnityEngine.KeyCode
---@field JoystickButton19 UnityEngine.KeyCode
---@field Joystick1Button0 UnityEngine.KeyCode
---@field Joystick1Button1 UnityEngine.KeyCode
---@field Joystick1Button2 UnityEngine.KeyCode
---@field Joystick1Button3 UnityEngine.KeyCode
---@field Joystick1Button4 UnityEngine.KeyCode
---@field Joystick1Button5 UnityEngine.KeyCode
---@field Joystick1Button6 UnityEngine.KeyCode
---@field Joystick1Button7 UnityEngine.KeyCode
---@field Joystick1Button8 UnityEngine.KeyCode
---@field Joystick1Button9 UnityEngine.KeyCode
---@field Joystick1Button10 UnityEngine.KeyCode
---@field Joystick1Button11 UnityEngine.KeyCode
---@field Joystick1Button12 UnityEngine.KeyCode
---@field Joystick1Button13 UnityEngine.KeyCode
---@field Joystick1Button14 UnityEngine.KeyCode
---@field Joystick1Button15 UnityEngine.KeyCode
---@field Joystick1Button16 UnityEngine.KeyCode
---@field Joystick1Button17 UnityEngine.KeyCode
---@field Joystick1Button18 UnityEngine.KeyCode
---@field Joystick1Button19 UnityEngine.KeyCode
---@field Joystick2Button0 UnityEngine.KeyCode
---@field Joystick2Button1 UnityEngine.KeyCode
---@field Joystick2Button2 UnityEngine.KeyCode
---@field Joystick2Button3 UnityEngine.KeyCode
---@field Joystick2Button4 UnityEngine.KeyCode
---@field Joystick2Button5 UnityEngine.KeyCode
---@field Joystick2Button6 UnityEngine.KeyCode
---@field Joystick2Button7 UnityEngine.KeyCode
---@field Joystick2Button8 UnityEngine.KeyCode
---@field Joystick2Button9 UnityEngine.KeyCode
---@field Joystick2Button10 UnityEngine.KeyCode
---@field Joystick2Button11 UnityEngine.KeyCode
---@field Joystick2Button12 UnityEngine.KeyCode
---@field Joystick2Button13 UnityEngine.KeyCode
---@field Joystick2Button14 UnityEngine.KeyCode
---@field Joystick2Button15 UnityEngine.KeyCode
---@field Joystick2Button16 UnityEngine.KeyCode
---@field Joystick2Button17 UnityEngine.KeyCode
---@field Joystick2Button18 UnityEngine.KeyCode
---@field Joystick2Button19 UnityEngine.KeyCode
---@field Joystick3Button0 UnityEngine.KeyCode
---@field Joystick3Button1 UnityEngine.KeyCode
---@field Joystick3Button2 UnityEngine.KeyCode
---@field Joystick3Button3 UnityEngine.KeyCode
---@field Joystick3Button4 UnityEngine.KeyCode
---@field Joystick3Button5 UnityEngine.KeyCode
---@field Joystick3Button6 UnityEngine.KeyCode
---@field Joystick3Button7 UnityEngine.KeyCode
---@field Joystick3Button8 UnityEngine.KeyCode
---@field Joystick3Button9 UnityEngine.KeyCode
---@field Joystick3Button10 UnityEngine.KeyCode
---@field Joystick3Button11 UnityEngine.KeyCode
---@field Joystick3Button12 UnityEngine.KeyCode
---@field Joystick3Button13 UnityEngine.KeyCode
---@field Joystick3Button14 UnityEngine.KeyCode
---@field Joystick3Button15 UnityEngine.KeyCode
---@field Joystick3Button16 UnityEngine.KeyCode
---@field Joystick3Button17 UnityEngine.KeyCode
---@field Joystick3Button18 UnityEngine.KeyCode
---@field Joystick3Button19 UnityEngine.KeyCode
---@field Joystick4Button0 UnityEngine.KeyCode
---@field Joystick4Button1 UnityEngine.KeyCode
---@field Joystick4Button2 UnityEngine.KeyCode
---@field Joystick4Button3 UnityEngine.KeyCode
---@field Joystick4Button4 UnityEngine.KeyCode
---@field Joystick4Button5 UnityEngine.KeyCode
---@field Joystick4Button6 UnityEngine.KeyCode
---@field Joystick4Button7 UnityEngine.KeyCode
---@field Joystick4Button8 UnityEngine.KeyCode
---@field Joystick4Button9 UnityEngine.KeyCode
---@field Joystick4Button10 UnityEngine.KeyCode
---@field Joystick4Button11 UnityEngine.KeyCode
---@field Joystick4Button12 UnityEngine.KeyCode
---@field Joystick4Button13 UnityEngine.KeyCode
---@field Joystick4Button14 UnityEngine.KeyCode
---@field Joystick4Button15 UnityEngine.KeyCode
---@field Joystick4Button16 UnityEngine.KeyCode
---@field Joystick4Button17 UnityEngine.KeyCode
---@field Joystick4Button18 UnityEngine.KeyCode
---@field Joystick4Button19 UnityEngine.KeyCode
---@field Joystick5Button0 UnityEngine.KeyCode
---@field Joystick5Button1 UnityEngine.KeyCode
---@field Joystick5Button2 UnityEngine.KeyCode
---@field Joystick5Button3 UnityEngine.KeyCode
---@field Joystick5Button4 UnityEngine.KeyCode
---@field Joystick5Button5 UnityEngine.KeyCode
---@field Joystick5Button6 UnityEngine.KeyCode
---@field Joystick5Button7 UnityEngine.KeyCode
---@field Joystick5Button8 UnityEngine.KeyCode
---@field Joystick5Button9 UnityEngine.KeyCode
---@field Joystick5Button10 UnityEngine.KeyCode
---@field Joystick5Button11 UnityEngine.KeyCode
---@field Joystick5Button12 UnityEngine.KeyCode
---@field Joystick5Button13 UnityEngine.KeyCode
---@field Joystick5Button14 UnityEngine.KeyCode
---@field Joystick5Button15 UnityEngine.KeyCode
---@field Joystick5Button16 UnityEngine.KeyCode
---@field Joystick5Button17 UnityEngine.KeyCode
---@field Joystick5Button18 UnityEngine.KeyCode
---@field Joystick5Button19 UnityEngine.KeyCode
---@field Joystick6Button0 UnityEngine.KeyCode
---@field Joystick6Button1 UnityEngine.KeyCode
---@field Joystick6Button2 UnityEngine.KeyCode
---@field Joystick6Button3 UnityEngine.KeyCode
---@field Joystick6Button4 UnityEngine.KeyCode
---@field Joystick6Button5 UnityEngine.KeyCode
---@field Joystick6Button6 UnityEngine.KeyCode
---@field Joystick6Button7 UnityEngine.KeyCode
---@field Joystick6Button8 UnityEngine.KeyCode
---@field Joystick6Button9 UnityEngine.KeyCode
---@field Joystick6Button10 UnityEngine.KeyCode
---@field Joystick6Button11 UnityEngine.KeyCode
---@field Joystick6Button12 UnityEngine.KeyCode
---@field Joystick6Button13 UnityEngine.KeyCode
---@field Joystick6Button14 UnityEngine.KeyCode
---@field Joystick6Button15 UnityEngine.KeyCode
---@field Joystick6Button16 UnityEngine.KeyCode
---@field Joystick6Button17 UnityEngine.KeyCode
---@field Joystick6Button18 UnityEngine.KeyCode
---@field Joystick6Button19 UnityEngine.KeyCode
---@field Joystick7Button0 UnityEngine.KeyCode
---@field Joystick7Button1 UnityEngine.KeyCode
---@field Joystick7Button2 UnityEngine.KeyCode
---@field Joystick7Button3 UnityEngine.KeyCode
---@field Joystick7Button4 UnityEngine.KeyCode
---@field Joystick7Button5 UnityEngine.KeyCode
---@field Joystick7Button6 UnityEngine.KeyCode
---@field Joystick7Button7 UnityEngine.KeyCode
---@field Joystick7Button8 UnityEngine.KeyCode
---@field Joystick7Button9 UnityEngine.KeyCode
---@field Joystick7Button10 UnityEngine.KeyCode
---@field Joystick7Button11 UnityEngine.KeyCode
---@field Joystick7Button12 UnityEngine.KeyCode
---@field Joystick7Button13 UnityEngine.KeyCode
---@field Joystick7Button14 UnityEngine.KeyCode
---@field Joystick7Button15 UnityEngine.KeyCode
---@field Joystick7Button16 UnityEngine.KeyCode
---@field Joystick7Button17 UnityEngine.KeyCode
---@field Joystick7Button18 UnityEngine.KeyCode
---@field Joystick7Button19 UnityEngine.KeyCode
---@field Joystick8Button0 UnityEngine.KeyCode
---@field Joystick8Button1 UnityEngine.KeyCode
---@field Joystick8Button2 UnityEngine.KeyCode
---@field Joystick8Button3 UnityEngine.KeyCode
---@field Joystick8Button4 UnityEngine.KeyCode
---@field Joystick8Button5 UnityEngine.KeyCode
---@field Joystick8Button6 UnityEngine.KeyCode
---@field Joystick8Button7 UnityEngine.KeyCode
---@field Joystick8Button8 UnityEngine.KeyCode
---@field Joystick8Button9 UnityEngine.KeyCode
---@field Joystick8Button10 UnityEngine.KeyCode
---@field Joystick8Button11 UnityEngine.KeyCode
---@field Joystick8Button12 UnityEngine.KeyCode
---@field Joystick8Button13 UnityEngine.KeyCode
---@field Joystick8Button14 UnityEngine.KeyCode
---@field Joystick8Button15 UnityEngine.KeyCode
---@field Joystick8Button16 UnityEngine.KeyCode
---@field Joystick8Button17 UnityEngine.KeyCode
---@field Joystick8Button18 UnityEngine.KeyCode
---@field Joystick8Button19 UnityEngine.KeyCode
UnityEngine.KeyCode = {}
---@alias CS.UnityEngine.KeyCode UnityEngine.KeyCode
CS.UnityEngine.KeyCode = UnityEngine.KeyCode


---@class UnityEngine.iPhoneScreenOrientation
---@field Unknown UnityEngine.iPhoneScreenOrientation
---@field Portrait UnityEngine.iPhoneScreenOrientation
---@field PortraitUpsideDown UnityEngine.iPhoneScreenOrientation
---@field LandscapeLeft UnityEngine.iPhoneScreenOrientation
---@field LandscapeRight UnityEngine.iPhoneScreenOrientation
---@field AutoRotation UnityEngine.iPhoneScreenOrientation
---@field Landscape UnityEngine.iPhoneScreenOrientation
UnityEngine.iPhoneScreenOrientation = {}
---@alias CS.UnityEngine.iPhoneScreenOrientation UnityEngine.iPhoneScreenOrientation
CS.UnityEngine.iPhoneScreenOrientation = UnityEngine.iPhoneScreenOrientation


---@class UnityEngine.iPhoneNetworkReachability
---@field NotReachable UnityEngine.iPhoneNetworkReachability
---@field ReachableViaCarrierDataNetwork UnityEngine.iPhoneNetworkReachability
UnityEngine.iPhoneNetworkReachability = {}
---@alias CS.UnityEngine.iPhoneNetworkReachability UnityEngine.iPhoneNetworkReachability
CS.UnityEngine.iPhoneNetworkReachability = UnityEngine.iPhoneNetworkReachability


---@class UnityEngine.iPhoneGeneration
---@field Unknown UnityEngine.iPhoneGeneration
---@field iPhone UnityEngine.iPhoneGeneration
---@field iPhone3G UnityEngine.iPhoneGeneration
---@field iPhone3GS UnityEngine.iPhoneGeneration
---@field iPodTouch1Gen UnityEngine.iPhoneGeneration
---@field iPodTouch2Gen UnityEngine.iPhoneGeneration
---@field iPodTouch3Gen UnityEngine.iPhoneGeneration
---@field iPad1Gen UnityEngine.iPhoneGeneration
---@field iPhone4 UnityEngine.iPhoneGeneration
---@field iPodTouch4Gen UnityEngine.iPhoneGeneration
---@field iPad2Gen UnityEngine.iPhoneGeneration
---@field iPhone4S UnityEngine.iPhoneGeneration
---@field iPad3Gen UnityEngine.iPhoneGeneration
---@field iPhone5 UnityEngine.iPhoneGeneration
---@field iPodTouch5Gen UnityEngine.iPhoneGeneration
---@field iPadMini1Gen UnityEngine.iPhoneGeneration
---@field iPad4Gen UnityEngine.iPhoneGeneration
---@field iPhone5C UnityEngine.iPhoneGeneration
---@field iPhone5S UnityEngine.iPhoneGeneration
---@field iPhoneUnknown UnityEngine.iPhoneGeneration
---@field iPadUnknown UnityEngine.iPhoneGeneration
---@field iPodTouchUnknown UnityEngine.iPhoneGeneration
UnityEngine.iPhoneGeneration = {}
---@alias CS.UnityEngine.iPhoneGeneration UnityEngine.iPhoneGeneration
CS.UnityEngine.iPhoneGeneration = UnityEngine.iPhoneGeneration


---@class UnityEngine.iPhoneSettings : System.Object
UnityEngine.iPhoneSettings = {}
---@alias CS.UnityEngine.iPhoneSettings UnityEngine.iPhoneSettings
CS.UnityEngine.iPhoneSettings = UnityEngine.iPhoneSettings

---@return UnityEngine.iPhoneSettings
function UnityEngine.iPhoneSettings.New() end

---@class UnityEngine.iPhoneTouchPhase
---@field Began UnityEngine.iPhoneTouchPhase
---@field Moved UnityEngine.iPhoneTouchPhase
---@field Stationary UnityEngine.iPhoneTouchPhase
---@field Ended UnityEngine.iPhoneTouchPhase
---@field Canceled UnityEngine.iPhoneTouchPhase
UnityEngine.iPhoneTouchPhase = {}
---@alias CS.UnityEngine.iPhoneTouchPhase UnityEngine.iPhoneTouchPhase
CS.UnityEngine.iPhoneTouchPhase = UnityEngine.iPhoneTouchPhase


---@class UnityEngine.iPhoneTouch : System.ValueType
---@field fingerId number
---@field position UnityEngine.Vector2
---@field deltaPosition UnityEngine.Vector2
---@field deltaTime number
---@field tapCount number
---@field phase UnityEngine.iPhoneTouchPhase
UnityEngine.iPhoneTouch = {}
---@alias CS.UnityEngine.iPhoneTouch UnityEngine.iPhoneTouch
CS.UnityEngine.iPhoneTouch = UnityEngine.iPhoneTouch


---@class UnityEngine.iPhoneMovieControlMode
---@field Full UnityEngine.iPhoneMovieControlMode
---@field Minimal UnityEngine.iPhoneMovieControlMode
---@field Hidden UnityEngine.iPhoneMovieControlMode
UnityEngine.iPhoneMovieControlMode = {}
---@alias CS.UnityEngine.iPhoneMovieControlMode UnityEngine.iPhoneMovieControlMode
CS.UnityEngine.iPhoneMovieControlMode = UnityEngine.iPhoneMovieControlMode


---@class UnityEngine.iPhoneMovieScalingMode
---@field None UnityEngine.iPhoneMovieScalingMode
---@field AspectFit UnityEngine.iPhoneMovieScalingMode
---@field AspectFill UnityEngine.iPhoneMovieScalingMode
---@field Fill UnityEngine.iPhoneMovieScalingMode
UnityEngine.iPhoneMovieScalingMode = {}
---@alias CS.UnityEngine.iPhoneMovieScalingMode UnityEngine.iPhoneMovieScalingMode
CS.UnityEngine.iPhoneMovieScalingMode = UnityEngine.iPhoneMovieScalingMode


---@class UnityEngine.iPhoneUtils : System.Object
UnityEngine.iPhoneUtils = {}
---@alias CS.UnityEngine.iPhoneUtils UnityEngine.iPhoneUtils
CS.UnityEngine.iPhoneUtils = UnityEngine.iPhoneUtils

---@return UnityEngine.iPhoneUtils
function UnityEngine.iPhoneUtils.New() end

---@class UnityEngine.iPhoneKeyboardType
---@field Default UnityEngine.iPhoneKeyboardType
---@field ASCIICapable UnityEngine.iPhoneKeyboardType
---@field NumbersAndPunctuation UnityEngine.iPhoneKeyboardType
---@field URL UnityEngine.iPhoneKeyboardType
---@field NumberPad UnityEngine.iPhoneKeyboardType
---@field PhonePad UnityEngine.iPhoneKeyboardType
---@field NamePhonePad UnityEngine.iPhoneKeyboardType
---@field EmailAddress UnityEngine.iPhoneKeyboardType
UnityEngine.iPhoneKeyboardType = {}
---@alias CS.UnityEngine.iPhoneKeyboardType UnityEngine.iPhoneKeyboardType
CS.UnityEngine.iPhoneKeyboardType = UnityEngine.iPhoneKeyboardType


---@class UnityEngine.iPhoneKeyboard : System.Object
---@field hideInput boolean
---@field area UnityEngine.Rect
---@field visible boolean
---@field text string
---@field active boolean
---@field done boolean
UnityEngine.iPhoneKeyboard = {}
---@alias CS.UnityEngine.iPhoneKeyboard UnityEngine.iPhoneKeyboard
CS.UnityEngine.iPhoneKeyboard = UnityEngine.iPhoneKeyboard

---@return UnityEngine.iPhoneKeyboard
function UnityEngine.iPhoneKeyboard.New() end

---@class UnityEngine.iPhoneAccelerationEvent : System.ValueType
---@field acceleration UnityEngine.Vector3
---@field deltaTime number
UnityEngine.iPhoneAccelerationEvent = {}
---@alias CS.UnityEngine.iPhoneAccelerationEvent UnityEngine.iPhoneAccelerationEvent
CS.UnityEngine.iPhoneAccelerationEvent = UnityEngine.iPhoneAccelerationEvent


---@class UnityEngine.iPhoneOrientation
---@field Unknown UnityEngine.iPhoneOrientation
---@field Portrait UnityEngine.iPhoneOrientation
---@field PortraitUpsideDown UnityEngine.iPhoneOrientation
---@field LandscapeLeft UnityEngine.iPhoneOrientation
---@field LandscapeRight UnityEngine.iPhoneOrientation
---@field FaceUp UnityEngine.iPhoneOrientation
---@field FaceDown UnityEngine.iPhoneOrientation
UnityEngine.iPhoneOrientation = {}
---@alias CS.UnityEngine.iPhoneOrientation UnityEngine.iPhoneOrientation
CS.UnityEngine.iPhoneOrientation = UnityEngine.iPhoneOrientation


---@class UnityEngine.iPhoneInput : System.Object
---@field accelerationEvents UnityEngine.iPhoneAccelerationEvent[]
---@field touches UnityEngine.iPhoneTouch[]
---@field touchCount number
---@field multiTouchEnabled boolean
---@field accelerationEventCount number
---@field acceleration UnityEngine.Vector3
UnityEngine.iPhoneInput = {}
---@alias CS.UnityEngine.iPhoneInput UnityEngine.iPhoneInput
CS.UnityEngine.iPhoneInput = UnityEngine.iPhoneInput

---@return UnityEngine.iPhoneInput
function UnityEngine.iPhoneInput.New() end
---@param index number
---@return UnityEngine.iPhoneTouch
function UnityEngine.iPhoneInput.GetTouch(index) end
---@param index number
---@return UnityEngine.iPhoneAccelerationEvent
function UnityEngine.iPhoneInput.GetAccelerationEvent(index) end

---@class UnityEngine.iPhone : System.Object
---@field generation UnityEngine.iPhoneGeneration
---@field vendorIdentifier string
---@field advertisingIdentifier string
---@field advertisingTrackingEnabled boolean
UnityEngine.iPhone = {}
---@alias CS.UnityEngine.iPhone UnityEngine.iPhone
CS.UnityEngine.iPhone = UnityEngine.iPhone

---@return UnityEngine.iPhone
function UnityEngine.iPhone.New() end
---@param path string
function UnityEngine.iPhone.SetNoBackupFlag(path) end
---@param path string
function UnityEngine.iPhone.ResetNoBackupFlag(path) end

---@class UnityEngine.iOSActivityIndicatorStyle
---@field DontShow UnityEngine.iOSActivityIndicatorStyle
---@field WhiteLarge UnityEngine.iOSActivityIndicatorStyle
---@field White UnityEngine.iOSActivityIndicatorStyle
---@field Gray UnityEngine.iOSActivityIndicatorStyle
UnityEngine.iOSActivityIndicatorStyle = {}
---@alias CS.UnityEngine.iOSActivityIndicatorStyle UnityEngine.iOSActivityIndicatorStyle
CS.UnityEngine.iOSActivityIndicatorStyle = UnityEngine.iOSActivityIndicatorStyle


---@class UnityEngine.ADBannerView : System.Object
---@field loaded boolean
---@field visible boolean
---@field layout UnityEngine.ADBannerView.Layout
---@field position UnityEngine.Vector2
---@field size UnityEngine.Vector2
UnityEngine.ADBannerView = {}
---@alias CS.UnityEngine.ADBannerView UnityEngine.ADBannerView
CS.UnityEngine.ADBannerView = UnityEngine.ADBannerView

---@param type UnityEngine.ADBannerView.Type
---@param layout UnityEngine.ADBannerView.Layout
---@return UnityEngine.ADBannerView
function UnityEngine.ADBannerView.New(type, layout) end
---@param type UnityEngine.ADBannerView.Type
---@return boolean
function UnityEngine.ADBannerView.IsAvailable(type) end

---@class UnityEngine.ADBannerView.Layout
---@field Top UnityEngine.ADBannerView.Layout
---@field Bottom UnityEngine.ADBannerView.Layout
---@field TopLeft UnityEngine.ADBannerView.Layout
---@field TopRight UnityEngine.ADBannerView.Layout
---@field TopCenter UnityEngine.ADBannerView.Layout
---@field BottomLeft UnityEngine.ADBannerView.Layout
---@field BottomRight UnityEngine.ADBannerView.Layout
---@field BottomCenter UnityEngine.ADBannerView.Layout
---@field CenterLeft UnityEngine.ADBannerView.Layout
---@field CenterRight UnityEngine.ADBannerView.Layout
---@field Center UnityEngine.ADBannerView.Layout
---@field Manual UnityEngine.ADBannerView.Layout
UnityEngine.ADBannerView.Layout = {}
---@alias CS.UnityEngine.ADBannerView.Layout UnityEngine.ADBannerView.Layout
CS.UnityEngine.ADBannerView.Layout = UnityEngine.ADBannerView.Layout


---@class UnityEngine.ADBannerView.Type
---@field Banner UnityEngine.ADBannerView.Type
---@field MediumRect UnityEngine.ADBannerView.Type
UnityEngine.ADBannerView.Type = {}
---@alias CS.UnityEngine.ADBannerView.Type UnityEngine.ADBannerView.Type
CS.UnityEngine.ADBannerView.Type = UnityEngine.ADBannerView.Type


---@class UnityEngine.ADBannerView.BannerWasClickedDelegate : System.MulticastDelegate
UnityEngine.ADBannerView.BannerWasClickedDelegate = {}
---@alias CS.UnityEngine.ADBannerView.BannerWasClickedDelegate UnityEngine.ADBannerView.BannerWasClickedDelegate
CS.UnityEngine.ADBannerView.BannerWasClickedDelegate = UnityEngine.ADBannerView.BannerWasClickedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ADBannerView.BannerWasClickedDelegate
function UnityEngine.ADBannerView.BannerWasClickedDelegate.New(object, method) end
function UnityEngine.ADBannerView.BannerWasClickedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.ADBannerView.BannerWasClickedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.ADBannerView.BannerWasClickedDelegate:EndInvoke(result) end

---@class UnityEngine.ADBannerView.BannerWasLoadedDelegate : System.MulticastDelegate
UnityEngine.ADBannerView.BannerWasLoadedDelegate = {}
---@alias CS.UnityEngine.ADBannerView.BannerWasLoadedDelegate UnityEngine.ADBannerView.BannerWasLoadedDelegate
CS.UnityEngine.ADBannerView.BannerWasLoadedDelegate = UnityEngine.ADBannerView.BannerWasLoadedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ADBannerView.BannerWasLoadedDelegate
function UnityEngine.ADBannerView.BannerWasLoadedDelegate.New(object, method) end
function UnityEngine.ADBannerView.BannerWasLoadedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.ADBannerView.BannerWasLoadedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.ADBannerView.BannerWasLoadedDelegate:EndInvoke(result) end

---@class UnityEngine.ADInterstitialAd : System.Object
---@field isAvailable boolean
---@field loaded boolean
UnityEngine.ADInterstitialAd = {}
---@alias CS.UnityEngine.ADInterstitialAd UnityEngine.ADInterstitialAd
CS.UnityEngine.ADInterstitialAd = UnityEngine.ADInterstitialAd

---@overload fun(autoReload: boolean) : UnityEngine.ADInterstitialAd
---@return UnityEngine.ADInterstitialAd
function UnityEngine.ADInterstitialAd.New() end
function UnityEngine.ADInterstitialAd:Show() end
function UnityEngine.ADInterstitialAd:ReloadAd() end

---@class UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate : System.MulticastDelegate
UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate = {}
---@alias CS.UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate
CS.UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate = UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate
function UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate.New(object, method) end
function UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.ADInterstitialAd.InterstitialWasLoadedDelegate:EndInvoke(result) end

---@class UnityEngine.ILogger
---@field logHandler UnityEngine.ILogHandler
---@field logEnabled boolean
---@field filterLogType UnityEngine.LogType
UnityEngine.ILogger = {}
---@alias CS.UnityEngine.ILogger UnityEngine.ILogger
CS.UnityEngine.ILogger = UnityEngine.ILogger

---@param logType UnityEngine.LogType
---@return boolean
function UnityEngine.ILogger:IsLogTypeAllowed(logType) end
---@overload fun(self: UnityEngine.ILogger, logType: UnityEngine.LogType, message: System.Object)
---@overload fun(self: UnityEngine.ILogger, logType: UnityEngine.LogType, message: System.Object, context: UnityEngine.Object)
---@overload fun(self: UnityEngine.ILogger, logType: UnityEngine.LogType, tag: string, message: System.Object)
---@overload fun(self: UnityEngine.ILogger, logType: UnityEngine.LogType, tag: string, message: System.Object, context: UnityEngine.Object)
---@overload fun(self: UnityEngine.ILogger, message: System.Object)
---@overload fun(self: UnityEngine.ILogger, tag: string, message: System.Object)
---@param tag string
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.ILogger:Log(tag, message, context) end
---@overload fun(self: UnityEngine.ILogger, tag: string, message: System.Object)
---@param tag string
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.ILogger:LogWarning(tag, message, context) end
---@overload fun(self: UnityEngine.ILogger, tag: string, message: System.Object)
---@param tag string
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.ILogger:LogError(tag, message, context) end
---@param logType UnityEngine.LogType
---@param format string
---@param args System.Object[]
function UnityEngine.ILogger:LogFormat(logType, format, args) end
---@param exception System.Exception
function UnityEngine.ILogger:LogException(exception) end

---@class UnityEngine.ILogHandler
UnityEngine.ILogHandler = {}
---@alias CS.UnityEngine.ILogHandler UnityEngine.ILogHandler
CS.UnityEngine.ILogHandler = UnityEngine.ILogHandler

---@param logType UnityEngine.LogType
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.ILogHandler:LogFormat(logType, context, format, args) end
---@param exception System.Exception
---@param context UnityEngine.Object
function UnityEngine.ILogHandler:LogException(exception, context) end

---@class UnityEngine.Logger : System.Object
---@field logHandler UnityEngine.ILogHandler
---@field logEnabled boolean
---@field filterLogType UnityEngine.LogType
UnityEngine.Logger = {}
---@alias CS.UnityEngine.Logger UnityEngine.Logger
CS.UnityEngine.Logger = UnityEngine.Logger

---@param logHandler UnityEngine.ILogHandler
---@return UnityEngine.Logger
function UnityEngine.Logger.New(logHandler) end
---@param logType UnityEngine.LogType
---@return boolean
function UnityEngine.Logger:IsLogTypeAllowed(logType) end
---@overload fun(self: UnityEngine.Logger, logType: UnityEngine.LogType, message: System.Object)
---@overload fun(self: UnityEngine.Logger, logType: UnityEngine.LogType, message: System.Object, context: UnityEngine.Object)
---@overload fun(self: UnityEngine.Logger, logType: UnityEngine.LogType, tag: string, message: System.Object)
---@overload fun(self: UnityEngine.Logger, logType: UnityEngine.LogType, tag: string, message: System.Object, context: UnityEngine.Object)
---@overload fun(self: UnityEngine.Logger, message: System.Object)
---@overload fun(self: UnityEngine.Logger, tag: string, message: System.Object)
---@param tag string
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Logger:Log(tag, message, context) end
---@overload fun(self: UnityEngine.Logger, tag: string, message: System.Object)
---@param tag string
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Logger:LogWarning(tag, message, context) end
---@overload fun(self: UnityEngine.Logger, tag: string, message: System.Object)
---@param tag string
---@param message System.Object
---@param context UnityEngine.Object
function UnityEngine.Logger:LogError(tag, message, context) end
---@overload fun(self: UnityEngine.Logger, exception: System.Exception)
---@param exception System.Exception
---@param context UnityEngine.Object
function UnityEngine.Logger:LogException(exception, context) end
---@overload fun(self: UnityEngine.Logger, logType: UnityEngine.LogType, format: string, args: System.Object[])
---@param logType UnityEngine.LogType
---@param context UnityEngine.Object
---@param format string
---@param args System.Object[]
function UnityEngine.Logger:LogFormat(logType, context, format, args) end

---@class UnityEngine.UnityLogWriter : System.IO.TextWriter
---@field Encoding System.Text.Encoding
UnityEngine.UnityLogWriter = {}
---@alias CS.UnityEngine.UnityLogWriter UnityEngine.UnityLogWriter
CS.UnityEngine.UnityLogWriter = UnityEngine.UnityLogWriter

---@return UnityEngine.UnityLogWriter
function UnityEngine.UnityLogWriter.New() end
---@param s string
function UnityEngine.UnityLogWriter.WriteStringToUnityLog(s) end
function UnityEngine.UnityLogWriter.Init() end
---@overload fun(self: UnityEngine.UnityLogWriter, value: System.Char)
---@overload fun(self: UnityEngine.UnityLogWriter, s: string)
---@param buffer System.Char[]
---@param index number
---@param count number
function UnityEngine.UnityLogWriter:Write(buffer, index, count) end

---@class UnityEngine.Color : System.ValueType
---@field r number
---@field g number
---@field b number
---@field a number
---@field red UnityEngine.Color
---@field green UnityEngine.Color
---@field blue UnityEngine.Color
---@field white UnityEngine.Color
---@field black UnityEngine.Color
---@field yellow UnityEngine.Color
---@field cyan UnityEngine.Color
---@field magenta UnityEngine.Color
---@field gray UnityEngine.Color
---@field grey UnityEngine.Color
---@field clear UnityEngine.Color
---@field grayscale number
---@field linear UnityEngine.Color
---@field gamma UnityEngine.Color
---@field maxColorComponent number
---@field Item number
UnityEngine.Color = {}
---@alias CS.UnityEngine.Color UnityEngine.Color
CS.UnityEngine.Color = UnityEngine.Color

---@overload fun(r: number, g: number, b: number, a: number) : UnityEngine.Color
---@param r number
---@param g number
---@param b number
---@return UnityEngine.Color
function UnityEngine.Color.New(r, g, b) end
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t number
---@return UnityEngine.Color
function UnityEngine.Color.Lerp(a, b, t) end
---@param a UnityEngine.Color
---@param b UnityEngine.Color
---@param t number
---@return UnityEngine.Color
function UnityEngine.Color.LerpUnclamped(a, b, t) end
---@param rgbColor UnityEngine.Color
---@param out_H number
---@param out_S number
---@param out_V number
---@return ,number,number,number
function UnityEngine.Color.RGBToHSV(rgbColor, out_H, out_S, out_V) end
---@overload fun(H: number, S: number, V: number) : UnityEngine.Color
---@param H number
---@param S number
---@param V number
---@param hdr boolean
---@return UnityEngine.Color
function UnityEngine.Color.HSVToRGB(H, S, V, hdr) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Color, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Color:ToString(format, formatProvider) end
---@return number
function UnityEngine.Color:GetHashCode() end
---@overload fun(self: UnityEngine.Color, other: System.Object) : boolean
---@param other UnityEngine.Color
---@return boolean
function UnityEngine.Color:Equals(other) end
---@param c2 UnityEngine.Color
---@return UnityEngine.Color
function UnityEngine.Color:MinAlpha(c2) end

---@class UnityEngine.Color32 : System.ValueType
---@field r number
---@field g number
---@field b number
---@field a number
---@field Item number
UnityEngine.Color32 = {}
---@alias CS.UnityEngine.Color32 UnityEngine.Color32
CS.UnityEngine.Color32 = UnityEngine.Color32

---@param r number
---@param g number
---@param b number
---@param a number
---@return UnityEngine.Color32
function UnityEngine.Color32.New(r, g, b, a) end
---@param a UnityEngine.Color32
---@param b UnityEngine.Color32
---@param t number
---@return UnityEngine.Color32
function UnityEngine.Color32.Lerp(a, b, t) end
---@param a UnityEngine.Color32
---@param b UnityEngine.Color32
---@param t number
---@return UnityEngine.Color32
function UnityEngine.Color32.LerpUnclamped(a, b, t) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Color32, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Color32:ToString(format, formatProvider) end

---@class UnityEngine.ColorUtility : System.Object
UnityEngine.ColorUtility = {}
---@alias CS.UnityEngine.ColorUtility UnityEngine.ColorUtility
CS.UnityEngine.ColorUtility = UnityEngine.ColorUtility

---@return UnityEngine.ColorUtility
function UnityEngine.ColorUtility.New() end
---@param htmlString string
---@param out_color UnityEngine.Color
---@return boolean,UnityEngine.Color
function UnityEngine.ColorUtility.TryParseHtmlString(htmlString, out_color) end
---@param color UnityEngine.Color
---@return string
function UnityEngine.ColorUtility.ToHtmlStringRGB(color) end
---@param color UnityEngine.Color
---@return string
function UnityEngine.ColorUtility.ToHtmlStringRGBA(color) end

---@class UnityEngine.GradientColorKey : System.ValueType
---@field color UnityEngine.Color
---@field time number
UnityEngine.GradientColorKey = {}
---@alias CS.UnityEngine.GradientColorKey UnityEngine.GradientColorKey
CS.UnityEngine.GradientColorKey = UnityEngine.GradientColorKey

---@param col UnityEngine.Color
---@param time number
---@return UnityEngine.GradientColorKey
function UnityEngine.GradientColorKey.New(col, time) end

---@class UnityEngine.GradientAlphaKey : System.ValueType
---@field alpha number
---@field time number
UnityEngine.GradientAlphaKey = {}
---@alias CS.UnityEngine.GradientAlphaKey UnityEngine.GradientAlphaKey
CS.UnityEngine.GradientAlphaKey = UnityEngine.GradientAlphaKey

---@param alpha number
---@param time number
---@return UnityEngine.GradientAlphaKey
function UnityEngine.GradientAlphaKey.New(alpha, time) end

---@class UnityEngine.GradientMode
---@field Blend UnityEngine.GradientMode
---@field Fixed UnityEngine.GradientMode
---@field PerceptualBlend UnityEngine.GradientMode
UnityEngine.GradientMode = {}
---@alias CS.UnityEngine.GradientMode UnityEngine.GradientMode
CS.UnityEngine.GradientMode = UnityEngine.GradientMode


---@class UnityEngine.Gradient : System.Object
---@field colorKeys UnityEngine.GradientColorKey[]
---@field alphaKeys UnityEngine.GradientAlphaKey[]
---@field mode UnityEngine.GradientMode
---@field colorSpace UnityEngine.ColorSpace
UnityEngine.Gradient = {}
---@alias CS.UnityEngine.Gradient UnityEngine.Gradient
CS.UnityEngine.Gradient = UnityEngine.Gradient

---@return UnityEngine.Gradient
function UnityEngine.Gradient.New() end
---@param time number
---@return UnityEngine.Color
function UnityEngine.Gradient:Evaluate(time) end
---@param colorKeys UnityEngine.GradientColorKey[]
---@param alphaKeys UnityEngine.GradientAlphaKey[]
function UnityEngine.Gradient:SetKeys(colorKeys, alphaKeys) end
---@overload fun(self: UnityEngine.Gradient, o: System.Object) : boolean
---@param other UnityEngine.Gradient
---@return boolean
function UnityEngine.Gradient:Equals(other) end
---@return number
function UnityEngine.Gradient:GetHashCode() end

---@class UnityEngine.FrustumPlanes : System.ValueType
---@field left number
---@field right number
---@field bottom number
---@field top number
---@field zNear number
---@field zFar number
UnityEngine.FrustumPlanes = {}
---@alias CS.UnityEngine.FrustumPlanes UnityEngine.FrustumPlanes
CS.UnityEngine.FrustumPlanes = UnityEngine.FrustumPlanes


---@class UnityEngine.Matrix4x4 : System.ValueType
---@field m00 number
---@field m10 number
---@field m20 number
---@field m30 number
---@field m01 number
---@field m11 number
---@field m21 number
---@field m31 number
---@field m02 number
---@field m12 number
---@field m22 number
---@field m32 number
---@field m03 number
---@field m13 number
---@field m23 number
---@field m33 number
---@field zero UnityEngine.Matrix4x4
---@field identity UnityEngine.Matrix4x4
---@field rotation UnityEngine.Quaternion
---@field lossyScale UnityEngine.Vector3
---@field isIdentity boolean
---@field determinant number
---@field decomposeProjection UnityEngine.FrustumPlanes
---@field inverse UnityEngine.Matrix4x4
---@field transpose UnityEngine.Matrix4x4
---@field Item number
---@field Item number
UnityEngine.Matrix4x4 = {}
---@alias CS.UnityEngine.Matrix4x4 UnityEngine.Matrix4x4
CS.UnityEngine.Matrix4x4 = UnityEngine.Matrix4x4

---@param column0 UnityEngine.Vector4
---@param column1 UnityEngine.Vector4
---@param column2 UnityEngine.Vector4
---@param column3 UnityEngine.Vector4
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.New(column0, column1, column2, column3) end
---@param m UnityEngine.Matrix4x4
---@return number
function UnityEngine.Matrix4x4.Determinant(m) end
---@param pos UnityEngine.Vector3
---@param q UnityEngine.Quaternion
---@param s UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.TRS(pos, q, s) end
---@param input UnityEngine.Matrix4x4
---@param ref_result UnityEngine.Matrix4x4
---@return boolean,UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Inverse3DAffine(input, ref_result) end
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Inverse(m) end
---@param m UnityEngine.Matrix4x4
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Transpose(m) end
---@param left number
---@param right number
---@param bottom number
---@param top number
---@param zNear number
---@param zFar number
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Ortho(left, right, bottom, top, zNear, zFar) end
---@param fov number
---@param aspect number
---@param zNear number
---@param zFar number
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Perspective(fov, aspect, zNear, zFar) end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param up UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.LookAt(from, to, up) end
---@overload fun(left: number, right: number, bottom: number, top: number, zNear: number, zFar: number) : UnityEngine.Matrix4x4
---@param fp UnityEngine.FrustumPlanes
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Frustum(fp) end
---@param vector UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Scale(vector) end
---@param vector UnityEngine.Vector3
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Translate(vector) end
---@param q UnityEngine.Quaternion
---@return UnityEngine.Matrix4x4
function UnityEngine.Matrix4x4.Rotate(q) end
---@return boolean
function UnityEngine.Matrix4x4:ValidTRS() end
---@param pos UnityEngine.Vector3
---@param q UnityEngine.Quaternion
---@param s UnityEngine.Vector3
function UnityEngine.Matrix4x4:SetTRS(pos, q, s) end
---@return number
function UnityEngine.Matrix4x4:GetHashCode() end
---@overload fun(self: UnityEngine.Matrix4x4, other: System.Object) : boolean
---@param other UnityEngine.Matrix4x4
---@return boolean
function UnityEngine.Matrix4x4:Equals(other) end
---@param index number
---@return UnityEngine.Vector4
function UnityEngine.Matrix4x4:GetColumn(index) end
---@param index number
---@return UnityEngine.Vector4
function UnityEngine.Matrix4x4:GetRow(index) end
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:GetPosition() end
---@param index number
---@param column UnityEngine.Vector4
function UnityEngine.Matrix4x4:SetColumn(index, column) end
---@param index number
---@param row UnityEngine.Vector4
function UnityEngine.Matrix4x4:SetRow(index, row) end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:MultiplyPoint(point) end
---@param point UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:MultiplyPoint3x4(point) end
---@param vector UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Matrix4x4:MultiplyVector(vector) end
---@param plane UnityEngine.Plane
---@return UnityEngine.Plane
function UnityEngine.Matrix4x4:TransformPlane(plane) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Matrix4x4, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Matrix4x4:ToString(format, formatProvider) end

---@class UnityEngine.Vector3 : System.ValueType
---@field kEpsilon number
---@field kEpsilonNormalSqrt number
---@field x number
---@field y number
---@field z number
---@field zero UnityEngine.Vector3
---@field one UnityEngine.Vector3
---@field forward UnityEngine.Vector3
---@field back UnityEngine.Vector3
---@field up UnityEngine.Vector3
---@field down UnityEngine.Vector3
---@field left UnityEngine.Vector3
---@field right UnityEngine.Vector3
---@field positiveInfinity UnityEngine.Vector3
---@field negativeInfinity UnityEngine.Vector3
---@field Item number
---@field normalized UnityEngine.Vector3
---@field magnitude number
---@field sqrMagnitude number
UnityEngine.Vector3 = {}
---@alias CS.UnityEngine.Vector3 UnityEngine.Vector3
CS.UnityEngine.Vector3 = UnityEngine.Vector3

---@overload fun(x: number, y: number, z: number) : UnityEngine.Vector3
---@param x number
---@param y number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.New(x, y) end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Slerp(a, b, t) end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.SlerpUnclamped(a, b, t) end
---@overload fun(ref_normal: UnityEngine.Vector3, ref_tangent: UnityEngine.Vector3) : UnityEngine.Vector3, UnityEngine.Vector3
---@param ref_normal UnityEngine.Vector3
---@param ref_tangent UnityEngine.Vector3
---@param ref_binormal UnityEngine.Vector3
---@return ,UnityEngine.Vector3,UnityEngine.Vector3,UnityEngine.Vector3
function UnityEngine.Vector3.OrthoNormalize(ref_normal, ref_tangent, ref_binormal) end
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxRadiansDelta number
---@param maxMagnitudeDelta number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.RotateTowards(current, target, maxRadiansDelta, maxMagnitudeDelta) end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Lerp(a, b, t) end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@param t number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.LerpUnclamped(a, b, t) end
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param maxDistanceDelta number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.MoveTowards(current, target, maxDistanceDelta) end
---@overload fun(current: UnityEngine.Vector3, target: UnityEngine.Vector3, ref_currentVelocity: UnityEngine.Vector3, smoothTime: number, maxSpeed: number) : UnityEngine.Vector3, UnityEngine.Vector3
---@overload fun(current: UnityEngine.Vector3, target: UnityEngine.Vector3, ref_currentVelocity: UnityEngine.Vector3, smoothTime: number) : UnityEngine.Vector3, UnityEngine.Vector3
---@param current UnityEngine.Vector3
---@param target UnityEngine.Vector3
---@param ref_currentVelocity UnityEngine.Vector3
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return UnityEngine.Vector3,UnityEngine.Vector3
function UnityEngine.Vector3.SmoothDamp(current, target, ref_currentVelocity, smoothTime, maxSpeed, deltaTime) end
---@overload fun(a: UnityEngine.Vector3, b: UnityEngine.Vector3) : UnityEngine.Vector3
---@param scale UnityEngine.Vector3
function UnityEngine.Vector3:Scale(scale) end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Cross(lhs, rhs) end
---@param inDirection UnityEngine.Vector3
---@param inNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Reflect(inDirection, inNormal) end
---@overload fun(value: UnityEngine.Vector3) : UnityEngine.Vector3
function UnityEngine.Vector3:Normalize() end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return number
function UnityEngine.Vector3.Dot(lhs, rhs) end
---@param vector UnityEngine.Vector3
---@param onNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Project(vector, onNormal) end
---@param vector UnityEngine.Vector3
---@param planeNormal UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.ProjectOnPlane(vector, planeNormal) end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@return number
function UnityEngine.Vector3.Angle(from, to) end
---@param from UnityEngine.Vector3
---@param to UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@return number
function UnityEngine.Vector3.SignedAngle(from, to, axis) end
---@param a UnityEngine.Vector3
---@param b UnityEngine.Vector3
---@return number
function UnityEngine.Vector3.Distance(a, b) end
---@param vector UnityEngine.Vector3
---@param maxLength number
---@return UnityEngine.Vector3
function UnityEngine.Vector3.ClampMagnitude(vector, maxLength) end
---@param vector UnityEngine.Vector3
---@return number
function UnityEngine.Vector3.Magnitude(vector) end
---@param vector UnityEngine.Vector3
---@return number
function UnityEngine.Vector3.SqrMagnitude(vector) end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Min(lhs, rhs) end
---@param lhs UnityEngine.Vector3
---@param rhs UnityEngine.Vector3
---@return UnityEngine.Vector3
function UnityEngine.Vector3.Max(lhs, rhs) end
---@param newX number
---@param newY number
---@param newZ number
function UnityEngine.Vector3:Set(newX, newY, newZ) end
---@return number
function UnityEngine.Vector3:GetHashCode() end
---@overload fun(self: UnityEngine.Vector3, other: System.Object) : boolean
---@param other UnityEngine.Vector3
---@return boolean
function UnityEngine.Vector3:Equals(other) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Vector3, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Vector3:ToString(format, formatProvider) end

---@class UnityEngine.Quaternion : System.ValueType
---@field kEpsilon number
---@field x number
---@field y number
---@field z number
---@field w number
---@field identity UnityEngine.Quaternion
---@field Item number
---@field eulerAngles UnityEngine.Vector3
---@field normalized UnityEngine.Quaternion
UnityEngine.Quaternion = {}
---@alias CS.UnityEngine.Quaternion UnityEngine.Quaternion
CS.UnityEngine.Quaternion = UnityEngine.Quaternion

---@param x number
---@param y number
---@param z number
---@param w number
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.New(x, y, z, w) end
---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.FromToRotation(fromDirection, toDirection) end
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Inverse(rotation) end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Slerp(a, b, t) end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.SlerpUnclamped(a, b, t) end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Lerp(a, b, t) end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@param t number
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.LerpUnclamped(a, b, t) end
---@param angle number
---@param axis UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.AngleAxis(angle, axis) end
---@overload fun(forward: UnityEngine.Vector3, upwards: UnityEngine.Vector3) : UnityEngine.Quaternion
---@param forward UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.LookRotation(forward) end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return number
function UnityEngine.Quaternion.Dot(a, b) end
---@param a UnityEngine.Quaternion
---@param b UnityEngine.Quaternion
---@return number
function UnityEngine.Quaternion.Angle(a, b) end
---@overload fun(x: number, y: number, z: number) : UnityEngine.Quaternion
---@param euler UnityEngine.Vector3
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.Euler(euler) end
---@param from UnityEngine.Quaternion
---@param to UnityEngine.Quaternion
---@param maxDegreesDelta number
---@return UnityEngine.Quaternion
function UnityEngine.Quaternion.RotateTowards(from, to, maxDegreesDelta) end
---@overload fun(q: UnityEngine.Quaternion) : UnityEngine.Quaternion
function UnityEngine.Quaternion:Normalize() end
---@param newX number
---@param newY number
---@param newZ number
---@param newW number
function UnityEngine.Quaternion:Set(newX, newY, newZ, newW) end
---@overload fun(self: UnityEngine.Quaternion, view: UnityEngine.Vector3)
---@param view UnityEngine.Vector3
---@param up UnityEngine.Vector3
function UnityEngine.Quaternion:SetLookRotation(view, up) end
---@param out_angle number
---@param out_axis UnityEngine.Vector3
---@return ,number,UnityEngine.Vector3
function UnityEngine.Quaternion:ToAngleAxis(out_angle, out_axis) end
---@param fromDirection UnityEngine.Vector3
---@param toDirection UnityEngine.Vector3
function UnityEngine.Quaternion:SetFromToRotation(fromDirection, toDirection) end
---@return number
function UnityEngine.Quaternion:GetHashCode() end
---@overload fun(self: UnityEngine.Quaternion, other: System.Object) : boolean
---@param other UnityEngine.Quaternion
---@return boolean
function UnityEngine.Quaternion:Equals(other) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Quaternion, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Quaternion:ToString(format, formatProvider) end
---@param ref_point UnityEngine.Vector2
---@return ,UnityEngine.Vector2
function UnityEngine.Quaternion:Multiply2D(ref_point) end

---@class UnityEngine.Mathf : System.ValueType
---@field PI number
---@field Infinity number
---@field NegativeInfinity number
---@field Deg2Rad number
---@field Rad2Deg number
---@field Epsilon number
UnityEngine.Mathf = {}
---@alias CS.UnityEngine.Mathf UnityEngine.Mathf
CS.UnityEngine.Mathf = UnityEngine.Mathf

---@param value number
---@return number
function UnityEngine.Mathf.ClosestPowerOfTwo(value) end
---@param value number
---@return boolean
function UnityEngine.Mathf.IsPowerOfTwo(value) end
---@param value number
---@return number
function UnityEngine.Mathf.NextPowerOfTwo(value) end
---@param value number
---@return number
function UnityEngine.Mathf.GammaToLinearSpace(value) end
---@param value number
---@return number
function UnityEngine.Mathf.LinearToGammaSpace(value) end
---@param kelvin number
---@return UnityEngine.Color
function UnityEngine.Mathf.CorrelatedColorTemperatureToRGB(kelvin) end
---@param val number
---@return number
function UnityEngine.Mathf.FloatToHalf(val) end
---@param val number
---@return number
function UnityEngine.Mathf.HalfToFloat(val) end
---@param x number
---@param y number
---@return number
function UnityEngine.Mathf.PerlinNoise(x, y) end
---@param x number
---@return number
function UnityEngine.Mathf.PerlinNoise1D(x) end
---@param f number
---@return number
function UnityEngine.Mathf.Sin(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Cos(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Tan(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Asin(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Acos(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Atan(f) end
---@param y number
---@param x number
---@return number
function UnityEngine.Mathf.Atan2(y, x) end
---@param f number
---@return number
function UnityEngine.Mathf.Sqrt(f) end
---@overload fun(f: number) : number
---@param value number
---@return number
function UnityEngine.Mathf.Abs(value) end
---@overload fun(a: number, b: number) : number
---@overload fun(values: System.Single[]) : number
---@overload fun(a: number, b: number) : number
---@param values System.Int32[]
---@return number
function UnityEngine.Mathf.Min(values) end
---@overload fun(a: number, b: number) : number
---@overload fun(values: System.Single[]) : number
---@overload fun(a: number, b: number) : number
---@param values System.Int32[]
---@return number
function UnityEngine.Mathf.Max(values) end
---@param f number
---@param p number
---@return number
function UnityEngine.Mathf.Pow(f, p) end
---@param power number
---@return number
function UnityEngine.Mathf.Exp(power) end
---@overload fun(f: number, p: number) : number
---@param f number
---@return number
function UnityEngine.Mathf.Log(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Log10(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Ceil(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Floor(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Round(f) end
---@param f number
---@return number
function UnityEngine.Mathf.CeilToInt(f) end
---@param f number
---@return number
function UnityEngine.Mathf.FloorToInt(f) end
---@param f number
---@return number
function UnityEngine.Mathf.RoundToInt(f) end
---@param f number
---@return number
function UnityEngine.Mathf.Sign(f) end
---@overload fun(value: number, min: number, max: number) : number
---@param value number
---@param min number
---@param max number
---@return number
function UnityEngine.Mathf.Clamp(value, min, max) end
---@param value number
---@return number
function UnityEngine.Mathf.Clamp01(value) end
---@param a number
---@param b number
---@param t number
---@return number
function UnityEngine.Mathf.Lerp(a, b, t) end
---@param a number
---@param b number
---@param t number
---@return number
function UnityEngine.Mathf.LerpUnclamped(a, b, t) end
---@param a number
---@param b number
---@param t number
---@return number
function UnityEngine.Mathf.LerpAngle(a, b, t) end
---@param current number
---@param target number
---@param maxDelta number
---@return number
function UnityEngine.Mathf.MoveTowards(current, target, maxDelta) end
---@param current number
---@param target number
---@param maxDelta number
---@return number
function UnityEngine.Mathf.MoveTowardsAngle(current, target, maxDelta) end
---@param from number
---@param to number
---@param t number
---@return number
function UnityEngine.Mathf.SmoothStep(from, to, t) end
---@param value number
---@param absmax number
---@param gamma number
---@return number
function UnityEngine.Mathf.Gamma(value, absmax, gamma) end
---@param a number
---@param b number
---@return boolean
function UnityEngine.Mathf.Approximately(a, b) end
---@overload fun(current: number, target: number, ref_currentVelocity: number, smoothTime: number, maxSpeed: number) : number, number
---@overload fun(current: number, target: number, ref_currentVelocity: number, smoothTime: number) : number, number
---@param current number
---@param target number
---@param ref_currentVelocity number
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return number,number
function UnityEngine.Mathf.SmoothDamp(current, target, ref_currentVelocity, smoothTime, maxSpeed, deltaTime) end
---@overload fun(current: number, target: number, ref_currentVelocity: number, smoothTime: number, maxSpeed: number) : number, number
---@overload fun(current: number, target: number, ref_currentVelocity: number, smoothTime: number) : number, number
---@param current number
---@param target number
---@param ref_currentVelocity number
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return number,number
function UnityEngine.Mathf.SmoothDampAngle(current, target, ref_currentVelocity, smoothTime, maxSpeed, deltaTime) end
---@param t number
---@param length number
---@return number
function UnityEngine.Mathf.Repeat(t, length) end
---@param t number
---@param length number
---@return number
function UnityEngine.Mathf.PingPong(t, length) end
---@param a number
---@param b number
---@param value number
---@return number
function UnityEngine.Mathf.InverseLerp(a, b, value) end
---@param current number
---@param target number
---@return number
function UnityEngine.Mathf.DeltaAngle(current, target) end

---@class UnityEngine.MethodImplOptionsEx : System.Object
---@field AggressiveInlining number
UnityEngine.MethodImplOptionsEx = {}
---@alias CS.UnityEngine.MethodImplOptionsEx UnityEngine.MethodImplOptionsEx
CS.UnityEngine.MethodImplOptionsEx = UnityEngine.MethodImplOptionsEx


---@class UnityEngine.Vector2 : System.ValueType
---@field kEpsilon number
---@field kEpsilonNormalSqrt number
---@field x number
---@field y number
---@field zero UnityEngine.Vector2
---@field one UnityEngine.Vector2
---@field up UnityEngine.Vector2
---@field down UnityEngine.Vector2
---@field left UnityEngine.Vector2
---@field right UnityEngine.Vector2
---@field positiveInfinity UnityEngine.Vector2
---@field negativeInfinity UnityEngine.Vector2
---@field Item number
---@field normalized UnityEngine.Vector2
---@field magnitude number
---@field sqrMagnitude number
UnityEngine.Vector2 = {}
---@alias CS.UnityEngine.Vector2 UnityEngine.Vector2
CS.UnityEngine.Vector2 = UnityEngine.Vector2

---@param x number
---@param y number
---@return UnityEngine.Vector2
function UnityEngine.Vector2.New(x, y) end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t number
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Lerp(a, b, t) end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@param t number
---@return UnityEngine.Vector2
function UnityEngine.Vector2.LerpUnclamped(a, b, t) end
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param maxDistanceDelta number
---@return UnityEngine.Vector2
function UnityEngine.Vector2.MoveTowards(current, target, maxDistanceDelta) end
---@overload fun(a: UnityEngine.Vector2, b: UnityEngine.Vector2) : UnityEngine.Vector2
---@param scale UnityEngine.Vector2
function UnityEngine.Vector2:Scale(scale) end
---@param inDirection UnityEngine.Vector2
---@param inNormal UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Reflect(inDirection, inNormal) end
---@param inDirection UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Perpendicular(inDirection) end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return number
function UnityEngine.Vector2.Dot(lhs, rhs) end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return number
function UnityEngine.Vector2.Angle(from, to) end
---@param from UnityEngine.Vector2
---@param to UnityEngine.Vector2
---@return number
function UnityEngine.Vector2.SignedAngle(from, to) end
---@param a UnityEngine.Vector2
---@param b UnityEngine.Vector2
---@return number
function UnityEngine.Vector2.Distance(a, b) end
---@param vector UnityEngine.Vector2
---@param maxLength number
---@return UnityEngine.Vector2
function UnityEngine.Vector2.ClampMagnitude(vector, maxLength) end
---@overload fun(a: UnityEngine.Vector2) : number
---@return number
function UnityEngine.Vector2:SqrMagnitude() end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Min(lhs, rhs) end
---@param lhs UnityEngine.Vector2
---@param rhs UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2.Max(lhs, rhs) end
---@overload fun(current: UnityEngine.Vector2, target: UnityEngine.Vector2, ref_currentVelocity: UnityEngine.Vector2, smoothTime: number, maxSpeed: number) : UnityEngine.Vector2, UnityEngine.Vector2
---@overload fun(current: UnityEngine.Vector2, target: UnityEngine.Vector2, ref_currentVelocity: UnityEngine.Vector2, smoothTime: number) : UnityEngine.Vector2, UnityEngine.Vector2
---@param current UnityEngine.Vector2
---@param target UnityEngine.Vector2
---@param ref_currentVelocity UnityEngine.Vector2
---@param smoothTime number
---@param maxSpeed number
---@param deltaTime number
---@return UnityEngine.Vector2,UnityEngine.Vector2
function UnityEngine.Vector2.SmoothDamp(current, target, ref_currentVelocity, smoothTime, maxSpeed, deltaTime) end
---@param newX number
---@param newY number
function UnityEngine.Vector2:Set(newX, newY) end
function UnityEngine.Vector2:Normalize() end
---@overload fun() : string
---@overload fun(self: UnityEngine.Vector2, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Vector2:ToString(format, formatProvider) end
---@return number
function UnityEngine.Vector2:GetHashCode() end
---@overload fun(self: UnityEngine.Vector2, other: System.Object) : boolean
---@param other UnityEngine.Vector2
---@return boolean
function UnityEngine.Vector2:Equals(other) end
---@param origin UnityEngine.Vector2
---@param scale UnityEngine.Vector2
---@return UnityEngine.Vector2
function UnityEngine.Vector2:ScaleAroundPoint(origin, scale) end

---@class UnityEngine.Vector2Int : System.ValueType
---@field zero UnityEngine.Vector2Int
---@field one UnityEngine.Vector2Int
---@field up UnityEngine.Vector2Int
---@field down UnityEngine.Vector2Int
---@field left UnityEngine.Vector2Int
---@field right UnityEngine.Vector2Int
---@field x number
---@field y number
---@field Item number
---@field magnitude number
---@field sqrMagnitude number
UnityEngine.Vector2Int = {}
---@alias CS.UnityEngine.Vector2Int UnityEngine.Vector2Int
CS.UnityEngine.Vector2Int = UnityEngine.Vector2Int

---@param x number
---@param y number
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.New(x, y) end
---@param a UnityEngine.Vector2Int
---@param b UnityEngine.Vector2Int
---@return number
function UnityEngine.Vector2Int.Distance(a, b) end
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.Min(lhs, rhs) end
---@param lhs UnityEngine.Vector2Int
---@param rhs UnityEngine.Vector2Int
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.Max(lhs, rhs) end
---@overload fun(a: UnityEngine.Vector2Int, b: UnityEngine.Vector2Int) : UnityEngine.Vector2Int
---@param scale UnityEngine.Vector2Int
function UnityEngine.Vector2Int:Scale(scale) end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.FloorToInt(v) end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.CeilToInt(v) end
---@param v UnityEngine.Vector2
---@return UnityEngine.Vector2Int
function UnityEngine.Vector2Int.RoundToInt(v) end
---@param x number
---@param y number
function UnityEngine.Vector2Int:Set(x, y) end
---@param min UnityEngine.Vector2Int
---@param max UnityEngine.Vector2Int
function UnityEngine.Vector2Int:Clamp(min, max) end
---@overload fun(self: UnityEngine.Vector2Int, other: System.Object) : boolean
---@param other UnityEngine.Vector2Int
---@return boolean
function UnityEngine.Vector2Int:Equals(other) end
---@return number
function UnityEngine.Vector2Int:GetHashCode() end
---@overload fun() : string
---@overload fun(self: UnityEngine.Vector2Int, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Vector2Int:ToString(format, formatProvider) end

---@class UnityEngine.Vector3Int : System.ValueType
---@field zero UnityEngine.Vector3Int
---@field one UnityEngine.Vector3Int
---@field up UnityEngine.Vector3Int
---@field down UnityEngine.Vector3Int
---@field left UnityEngine.Vector3Int
---@field right UnityEngine.Vector3Int
---@field forward UnityEngine.Vector3Int
---@field back UnityEngine.Vector3Int
---@field x number
---@field y number
---@field z number
---@field Item number
---@field magnitude number
---@field sqrMagnitude number
UnityEngine.Vector3Int = {}
---@alias CS.UnityEngine.Vector3Int UnityEngine.Vector3Int
CS.UnityEngine.Vector3Int = UnityEngine.Vector3Int

---@overload fun(x: number, y: number) : UnityEngine.Vector3Int
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.New(x, y, z) end
---@param a UnityEngine.Vector3Int
---@param b UnityEngine.Vector3Int
---@return number
function UnityEngine.Vector3Int.Distance(a, b) end
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.Min(lhs, rhs) end
---@param lhs UnityEngine.Vector3Int
---@param rhs UnityEngine.Vector3Int
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.Max(lhs, rhs) end
---@overload fun(a: UnityEngine.Vector3Int, b: UnityEngine.Vector3Int) : UnityEngine.Vector3Int
---@param scale UnityEngine.Vector3Int
function UnityEngine.Vector3Int:Scale(scale) end
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.FloorToInt(v) end
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.CeilToInt(v) end
---@param v UnityEngine.Vector3
---@return UnityEngine.Vector3Int
function UnityEngine.Vector3Int.RoundToInt(v) end
---@param x number
---@param y number
---@param z number
function UnityEngine.Vector3Int:Set(x, y, z) end
---@param min UnityEngine.Vector3Int
---@param max UnityEngine.Vector3Int
function UnityEngine.Vector3Int:Clamp(min, max) end
---@overload fun(self: UnityEngine.Vector3Int, other: System.Object) : boolean
---@param other UnityEngine.Vector3Int
---@return boolean
function UnityEngine.Vector3Int:Equals(other) end
---@return number
function UnityEngine.Vector3Int:GetHashCode() end
---@overload fun() : string
---@overload fun(self: UnityEngine.Vector3Int, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Vector3Int:ToString(format, formatProvider) end

---@class UnityEngine.Vector4 : System.ValueType
---@field kEpsilon number
---@field x number
---@field y number
---@field z number
---@field w number
---@field zero UnityEngine.Vector4
---@field one UnityEngine.Vector4
---@field positiveInfinity UnityEngine.Vector4
---@field negativeInfinity UnityEngine.Vector4
---@field Item number
---@field normalized UnityEngine.Vector4
---@field magnitude number
---@field sqrMagnitude number
UnityEngine.Vector4 = {}
---@alias CS.UnityEngine.Vector4 UnityEngine.Vector4
CS.UnityEngine.Vector4 = UnityEngine.Vector4

---@overload fun(x: number, y: number, z: number, w: number) : UnityEngine.Vector4
---@overload fun(x: number, y: number, z: number) : UnityEngine.Vector4
---@param x number
---@param y number
---@return UnityEngine.Vector4
function UnityEngine.Vector4.New(x, y) end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t number
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Lerp(a, b, t) end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@param t number
---@return UnityEngine.Vector4
function UnityEngine.Vector4.LerpUnclamped(a, b, t) end
---@param current UnityEngine.Vector4
---@param target UnityEngine.Vector4
---@param maxDistanceDelta number
---@return UnityEngine.Vector4
function UnityEngine.Vector4.MoveTowards(current, target, maxDistanceDelta) end
---@overload fun(a: UnityEngine.Vector4, b: UnityEngine.Vector4) : UnityEngine.Vector4
---@param scale UnityEngine.Vector4
function UnityEngine.Vector4:Scale(scale) end
---@overload fun(a: UnityEngine.Vector4) : UnityEngine.Vector4
function UnityEngine.Vector4:Normalize() end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return number
function UnityEngine.Vector4.Dot(a, b) end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Project(a, b) end
---@param a UnityEngine.Vector4
---@param b UnityEngine.Vector4
---@return number
function UnityEngine.Vector4.Distance(a, b) end
---@param a UnityEngine.Vector4
---@return number
function UnityEngine.Vector4.Magnitude(a) end
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Min(lhs, rhs) end
---@param lhs UnityEngine.Vector4
---@param rhs UnityEngine.Vector4
---@return UnityEngine.Vector4
function UnityEngine.Vector4.Max(lhs, rhs) end
---@overload fun(a: UnityEngine.Vector4) : number
---@return number
function UnityEngine.Vector4:SqrMagnitude() end
---@param newX number
---@param newY number
---@param newZ number
---@param newW number
function UnityEngine.Vector4:Set(newX, newY, newZ, newW) end
---@return number
function UnityEngine.Vector4:GetHashCode() end
---@overload fun(self: UnityEngine.Vector4, other: System.Object) : boolean
---@param other UnityEngine.Vector4
---@return boolean
function UnityEngine.Vector4:Equals(other) end
---@overload fun() : string
---@overload fun(self: UnityEngine.Vector4, format: string) : string
---@param format string
---@param formatProvider System.IFormatProvider
---@return string
function UnityEngine.Vector4:ToString(format, formatProvider) end

---@class UnityEngine.TypeDispatchData : System.ValueType
---@field changed UnityEngine.Object[]
---@field changedID Unity.Collections.NativeArray
---@field destroyedID Unity.Collections.NativeArray
UnityEngine.TypeDispatchData = {}
---@alias CS.UnityEngine.TypeDispatchData UnityEngine.TypeDispatchData
CS.UnityEngine.TypeDispatchData = UnityEngine.TypeDispatchData

function UnityEngine.TypeDispatchData:Dispose() end

---@class UnityEngine.TransformDispatchData : System.ValueType
---@field transformedID Unity.Collections.NativeArray
---@field parentID Unity.Collections.NativeArray
---@field localToWorldMatrices Unity.Collections.NativeArray
---@field positions Unity.Collections.NativeArray
---@field rotations Unity.Collections.NativeArray
---@field scales Unity.Collections.NativeArray
UnityEngine.TransformDispatchData = {}
---@alias CS.UnityEngine.TransformDispatchData UnityEngine.TransformDispatchData
CS.UnityEngine.TransformDispatchData = UnityEngine.TransformDispatchData

function UnityEngine.TransformDispatchData:Dispose() end

---@class UnityEngine.ObjectDispatcher : System.Object
---@field valid boolean
---@field maxDispatchHistoryFramesCount number
UnityEngine.ObjectDispatcher = {}
---@alias CS.UnityEngine.ObjectDispatcher UnityEngine.ObjectDispatcher
CS.UnityEngine.ObjectDispatcher = UnityEngine.ObjectDispatcher

---@return UnityEngine.ObjectDispatcher
function UnityEngine.ObjectDispatcher.New() end
function UnityEngine.ObjectDispatcher:Dispose() end
---@param type System.Type
---@param callback System.Action
---@param sortByInstanceID boolean
---@param noScriptingArray boolean
function UnityEngine.ObjectDispatcher:DispatchTypeChangesAndClear(type, callback, sortByInstanceID, noScriptingArray) end
---@overload fun(self: UnityEngine.ObjectDispatcher, type: System.Type, trackingType: UnityEngine.ObjectDispatcher.TransformTrackingType, callback: System.Action, sortByInstanceID: boolean)
---@param type System.Type
---@param trackingType UnityEngine.ObjectDispatcher.TransformTrackingType
---@param callback System.Action
function UnityEngine.ObjectDispatcher:DispatchTransformChangesAndClear(type, trackingType, callback) end
---@param type System.Type
function UnityEngine.ObjectDispatcher:ClearTypeChanges(type) end
---@overload fun(self: UnityEngine.ObjectDispatcher, type: System.Type, allocator: Unity.Collections.Allocator, sortByInstanceID: boolean, noScriptingArray: boolean) : UnityEngine.TypeDispatchData
---@param type System.Type
---@param changed System.Collections.Generic.List
---@param out_changedID Unity.Collections.NativeArray
---@param out_destroyedID Unity.Collections.NativeArray
---@param allocator Unity.Collections.Allocator
---@param sortByInstanceID boolean
---@return ,Unity.Collections.NativeArray,Unity.Collections.NativeArray
function UnityEngine.ObjectDispatcher:GetTypeChangesAndClear(type, changed, out_changedID, out_destroyedID, allocator, sortByInstanceID) end
---@overload fun(self: UnityEngine.ObjectDispatcher, type: System.Type, trackingType: UnityEngine.ObjectDispatcher.TransformTrackingType, sortByInstanceID: boolean) : UnityEngine.Component[]
---@param type System.Type
---@param trackingType UnityEngine.ObjectDispatcher.TransformTrackingType
---@param allocator Unity.Collections.Allocator
---@return UnityEngine.TransformDispatchData
function UnityEngine.ObjectDispatcher:GetTransformChangesAndClear(type, trackingType, allocator) end
---@overload fun(self: UnityEngine.ObjectDispatcher, typeTrackingMask: UnityEngine.ObjectDispatcher.TypeTrackingFlags, types: System.Type[])
---@param types System.Type[]
function UnityEngine.ObjectDispatcher:EnableTypeTracking(types) end
---@param types System.Type[]
function UnityEngine.ObjectDispatcher:DisableTypeTracking(types) end
---@param trackingType UnityEngine.ObjectDispatcher.TransformTrackingType
---@param types System.Type[]
function UnityEngine.ObjectDispatcher:EnableTransformTracking(trackingType, types) end
---@param trackingType UnityEngine.ObjectDispatcher.TransformTrackingType
---@param types System.Type[]
function UnityEngine.ObjectDispatcher:DisableTransformTracking(trackingType, types) end

---@class UnityEngine.ObjectDispatcher.TransformTrackingType
---@field GlobalTRS UnityEngine.ObjectDispatcher.TransformTrackingType
---@field LocalTRS UnityEngine.ObjectDispatcher.TransformTrackingType
---@field Hierarchy UnityEngine.ObjectDispatcher.TransformTrackingType
UnityEngine.ObjectDispatcher.TransformTrackingType = {}
---@alias CS.UnityEngine.ObjectDispatcher.TransformTrackingType UnityEngine.ObjectDispatcher.TransformTrackingType
CS.UnityEngine.ObjectDispatcher.TransformTrackingType = UnityEngine.ObjectDispatcher.TransformTrackingType


---@class UnityEngine.ObjectDispatcher.TypeTrackingFlags
---@field SceneObjects UnityEngine.ObjectDispatcher.TypeTrackingFlags
---@field Assets UnityEngine.ObjectDispatcher.TypeTrackingFlags
---@field EditorOnlyObjects UnityEngine.ObjectDispatcher.TypeTrackingFlags
---@field Default UnityEngine.ObjectDispatcher.TypeTrackingFlags
---@field All UnityEngine.ObjectDispatcher.TypeTrackingFlags
UnityEngine.ObjectDispatcher.TypeTrackingFlags = {}
---@alias CS.UnityEngine.ObjectDispatcher.TypeTrackingFlags UnityEngine.ObjectDispatcher.TypeTrackingFlags
CS.UnityEngine.ObjectDispatcher.TypeTrackingFlags = UnityEngine.ObjectDispatcher.TypeTrackingFlags


---@class UnityEngine.RPCMode
UnityEngine.RPCMode = {}
---@alias CS.UnityEngine.RPCMode UnityEngine.RPCMode
CS.UnityEngine.RPCMode = UnityEngine.RPCMode


---@class UnityEngine.ConnectionTesterStatus
UnityEngine.ConnectionTesterStatus = {}
---@alias CS.UnityEngine.ConnectionTesterStatus UnityEngine.ConnectionTesterStatus
CS.UnityEngine.ConnectionTesterStatus = UnityEngine.ConnectionTesterStatus


---@class UnityEngine.NetworkConnectionError
UnityEngine.NetworkConnectionError = {}
---@alias CS.UnityEngine.NetworkConnectionError UnityEngine.NetworkConnectionError
CS.UnityEngine.NetworkConnectionError = UnityEngine.NetworkConnectionError


---@class UnityEngine.NetworkDisconnection
UnityEngine.NetworkDisconnection = {}
---@alias CS.UnityEngine.NetworkDisconnection UnityEngine.NetworkDisconnection
CS.UnityEngine.NetworkDisconnection = UnityEngine.NetworkDisconnection


---@class UnityEngine.MasterServerEvent
UnityEngine.MasterServerEvent = {}
---@alias CS.UnityEngine.MasterServerEvent UnityEngine.MasterServerEvent
CS.UnityEngine.MasterServerEvent = UnityEngine.MasterServerEvent


---@class UnityEngine.NetworkStateSynchronization
UnityEngine.NetworkStateSynchronization = {}
---@alias CS.UnityEngine.NetworkStateSynchronization UnityEngine.NetworkStateSynchronization
CS.UnityEngine.NetworkStateSynchronization = UnityEngine.NetworkStateSynchronization


---@class UnityEngine.NetworkPeerType
UnityEngine.NetworkPeerType = {}
---@alias CS.UnityEngine.NetworkPeerType UnityEngine.NetworkPeerType
CS.UnityEngine.NetworkPeerType = UnityEngine.NetworkPeerType


---@class UnityEngine.NetworkLogLevel
UnityEngine.NetworkLogLevel = {}
---@alias CS.UnityEngine.NetworkLogLevel UnityEngine.NetworkLogLevel
CS.UnityEngine.NetworkLogLevel = UnityEngine.NetworkLogLevel


---@class UnityEngine.NetworkPlayer : System.ValueType
UnityEngine.NetworkPlayer = {}
---@alias CS.UnityEngine.NetworkPlayer UnityEngine.NetworkPlayer
CS.UnityEngine.NetworkPlayer = UnityEngine.NetworkPlayer

---@param ip string
---@param port number
---@return UnityEngine.NetworkPlayer
function UnityEngine.NetworkPlayer.New(ip, port) end

---@class UnityEngine.NetworkViewID : System.ValueType
UnityEngine.NetworkViewID = {}
---@alias CS.UnityEngine.NetworkViewID UnityEngine.NetworkViewID
CS.UnityEngine.NetworkViewID = UnityEngine.NetworkViewID


---@class UnityEngine.NetworkView : UnityEngine.Behaviour
UnityEngine.NetworkView = {}
---@alias CS.UnityEngine.NetworkView UnityEngine.NetworkView
CS.UnityEngine.NetworkView = UnityEngine.NetworkView

---@return UnityEngine.NetworkView
function UnityEngine.NetworkView.New() end

---@class UnityEngine.Network : System.Object
UnityEngine.Network = {}
---@alias CS.UnityEngine.Network UnityEngine.Network
CS.UnityEngine.Network = UnityEngine.Network

---@return UnityEngine.Network
function UnityEngine.Network.New() end

---@class UnityEngine.BitStream : System.Object
UnityEngine.BitStream = {}
---@alias CS.UnityEngine.BitStream UnityEngine.BitStream
CS.UnityEngine.BitStream = UnityEngine.BitStream

---@return UnityEngine.BitStream
function UnityEngine.BitStream.New() end

---@class UnityEngine.RPC : System.Attribute
UnityEngine.RPC = {}
---@alias CS.UnityEngine.RPC UnityEngine.RPC
CS.UnityEngine.RPC = UnityEngine.RPC

---@return UnityEngine.RPC
function UnityEngine.RPC.New() end

---@class UnityEngine.HostData : System.Object
UnityEngine.HostData = {}
---@alias CS.UnityEngine.HostData UnityEngine.HostData
CS.UnityEngine.HostData = UnityEngine.HostData

---@return UnityEngine.HostData
function UnityEngine.HostData.New() end

---@class UnityEngine.MasterServer : System.Object
UnityEngine.MasterServer = {}
---@alias CS.UnityEngine.MasterServer UnityEngine.MasterServer
CS.UnityEngine.MasterServer = UnityEngine.MasterServer

---@return UnityEngine.MasterServer
function UnityEngine.MasterServer.New() end

---@class UnityEngine.NetworkMessageInfo : System.ValueType
UnityEngine.NetworkMessageInfo = {}
---@alias CS.UnityEngine.NetworkMessageInfo UnityEngine.NetworkMessageInfo
CS.UnityEngine.NetworkMessageInfo = UnityEngine.NetworkMessageInfo


---@class UnityEngine.Ping : System.Object
---@field isDone boolean
---@field time number
---@field ip string
UnityEngine.Ping = {}
---@alias CS.UnityEngine.Ping UnityEngine.Ping
CS.UnityEngine.Ping = UnityEngine.Ping

---@param address string
---@return UnityEngine.Ping
function UnityEngine.Ping.New(address) end
function UnityEngine.Ping:DestroyPing() end

---@class UnityEngine.NumericFieldDraggerUtility : System.Object
UnityEngine.NumericFieldDraggerUtility = {}
---@alias CS.UnityEngine.NumericFieldDraggerUtility UnityEngine.NumericFieldDraggerUtility
CS.UnityEngine.NumericFieldDraggerUtility = UnityEngine.NumericFieldDraggerUtility

---@return UnityEngine.NumericFieldDraggerUtility
function UnityEngine.NumericFieldDraggerUtility.New() end

---@class UnityEngine.IPlayerEditorConnectionNative
UnityEngine.IPlayerEditorConnectionNative = {}
---@alias CS.UnityEngine.IPlayerEditorConnectionNative UnityEngine.IPlayerEditorConnectionNative
CS.UnityEngine.IPlayerEditorConnectionNative = UnityEngine.IPlayerEditorConnectionNative

function UnityEngine.IPlayerEditorConnectionNative:Initialize() end
function UnityEngine.IPlayerEditorConnectionNative:DisconnectAll() end
---@param messageId System.Guid
---@param data System.Byte[]
---@param playerId number
function UnityEngine.IPlayerEditorConnectionNative:SendMessage(messageId, data, playerId) end
---@param messageId System.Guid
---@param data System.Byte[]
---@param playerId number
---@return boolean
function UnityEngine.IPlayerEditorConnectionNative:TrySendMessage(messageId, data, playerId) end
function UnityEngine.IPlayerEditorConnectionNative:Poll() end
---@param messageId System.Guid
function UnityEngine.IPlayerEditorConnectionNative:RegisterInternal(messageId) end
---@param messageId System.Guid
function UnityEngine.IPlayerEditorConnectionNative:UnregisterInternal(messageId) end
---@return boolean
function UnityEngine.IPlayerEditorConnectionNative:IsConnected() end

---@class UnityEngine.PlayerConnectionInternal : System.Object
UnityEngine.PlayerConnectionInternal = {}
---@alias CS.UnityEngine.PlayerConnectionInternal UnityEngine.PlayerConnectionInternal
CS.UnityEngine.PlayerConnectionInternal = UnityEngine.PlayerConnectionInternal

---@return UnityEngine.PlayerConnectionInternal
function UnityEngine.PlayerConnectionInternal.New() end

---@class UnityEngine.PlayerConnectionInternal.MulticastFlags
---@field kRequestImmediateConnect UnityEngine.PlayerConnectionInternal.MulticastFlags
---@field kSupportsProfile UnityEngine.PlayerConnectionInternal.MulticastFlags
---@field kCustomMessage UnityEngine.PlayerConnectionInternal.MulticastFlags
---@field kUseAlternateIP UnityEngine.PlayerConnectionInternal.MulticastFlags
UnityEngine.PlayerConnectionInternal.MulticastFlags = {}
---@alias CS.UnityEngine.PlayerConnectionInternal.MulticastFlags UnityEngine.PlayerConnectionInternal.MulticastFlags
CS.UnityEngine.PlayerConnectionInternal.MulticastFlags = UnityEngine.PlayerConnectionInternal.MulticastFlags


---@class UnityEngine.PlayerPrefsException : System.Exception
UnityEngine.PlayerPrefsException = {}
---@alias CS.UnityEngine.PlayerPrefsException UnityEngine.PlayerPrefsException
CS.UnityEngine.PlayerPrefsException = UnityEngine.PlayerPrefsException

---@param error string
---@return UnityEngine.PlayerPrefsException
function UnityEngine.PlayerPrefsException.New(error) end

---@class UnityEngine.PlayerPrefs : System.Object
UnityEngine.PlayerPrefs = {}
---@alias CS.UnityEngine.PlayerPrefs UnityEngine.PlayerPrefs
CS.UnityEngine.PlayerPrefs = UnityEngine.PlayerPrefs

---@return UnityEngine.PlayerPrefs
function UnityEngine.PlayerPrefs.New() end
---@param key string
---@param value number
function UnityEngine.PlayerPrefs.SetInt(key, value) end
---@overload fun(key: string, defaultValue: number) : number
---@param key string
---@return number
function UnityEngine.PlayerPrefs.GetInt(key) end
---@param key string
---@param value number
function UnityEngine.PlayerPrefs.SetFloat(key, value) end
---@overload fun(key: string, defaultValue: number) : number
---@param key string
---@return number
function UnityEngine.PlayerPrefs.GetFloat(key) end
---@param key string
---@param value string
function UnityEngine.PlayerPrefs.SetString(key, value) end
---@overload fun(key: string, defaultValue: string) : string
---@param key string
---@return string
function UnityEngine.PlayerPrefs.GetString(key) end
---@param key string
---@return boolean
function UnityEngine.PlayerPrefs.HasKey(key) end
---@param key string
function UnityEngine.PlayerPrefs.DeleteKey(key) end
function UnityEngine.PlayerPrefs.DeleteAll() end
function UnityEngine.PlayerPrefs.Save() end

---@class UnityEngine.DrivenPropertyManager : System.Object
UnityEngine.DrivenPropertyManager = {}
---@alias CS.UnityEngine.DrivenPropertyManager UnityEngine.DrivenPropertyManager
CS.UnityEngine.DrivenPropertyManager = UnityEngine.DrivenPropertyManager

---@return UnityEngine.DrivenPropertyManager
function UnityEngine.DrivenPropertyManager.New() end
---@param driver UnityEngine.Object
---@param target UnityEngine.Object
---@param propertyPath string
function UnityEngine.DrivenPropertyManager.RegisterProperty(driver, target, propertyPath) end
---@param driver UnityEngine.Object
---@param target UnityEngine.Object
---@param propertyPath string
function UnityEngine.DrivenPropertyManager.TryRegisterProperty(driver, target, propertyPath) end
---@param driver UnityEngine.Object
---@param target UnityEngine.Object
---@param propertyPath string
function UnityEngine.DrivenPropertyManager.UnregisterProperty(driver, target, propertyPath) end
---@param driver UnityEngine.Object
function UnityEngine.DrivenPropertyManager.UnregisterProperties(driver) end

---@class UnityEngine.PropertyAttribute : System.Attribute
---@field order number
UnityEngine.PropertyAttribute = {}
---@alias CS.UnityEngine.PropertyAttribute UnityEngine.PropertyAttribute
CS.UnityEngine.PropertyAttribute = UnityEngine.PropertyAttribute


---@class UnityEngine.ContextMenuItemAttribute : UnityEngine.PropertyAttribute
---@field name string
---@field function string
UnityEngine.ContextMenuItemAttribute = {}
---@alias CS.UnityEngine.ContextMenuItemAttribute UnityEngine.ContextMenuItemAttribute
CS.UnityEngine.ContextMenuItemAttribute = UnityEngine.ContextMenuItemAttribute

---@param name string
---@param _function string
---@return UnityEngine.ContextMenuItemAttribute
function UnityEngine.ContextMenuItemAttribute.New(name, _function) end

---@class UnityEngine.InspectorNameAttribute : UnityEngine.PropertyAttribute
---@field displayName string
UnityEngine.InspectorNameAttribute = {}
---@alias CS.UnityEngine.InspectorNameAttribute UnityEngine.InspectorNameAttribute
CS.UnityEngine.InspectorNameAttribute = UnityEngine.InspectorNameAttribute

---@param displayName string
---@return UnityEngine.InspectorNameAttribute
function UnityEngine.InspectorNameAttribute.New(displayName) end

---@class UnityEngine.TooltipAttribute : UnityEngine.PropertyAttribute
---@field tooltip string
UnityEngine.TooltipAttribute = {}
---@alias CS.UnityEngine.TooltipAttribute UnityEngine.TooltipAttribute
CS.UnityEngine.TooltipAttribute = UnityEngine.TooltipAttribute

---@param tooltip string
---@return UnityEngine.TooltipAttribute
function UnityEngine.TooltipAttribute.New(tooltip) end

---@class UnityEngine.SpaceAttribute : UnityEngine.PropertyAttribute
---@field height number
UnityEngine.SpaceAttribute = {}
---@alias CS.UnityEngine.SpaceAttribute UnityEngine.SpaceAttribute
CS.UnityEngine.SpaceAttribute = UnityEngine.SpaceAttribute

---@overload fun() : UnityEngine.SpaceAttribute
---@param height number
---@return UnityEngine.SpaceAttribute
function UnityEngine.SpaceAttribute.New(height) end

---@class UnityEngine.HeaderAttribute : UnityEngine.PropertyAttribute
---@field header string
UnityEngine.HeaderAttribute = {}
---@alias CS.UnityEngine.HeaderAttribute UnityEngine.HeaderAttribute
CS.UnityEngine.HeaderAttribute = UnityEngine.HeaderAttribute

---@param header string
---@return UnityEngine.HeaderAttribute
function UnityEngine.HeaderAttribute.New(header) end

---@class UnityEngine.RangeAttribute : UnityEngine.PropertyAttribute
---@field min number
---@field max number
UnityEngine.RangeAttribute = {}
---@alias CS.UnityEngine.RangeAttribute UnityEngine.RangeAttribute
CS.UnityEngine.RangeAttribute = UnityEngine.RangeAttribute

---@param min number
---@param max number
---@return UnityEngine.RangeAttribute
function UnityEngine.RangeAttribute.New(min, max) end

---@class UnityEngine.MinAttribute : UnityEngine.PropertyAttribute
---@field min number
UnityEngine.MinAttribute = {}
---@alias CS.UnityEngine.MinAttribute UnityEngine.MinAttribute
CS.UnityEngine.MinAttribute = UnityEngine.MinAttribute

---@param min number
---@return UnityEngine.MinAttribute
function UnityEngine.MinAttribute.New(min) end

---@class UnityEngine.MultilineAttribute : UnityEngine.PropertyAttribute
---@field lines number
UnityEngine.MultilineAttribute = {}
---@alias CS.UnityEngine.MultilineAttribute UnityEngine.MultilineAttribute
CS.UnityEngine.MultilineAttribute = UnityEngine.MultilineAttribute

---@overload fun() : UnityEngine.MultilineAttribute
---@param lines number
---@return UnityEngine.MultilineAttribute
function UnityEngine.MultilineAttribute.New(lines) end

---@class UnityEngine.TextAreaAttribute : UnityEngine.PropertyAttribute
---@field minLines number
---@field maxLines number
UnityEngine.TextAreaAttribute = {}
---@alias CS.UnityEngine.TextAreaAttribute UnityEngine.TextAreaAttribute
CS.UnityEngine.TextAreaAttribute = UnityEngine.TextAreaAttribute

---@overload fun() : UnityEngine.TextAreaAttribute
---@param minLines number
---@param maxLines number
---@return UnityEngine.TextAreaAttribute
function UnityEngine.TextAreaAttribute.New(minLines, maxLines) end

---@class UnityEngine.ColorUsageAttribute : UnityEngine.PropertyAttribute
---@field showAlpha boolean
---@field hdr boolean
UnityEngine.ColorUsageAttribute = {}
---@alias CS.UnityEngine.ColorUsageAttribute UnityEngine.ColorUsageAttribute
CS.UnityEngine.ColorUsageAttribute = UnityEngine.ColorUsageAttribute

---@overload fun(showAlpha: boolean) : UnityEngine.ColorUsageAttribute
---@overload fun(showAlpha: boolean, hdr: boolean) : UnityEngine.ColorUsageAttribute
---@param showAlpha boolean
---@param hdr boolean
---@param minBrightness number
---@param maxBrightness number
---@param minExposureValue number
---@param maxExposureValue number
---@return UnityEngine.ColorUsageAttribute
function UnityEngine.ColorUsageAttribute.New(showAlpha, hdr, minBrightness, maxBrightness, minExposureValue, maxExposureValue) end

---@class UnityEngine.GradientUsageAttribute : UnityEngine.PropertyAttribute
---@field hdr boolean
---@field colorSpace UnityEngine.ColorSpace
UnityEngine.GradientUsageAttribute = {}
---@alias CS.UnityEngine.GradientUsageAttribute UnityEngine.GradientUsageAttribute
CS.UnityEngine.GradientUsageAttribute = UnityEngine.GradientUsageAttribute

---@overload fun(hdr: boolean) : UnityEngine.GradientUsageAttribute
---@param hdr boolean
---@param colorSpace UnityEngine.ColorSpace
---@return UnityEngine.GradientUsageAttribute
function UnityEngine.GradientUsageAttribute.New(hdr, colorSpace) end

---@class UnityEngine.DelayedAttribute : UnityEngine.PropertyAttribute
UnityEngine.DelayedAttribute = {}
---@alias CS.UnityEngine.DelayedAttribute UnityEngine.DelayedAttribute
CS.UnityEngine.DelayedAttribute = UnityEngine.DelayedAttribute

---@return UnityEngine.DelayedAttribute
function UnityEngine.DelayedAttribute.New() end

---@class UnityEngine.NonReorderableAttribute : UnityEngine.PropertyAttribute
UnityEngine.NonReorderableAttribute = {}
---@alias CS.UnityEngine.NonReorderableAttribute UnityEngine.NonReorderableAttribute
CS.UnityEngine.NonReorderableAttribute = UnityEngine.NonReorderableAttribute

---@return UnityEngine.NonReorderableAttribute
function UnityEngine.NonReorderableAttribute.New() end

---@class UnityEngine.PropertyNameUtils : System.Object
UnityEngine.PropertyNameUtils = {}
---@alias CS.UnityEngine.PropertyNameUtils UnityEngine.PropertyNameUtils
CS.UnityEngine.PropertyNameUtils = UnityEngine.PropertyNameUtils

---@return UnityEngine.PropertyNameUtils
function UnityEngine.PropertyNameUtils.New() end
---@param name string
---@return UnityEngine.PropertyName
function UnityEngine.PropertyNameUtils.PropertyNameFromString(name) end
---@param propertyName UnityEngine.PropertyName
---@return string
function UnityEngine.PropertyNameUtils.StringFromPropertyName(propertyName) end
---@param id number
---@return number
function UnityEngine.PropertyNameUtils.ConflictCountForID(id) end

---@class UnityEngine.PropertyName : System.ValueType
UnityEngine.PropertyName = {}
---@alias CS.UnityEngine.PropertyName UnityEngine.PropertyName
CS.UnityEngine.PropertyName = UnityEngine.PropertyName

---@overload fun(name: string) : UnityEngine.PropertyName
---@overload fun(other: UnityEngine.PropertyName) : UnityEngine.PropertyName
---@param id number
---@return UnityEngine.PropertyName
function UnityEngine.PropertyName.New(id) end
---@param prop UnityEngine.PropertyName
---@return boolean
function UnityEngine.PropertyName.IsNullOrEmpty(prop) end
---@return number
function UnityEngine.PropertyName:GetHashCode() end
---@overload fun(self: UnityEngine.PropertyName, other: System.Object) : boolean
---@param other UnityEngine.PropertyName
---@return boolean
function UnityEngine.PropertyName:Equals(other) end
---@return string
function UnityEngine.PropertyName:ToString() end

---@class UnityEngine.Random : System.Object
---@field state UnityEngine.Random.State
---@field value number
---@field insideUnitSphere UnityEngine.Vector3
---@field insideUnitCircle UnityEngine.Vector2
---@field onUnitSphere UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field rotationUniform UnityEngine.Quaternion
UnityEngine.Random = {}
---@alias CS.UnityEngine.Random UnityEngine.Random
CS.UnityEngine.Random = UnityEngine.Random

---@param seed number
function UnityEngine.Random.InitState(seed) end
---@overload fun(minInclusive: number, maxInclusive: number) : number
---@param minInclusive number
---@param maxExclusive number
---@return number
function UnityEngine.Random.Range(minInclusive, maxExclusive) end
---@overload fun() : UnityEngine.Color
---@overload fun(hueMin: number, hueMax: number) : UnityEngine.Color
---@overload fun(hueMin: number, hueMax: number, saturationMin: number, saturationMax: number) : UnityEngine.Color
---@overload fun(hueMin: number, hueMax: number, saturationMin: number, saturationMax: number, valueMin: number, valueMax: number) : UnityEngine.Color
---@param hueMin number
---@param hueMax number
---@param saturationMin number
---@param saturationMax number
---@param valueMin number
---@param valueMax number
---@param alphaMin number
---@param alphaMax number
---@return UnityEngine.Color
function UnityEngine.Random.ColorHSV(hueMin, hueMax, saturationMin, saturationMax, valueMin, valueMax, alphaMin, alphaMax) end

---@class UnityEngine.Random.State : System.ValueType
UnityEngine.Random.State = {}
---@alias CS.UnityEngine.Random.State UnityEngine.Random.State
CS.UnityEngine.Random.State = UnityEngine.Random.State


---@class UnityEngine.IconAttribute : System.Attribute
---@field path string
UnityEngine.IconAttribute = {}
---@alias CS.UnityEngine.IconAttribute UnityEngine.IconAttribute
CS.UnityEngine.IconAttribute = UnityEngine.IconAttribute

---@param path string
---@return UnityEngine.IconAttribute
function UnityEngine.IconAttribute.New(path) end

---@class UnityEngine.ResourceRequest : UnityEngine.AsyncOperation
---@field asset UnityEngine.Object
UnityEngine.ResourceRequest = {}
---@alias CS.UnityEngine.ResourceRequest UnityEngine.ResourceRequest
CS.UnityEngine.ResourceRequest = UnityEngine.ResourceRequest

---@return UnityEngine.ResourceRequest
function UnityEngine.ResourceRequest.New() end

---@class UnityEngine.ResourcesAPIInternal : System.Object
UnityEngine.ResourcesAPIInternal = {}
---@alias CS.UnityEngine.ResourcesAPIInternal UnityEngine.ResourcesAPIInternal
CS.UnityEngine.ResourcesAPIInternal = UnityEngine.ResourcesAPIInternal

---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.ResourcesAPIInternal.FindObjectsOfTypeAll(type) end
---@param name string
---@return UnityEngine.Shader
function UnityEngine.ResourcesAPIInternal.FindShaderByName(name) end
---@param path string
---@param systemTypeInstance System.Type
---@return UnityEngine.Object
function UnityEngine.ResourcesAPIInternal.Load(path, systemTypeInstance) end
---@param path string
---@param systemTypeInstance System.Type
---@return UnityEngine.Object[]
function UnityEngine.ResourcesAPIInternal.LoadAll(path, systemTypeInstance) end
---@param path string
---@return System.String[]
function UnityEngine.ResourcesAPIInternal.GetAllPaths(path) end
---@param assetToUnload UnityEngine.Object
function UnityEngine.ResourcesAPIInternal.UnloadAsset(assetToUnload) end

---@class UnityEngine.ResourcesAPIInternal.EntitiesAssetGC : System.Object
UnityEngine.ResourcesAPIInternal.EntitiesAssetGC = {}
---@alias CS.UnityEngine.ResourcesAPIInternal.EntitiesAssetGC UnityEngine.ResourcesAPIInternal.EntitiesAssetGC
CS.UnityEngine.ResourcesAPIInternal.EntitiesAssetGC = UnityEngine.ResourcesAPIInternal.EntitiesAssetGC


---@class UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate : System.MulticastDelegate
UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate = {}
---@alias CS.UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate
CS.UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate = UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate
function UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate.New(object, method) end
---@param state System.IntPtr
function UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate:Invoke(state) end
---@param state System.IntPtr
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate:BeginInvoke(state, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.ResourcesAPIInternal.EntitiesAssetGC.AdditionalRootsHandlerDelegate:EndInvoke(result) end

---@class UnityEngine.ResourcesAPI : System.Object
---@field overrideAPI UnityEngine.ResourcesAPI
UnityEngine.ResourcesAPI = {}
---@alias CS.UnityEngine.ResourcesAPI UnityEngine.ResourcesAPI
CS.UnityEngine.ResourcesAPI = UnityEngine.ResourcesAPI


---@class UnityEngine.Resources : System.Object
UnityEngine.Resources = {}
---@alias CS.UnityEngine.Resources UnityEngine.Resources
CS.UnityEngine.Resources = UnityEngine.Resources

---@return UnityEngine.Resources
function UnityEngine.Resources.New() end
---@param type System.Type
---@return UnityEngine.Object[]
function UnityEngine.Resources.FindObjectsOfTypeAll(type) end
---@overload fun(path: string) : UnityEngine.Object
---@param path string
---@param systemTypeInstance System.Type
---@return UnityEngine.Object
function UnityEngine.Resources.Load(path, systemTypeInstance) end
---@overload fun(path: string) : UnityEngine.ResourceRequest
---@param path string
---@param type System.Type
---@return UnityEngine.ResourceRequest
function UnityEngine.Resources.LoadAsync(path, type) end
---@overload fun(path: string, systemTypeInstance: System.Type) : UnityEngine.Object[]
---@param path string
---@return UnityEngine.Object[]
function UnityEngine.Resources.LoadAll(path) end
---@param type System.Type
---@param path string
---@return UnityEngine.Object
function UnityEngine.Resources.GetBuiltinResource(type, path) end
---@param assetToUnload UnityEngine.Object
function UnityEngine.Resources.UnloadAsset(assetToUnload) end
---@return UnityEngine.AsyncOperation
function UnityEngine.Resources.UnloadUnusedAssets() end
---@param instanceID number
---@return UnityEngine.Object
function UnityEngine.Resources.InstanceIDToObject(instanceID) end
---@param instanceIDs Unity.Collections.NativeArray
---@param objects System.Collections.Generic.List
function UnityEngine.Resources.InstanceIDToObjectList(instanceIDs, objects) end
---@param instanceId number
---@return boolean
function UnityEngine.Resources.InstanceIDIsValid(instanceId) end
---@overload fun(instanceIDs: Unity.Collections.NativeArray, validArray: Unity.Collections.NativeArray)
---@param instanceIDs System.ReadOnlySpan
---@param validArray System.Span
function UnityEngine.Resources.InstanceIDsToValidArray(instanceIDs, validArray) end

---@class UnityEngine.AsyncInstantiateOperation : UnityEngine.AsyncOperation
---@field Result UnityEngine.Object[]
UnityEngine.AsyncInstantiateOperation = {}
---@alias CS.UnityEngine.AsyncInstantiateOperation UnityEngine.AsyncInstantiateOperation
CS.UnityEngine.AsyncInstantiateOperation = UnityEngine.AsyncInstantiateOperation

---@return UnityEngine.AsyncInstantiateOperation
function UnityEngine.AsyncInstantiateOperation.New() end
---@return number
function UnityEngine.AsyncInstantiateOperation.GetIntegrationTimeMS() end
---@param integrationTimeMS number
function UnityEngine.AsyncInstantiateOperation.SetIntegrationTimeMS(integrationTimeMS) end
---@return boolean
function UnityEngine.AsyncInstantiateOperation:IsWaitingForSceneActivation() end
function UnityEngine.AsyncInstantiateOperation:WaitForCompletion() end
function UnityEngine.AsyncInstantiateOperation:Cancel() end

---@class UnityEngine.AsyncInstantiateOperation : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
---@field isDone boolean
---@field progress number
---@field allowSceneActivation boolean
---@field Result T[]
UnityEngine.AsyncInstantiateOperation = {}
---@alias CS.UnityEngine.AsyncInstantiateOperation UnityEngine.AsyncInstantiateOperation
CS.UnityEngine.AsyncInstantiateOperation = UnityEngine.AsyncInstantiateOperation

---@return UnityEngine.AsyncInstantiateOperation
function UnityEngine.AsyncInstantiateOperation:GetOperation() end
---@return boolean
function UnityEngine.AsyncInstantiateOperation:IsWaitingForSceneActivation() end
function UnityEngine.AsyncInstantiateOperation:WaitForCompletion() end
function UnityEngine.AsyncInstantiateOperation:Cancel() end

---@class UnityEngine.AsyncInstantiateOperationHelper : System.Object
UnityEngine.AsyncInstantiateOperationHelper = {}
---@alias CS.UnityEngine.AsyncInstantiateOperationHelper UnityEngine.AsyncInstantiateOperationHelper
CS.UnityEngine.AsyncInstantiateOperationHelper = UnityEngine.AsyncInstantiateOperationHelper

---@return UnityEngine.AsyncInstantiateOperationHelper
function UnityEngine.AsyncInstantiateOperationHelper.New() end
---@param op UnityEngine.AsyncInstantiateOperation
---@param result UnityEngine.Object[]
function UnityEngine.AsyncInstantiateOperationHelper.SetAsyncInstantiateOperationResult(op, result) end

---@class UnityEngine.AsyncOperation : UnityEngine.YieldInstruction
---@field isDone boolean
---@field progress number
---@field priority number
---@field allowSceneActivation boolean
UnityEngine.AsyncOperation = {}
---@alias CS.UnityEngine.AsyncOperation UnityEngine.AsyncOperation
CS.UnityEngine.AsyncOperation = UnityEngine.AsyncOperation

---@return UnityEngine.AsyncOperation
function UnityEngine.AsyncOperation.New() end

---@class UnityEngine.AttributeHelperEngine : System.Object
UnityEngine.AttributeHelperEngine = {}
---@alias CS.UnityEngine.AttributeHelperEngine UnityEngine.AttributeHelperEngine
CS.UnityEngine.AttributeHelperEngine = UnityEngine.AttributeHelperEngine

---@return UnityEngine.AttributeHelperEngine
function UnityEngine.AttributeHelperEngine.New() end

---@class UnityEngine.DisallowMultipleComponent : System.Attribute
UnityEngine.DisallowMultipleComponent = {}
---@alias CS.UnityEngine.DisallowMultipleComponent UnityEngine.DisallowMultipleComponent
CS.UnityEngine.DisallowMultipleComponent = UnityEngine.DisallowMultipleComponent

---@return UnityEngine.DisallowMultipleComponent
function UnityEngine.DisallowMultipleComponent.New() end

---@class UnityEngine.RequireComponent : System.Attribute
---@field m_Type0 System.Type
---@field m_Type1 System.Type
---@field m_Type2 System.Type
UnityEngine.RequireComponent = {}
---@alias CS.UnityEngine.RequireComponent UnityEngine.RequireComponent
CS.UnityEngine.RequireComponent = UnityEngine.RequireComponent

---@overload fun(requiredComponent: System.Type) : UnityEngine.RequireComponent
---@overload fun(requiredComponent: System.Type, requiredComponent2: System.Type) : UnityEngine.RequireComponent
---@param requiredComponent System.Type
---@param requiredComponent2 System.Type
---@param requiredComponent3 System.Type
---@return UnityEngine.RequireComponent
function UnityEngine.RequireComponent.New(requiredComponent, requiredComponent2, requiredComponent3) end

---@class UnityEngine.AddComponentMenu : System.Attribute
---@field componentMenu string
---@field componentOrder number
UnityEngine.AddComponentMenu = {}
---@alias CS.UnityEngine.AddComponentMenu UnityEngine.AddComponentMenu
CS.UnityEngine.AddComponentMenu = UnityEngine.AddComponentMenu

---@overload fun(menuName: string) : UnityEngine.AddComponentMenu
---@param menuName string
---@param order number
---@return UnityEngine.AddComponentMenu
function UnityEngine.AddComponentMenu.New(menuName, order) end

---@class UnityEngine.CreateAssetMenuAttribute : System.Attribute
---@field menuName string
---@field fileName string
---@field order number
UnityEngine.CreateAssetMenuAttribute = {}
---@alias CS.UnityEngine.CreateAssetMenuAttribute UnityEngine.CreateAssetMenuAttribute
CS.UnityEngine.CreateAssetMenuAttribute = UnityEngine.CreateAssetMenuAttribute

---@return UnityEngine.CreateAssetMenuAttribute
function UnityEngine.CreateAssetMenuAttribute.New() end

---@class UnityEngine.ContextMenu : System.Attribute
---@field menuItem string
---@field validate boolean
---@field priority number
UnityEngine.ContextMenu = {}
---@alias CS.UnityEngine.ContextMenu UnityEngine.ContextMenu
CS.UnityEngine.ContextMenu = UnityEngine.ContextMenu

---@overload fun(itemName: string) : UnityEngine.ContextMenu
---@overload fun(itemName: string, isValidateFunction: boolean) : UnityEngine.ContextMenu
---@param itemName string
---@param isValidateFunction boolean
---@param priority number
---@return UnityEngine.ContextMenu
function UnityEngine.ContextMenu.New(itemName, isValidateFunction, priority) end

---@class UnityEngine.ExecuteInEditMode : System.Attribute
UnityEngine.ExecuteInEditMode = {}
---@alias CS.UnityEngine.ExecuteInEditMode UnityEngine.ExecuteInEditMode
CS.UnityEngine.ExecuteInEditMode = UnityEngine.ExecuteInEditMode

---@return UnityEngine.ExecuteInEditMode
function UnityEngine.ExecuteInEditMode.New() end

---@class UnityEngine.ExecuteAlways : System.Attribute
UnityEngine.ExecuteAlways = {}
---@alias CS.UnityEngine.ExecuteAlways UnityEngine.ExecuteAlways
CS.UnityEngine.ExecuteAlways = UnityEngine.ExecuteAlways

---@return UnityEngine.ExecuteAlways
function UnityEngine.ExecuteAlways.New() end

---@class UnityEngine.HideInInspector : System.Attribute
UnityEngine.HideInInspector = {}
---@alias CS.UnityEngine.HideInInspector UnityEngine.HideInInspector
CS.UnityEngine.HideInInspector = UnityEngine.HideInInspector

---@return UnityEngine.HideInInspector
function UnityEngine.HideInInspector.New() end

---@class UnityEngine.HideInCallstackAttribute : System.Attribute
UnityEngine.HideInCallstackAttribute = {}
---@alias CS.UnityEngine.HideInCallstackAttribute UnityEngine.HideInCallstackAttribute
CS.UnityEngine.HideInCallstackAttribute = UnityEngine.HideInCallstackAttribute

---@return UnityEngine.HideInCallstackAttribute
function UnityEngine.HideInCallstackAttribute.New() end

---@class UnityEngine.HelpURLAttribute : System.Attribute
---@field URL string
UnityEngine.HelpURLAttribute = {}
---@alias CS.UnityEngine.HelpURLAttribute UnityEngine.HelpURLAttribute
CS.UnityEngine.HelpURLAttribute = UnityEngine.HelpURLAttribute

---@param url string
---@return UnityEngine.HelpURLAttribute
function UnityEngine.HelpURLAttribute.New(url) end

---@class UnityEngine.DefaultExecutionOrder : System.Attribute
---@field order number
UnityEngine.DefaultExecutionOrder = {}
---@alias CS.UnityEngine.DefaultExecutionOrder UnityEngine.DefaultExecutionOrder
CS.UnityEngine.DefaultExecutionOrder = UnityEngine.DefaultExecutionOrder

---@param order number
---@return UnityEngine.DefaultExecutionOrder
function UnityEngine.DefaultExecutionOrder.New(order) end

---@class UnityEngine.AssemblyIsEditorAssembly : System.Attribute
UnityEngine.AssemblyIsEditorAssembly = {}
---@alias CS.UnityEngine.AssemblyIsEditorAssembly UnityEngine.AssemblyIsEditorAssembly
CS.UnityEngine.AssemblyIsEditorAssembly = UnityEngine.AssemblyIsEditorAssembly

---@return UnityEngine.AssemblyIsEditorAssembly
function UnityEngine.AssemblyIsEditorAssembly.New() end

---@class UnityEngine.ExcludeFromPresetAttribute : System.Attribute
UnityEngine.ExcludeFromPresetAttribute = {}
---@alias CS.UnityEngine.ExcludeFromPresetAttribute UnityEngine.ExcludeFromPresetAttribute
CS.UnityEngine.ExcludeFromPresetAttribute = UnityEngine.ExcludeFromPresetAttribute

---@return UnityEngine.ExcludeFromPresetAttribute
function UnityEngine.ExcludeFromPresetAttribute.New() end

---@class UnityEngine.Behaviour : UnityEngine.Component
---@field enabled boolean
---@field isActiveAndEnabled boolean
UnityEngine.Behaviour = {}
---@alias CS.UnityEngine.Behaviour UnityEngine.Behaviour
CS.UnityEngine.Behaviour = UnityEngine.Behaviour

---@return UnityEngine.Behaviour
function UnityEngine.Behaviour.New() end

---@class UnityEngine.CastHelper : System.ValueType
---@field t T
---@field onePointerFurtherThanT System.IntPtr
UnityEngine.CastHelper = {}
---@alias CS.UnityEngine.CastHelper UnityEngine.CastHelper
CS.UnityEngine.CastHelper = UnityEngine.CastHelper


---@class UnityEngine.ClassLibraryInitializer : System.Object
UnityEngine.ClassLibraryInitializer = {}
---@alias CS.UnityEngine.ClassLibraryInitializer UnityEngine.ClassLibraryInitializer
CS.UnityEngine.ClassLibraryInitializer = UnityEngine.ClassLibraryInitializer


---@class UnityEngine.AssemblyVersion : System.ValueType
---@field major number
---@field minor number
---@field build number
---@field revision number
UnityEngine.AssemblyVersion = {}
---@alias CS.UnityEngine.AssemblyVersion UnityEngine.AssemblyVersion
CS.UnityEngine.AssemblyVersion = UnityEngine.AssemblyVersion

---@param major number
---@param minor number
---@param build number
---@param revision number
---@return UnityEngine.AssemblyVersion
function UnityEngine.AssemblyVersion.New(major, minor, build, revision) end
---@return string
function UnityEngine.AssemblyVersion:ToString() end
---@param other System.Object
---@return boolean
function UnityEngine.AssemblyVersion:Equals(other) end
---@return number
function UnityEngine.AssemblyVersion:GetHashCode() end

---@class UnityEngine.AssemblyFullName : System.ValueType
---@field Name string
---@field Version UnityEngine.AssemblyVersion
---@field PublicKeyToken string
---@field Culture string
UnityEngine.AssemblyFullName = {}
---@alias CS.UnityEngine.AssemblyFullName UnityEngine.AssemblyFullName
CS.UnityEngine.AssemblyFullName = UnityEngine.AssemblyFullName

---@param other System.Object
---@return boolean
function UnityEngine.AssemblyFullName:Equals(other) end
---@return number
function UnityEngine.AssemblyFullName:GetHashCode() end
---@return string
function UnityEngine.AssemblyFullName:ToString() end

---@class UnityEngine.Component : UnityEngine.Object
---@field transform UnityEngine.Transform
---@field gameObject UnityEngine.GameObject
---@field tag string
UnityEngine.Component = {}
---@alias CS.UnityEngine.Component UnityEngine.Component
CS.UnityEngine.Component = UnityEngine.Component

---@return UnityEngine.Component
function UnityEngine.Component.New() end
---@overload fun(self: UnityEngine.Component, type: System.Type) : UnityEngine.Component
---@param type string
---@return UnityEngine.Component
function UnityEngine.Component:GetComponent(type) end
---@param type System.Type
---@param out_component UnityEngine.Component
---@return boolean,UnityEngine.Component
function UnityEngine.Component:TryGetComponent(type, out_component) end
---@overload fun(self: UnityEngine.Component, t: System.Type, includeInactive: boolean) : UnityEngine.Component
---@param t System.Type
---@return UnityEngine.Component
function UnityEngine.Component:GetComponentInChildren(t) end
---@overload fun(self: UnityEngine.Component, t: System.Type, includeInactive: boolean) : UnityEngine.Component[]
---@param t System.Type
---@return UnityEngine.Component[]
function UnityEngine.Component:GetComponentsInChildren(t) end
---@overload fun(self: UnityEngine.Component, t: System.Type, includeInactive: boolean) : UnityEngine.Component
---@param t System.Type
---@return UnityEngine.Component
function UnityEngine.Component:GetComponentInParent(t) end
---@overload fun(self: UnityEngine.Component, t: System.Type, includeInactive: boolean) : UnityEngine.Component[]
---@param t System.Type
---@return UnityEngine.Component[]
function UnityEngine.Component:GetComponentsInParent(t) end
---@overload fun(self: UnityEngine.Component, type: System.Type) : UnityEngine.Component[]
---@param type System.Type
---@param results System.Collections.Generic.List
function UnityEngine.Component:GetComponents(type, results) end
---@return number
function UnityEngine.Component:GetComponentIndex() end
---@param tag string
---@return boolean
function UnityEngine.Component:CompareTag(tag) end
---@overload fun(self: UnityEngine.Component, methodName: string, value: System.Object, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.Component, methodName: string, value: System.Object)
---@overload fun(self: UnityEngine.Component, methodName: string)
---@param methodName string
---@param options UnityEngine.SendMessageOptions
function UnityEngine.Component:SendMessageUpwards(methodName, options) end
---@overload fun(self: UnityEngine.Component, methodName: string, value: System.Object)
---@overload fun(self: UnityEngine.Component, methodName: string)
---@overload fun(self: UnityEngine.Component, methodName: string, value: System.Object, options: UnityEngine.SendMessageOptions)
---@param methodName string
---@param options UnityEngine.SendMessageOptions
function UnityEngine.Component:SendMessage(methodName, options) end
---@overload fun(self: UnityEngine.Component, methodName: string, parameter: System.Object, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.Component, methodName: string, parameter: System.Object)
---@overload fun(self: UnityEngine.Component, methodName: string)
---@param methodName string
---@param options UnityEngine.SendMessageOptions
function UnityEngine.Component:BroadcastMessage(methodName, options) end
---@return T
function UnityEngine.Component:DemandComponent() end
---@param withCallbacks boolean
---@return number
function UnityEngine.Component:DOComplete(withCallbacks) end
---@param complete boolean
---@return number
function UnityEngine.Component:DOKill(complete) end
---@return number
function UnityEngine.Component:DOFlip() end
---@param to number
---@param andPlay boolean
---@return number
function UnityEngine.Component:DOGoto(to, andPlay) end
---@return number
function UnityEngine.Component:DOPause() end
---@return number
function UnityEngine.Component:DOPlay() end
---@return number
function UnityEngine.Component:DOPlayBackwards() end
---@return number
function UnityEngine.Component:DOPlayForward() end
---@param includeDelay boolean
---@return number
function UnityEngine.Component:DORestart(includeDelay) end
---@param includeDelay boolean
---@return number
function UnityEngine.Component:DORewind(includeDelay) end
---@return number
function UnityEngine.Component:DOSmoothRewind() end
---@return number
function UnityEngine.Component:DOTogglePause() end

---@class UnityEngine.Coroutine : UnityEngine.YieldInstruction
UnityEngine.Coroutine = {}
---@alias CS.UnityEngine.Coroutine UnityEngine.Coroutine
CS.UnityEngine.Coroutine = UnityEngine.Coroutine


---@class UnityEngine.SetupCoroutine : System.Object
UnityEngine.SetupCoroutine = {}
---@alias CS.UnityEngine.SetupCoroutine UnityEngine.SetupCoroutine
CS.UnityEngine.SetupCoroutine = UnityEngine.SetupCoroutine

---@return UnityEngine.SetupCoroutine
function UnityEngine.SetupCoroutine.New() end
---@param enumerator System.Collections.IEnumerator
---@param returnValueAddress System.IntPtr
function UnityEngine.SetupCoroutine.InvokeMoveNext(enumerator, returnValueAddress) end
---@param behaviour System.Object
---@param name string
---@param variable System.Object
---@return System.Object
function UnityEngine.SetupCoroutine.InvokeMember(behaviour, name, variable) end
---@param klass System.Type
---@param name string
---@param variable System.Object
---@return System.Object
function UnityEngine.SetupCoroutine.InvokeStatic(klass, name, variable) end

---@class UnityEngine.CustomYieldInstruction : System.Object
---@field keepWaiting boolean
---@field Current System.Object
UnityEngine.CustomYieldInstruction = {}
---@alias CS.UnityEngine.CustomYieldInstruction UnityEngine.CustomYieldInstruction
CS.UnityEngine.CustomYieldInstruction = UnityEngine.CustomYieldInstruction

---@return boolean
function UnityEngine.CustomYieldInstruction:MoveNext() end
function UnityEngine.CustomYieldInstruction:Reset() end

---@class UnityEngine.EnumData : System.ValueType
---@field values System.Enum[]
---@field flagValues System.Int32[]
---@field displayNames System.String[]
---@field names System.String[]
---@field tooltip System.String[]
---@field flags boolean
---@field underlyingType System.Type
---@field unsigned boolean
---@field serializable boolean
UnityEngine.EnumData = {}
---@alias CS.UnityEngine.EnumData UnityEngine.EnumData
CS.UnityEngine.EnumData = UnityEngine.EnumData


---@class UnityEngine.EnumDataUtility : System.Object
UnityEngine.EnumDataUtility = {}
---@alias CS.UnityEngine.EnumDataUtility UnityEngine.EnumDataUtility
CS.UnityEngine.EnumDataUtility = UnityEngine.EnumDataUtility

---@param enumType System.Type
---@param cachedType UnityEngine.EnumDataUtility.CachedType
---@param nicifyName System.Func
---@return UnityEngine.EnumData
function UnityEngine.EnumDataUtility.GetCachedEnumData(enumType, cachedType, nicifyName) end

---@class UnityEngine.EnumDataUtility.CachedType
---@field ExcludeObsolete UnityEngine.EnumDataUtility.CachedType
---@field IncludeObsoleteExceptErrors UnityEngine.EnumDataUtility.CachedType
---@field IncludeAllObsolete UnityEngine.EnumDataUtility.CachedType
UnityEngine.EnumDataUtility.CachedType = {}
---@alias CS.UnityEngine.EnumDataUtility.CachedType UnityEngine.EnumDataUtility.CachedType
CS.UnityEngine.EnumDataUtility.CachedType = UnityEngine.EnumDataUtility.CachedType


---@class UnityEngine.EnumInfo : System.Object
---@field names System.String[]
---@field values System.Int32[]
---@field annotations System.String[]
---@field isFlags boolean
UnityEngine.EnumInfo = {}
---@alias CS.UnityEngine.EnumInfo UnityEngine.EnumInfo
CS.UnityEngine.EnumInfo = UnityEngine.EnumInfo

---@return UnityEngine.EnumInfo
function UnityEngine.EnumInfo.New() end

---@class UnityEngine.ExcludeFromObjectFactoryAttribute : System.Attribute
UnityEngine.ExcludeFromObjectFactoryAttribute = {}
---@alias CS.UnityEngine.ExcludeFromObjectFactoryAttribute UnityEngine.ExcludeFromObjectFactoryAttribute
CS.UnityEngine.ExcludeFromObjectFactoryAttribute = UnityEngine.ExcludeFromObjectFactoryAttribute

---@return UnityEngine.ExcludeFromObjectFactoryAttribute
function UnityEngine.ExcludeFromObjectFactoryAttribute.New() end

---@class UnityEngine.ExtensionOfNativeClassAttribute : System.Attribute
UnityEngine.ExtensionOfNativeClassAttribute = {}
---@alias CS.UnityEngine.ExtensionOfNativeClassAttribute UnityEngine.ExtensionOfNativeClassAttribute
CS.UnityEngine.ExtensionOfNativeClassAttribute = UnityEngine.ExtensionOfNativeClassAttribute

---@return UnityEngine.ExtensionOfNativeClassAttribute
function UnityEngine.ExtensionOfNativeClassAttribute.New() end

---@class UnityEngine.FailedToLoadScriptObject : UnityEngine.Object
UnityEngine.FailedToLoadScriptObject = {}
---@alias CS.UnityEngine.FailedToLoadScriptObject UnityEngine.FailedToLoadScriptObject
CS.UnityEngine.FailedToLoadScriptObject = UnityEngine.FailedToLoadScriptObject


---@class UnityEngine.GameObject : UnityEngine.Object
---@field transform UnityEngine.Transform
---@field layer number
---@field activeSelf boolean
---@field activeInHierarchy boolean
---@field isStatic boolean
---@field tag string
---@field scene UnityEngine.SceneManagement.Scene
---@field sceneCullingMask number
---@field gameObject UnityEngine.GameObject
UnityEngine.GameObject = {}
---@alias CS.UnityEngine.GameObject UnityEngine.GameObject
CS.UnityEngine.GameObject = UnityEngine.GameObject

---@overload fun(name: string) : UnityEngine.GameObject
---@overload fun() : UnityEngine.GameObject
---@param name string
---@param components System.Type[]
---@return UnityEngine.GameObject
function UnityEngine.GameObject.New(name, components) end
---@param type UnityEngine.PrimitiveType
---@return UnityEngine.GameObject
function UnityEngine.GameObject.CreatePrimitive(type) end
---@param tag string
---@return UnityEngine.GameObject
function UnityEngine.GameObject.FindWithTag(tag) end
---@param tag string
---@return UnityEngine.GameObject
function UnityEngine.GameObject.FindGameObjectWithTag(tag) end
---@param tag string
---@return UnityEngine.GameObject[]
function UnityEngine.GameObject.FindGameObjectsWithTag(tag) end
---@param name string
---@return UnityEngine.GameObject
function UnityEngine.GameObject.Find(name) end
---@overload fun(instanceIDs: Unity.Collections.NativeArray, active: boolean)
---@param instanceIDs System.ReadOnlySpan
---@param active boolean
function UnityEngine.GameObject.SetGameObjectsActive(instanceIDs, active) end
---@param sourceInstanceID number
---@param count number
---@param newInstanceIDs Unity.Collections.NativeArray
---@param newTransformInstanceIDs Unity.Collections.NativeArray
---@param destinationScene UnityEngine.SceneManagement.Scene
function UnityEngine.GameObject.InstantiateGameObjects(sourceInstanceID, count, newInstanceIDs, newTransformInstanceIDs, destinationScene) end
---@param instanceID number
---@return UnityEngine.SceneManagement.Scene
function UnityEngine.GameObject.GetScene(instanceID) end
---@overload fun(self: UnityEngine.GameObject, type: System.Type) : UnityEngine.Component
---@param type string
---@return UnityEngine.Component
function UnityEngine.GameObject:GetComponent(type) end
---@overload fun(self: UnityEngine.GameObject, type: System.Type, includeInactive: boolean) : UnityEngine.Component
---@param type System.Type
---@return UnityEngine.Component
function UnityEngine.GameObject:GetComponentInChildren(type) end
---@overload fun(self: UnityEngine.GameObject, type: System.Type, includeInactive: boolean) : UnityEngine.Component
---@param type System.Type
---@return UnityEngine.Component
function UnityEngine.GameObject:GetComponentInParent(type) end
---@overload fun(self: UnityEngine.GameObject, type: System.Type) : UnityEngine.Component[]
---@param type System.Type
---@param results System.Collections.Generic.List
function UnityEngine.GameObject:GetComponents(type, results) end
---@overload fun(self: UnityEngine.GameObject, type: System.Type) : UnityEngine.Component[]
---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Component[]
function UnityEngine.GameObject:GetComponentsInChildren(type, includeInactive) end
---@overload fun(self: UnityEngine.GameObject, type: System.Type) : UnityEngine.Component[]
---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Component[]
function UnityEngine.GameObject:GetComponentsInParent(type, includeInactive) end
---@param type System.Type
---@param out_component UnityEngine.Component
---@return boolean,UnityEngine.Component
function UnityEngine.GameObject:TryGetComponent(type, out_component) end
---@overload fun(self: UnityEngine.GameObject, methodName: string, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.GameObject, methodName: string, value: System.Object, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.GameObject, methodName: string, value: System.Object)
---@param methodName string
function UnityEngine.GameObject:SendMessageUpwards(methodName) end
---@overload fun(self: UnityEngine.GameObject, methodName: string, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.GameObject, methodName: string, value: System.Object, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.GameObject, methodName: string, value: System.Object)
---@param methodName string
function UnityEngine.GameObject:SendMessage(methodName) end
---@overload fun(self: UnityEngine.GameObject, methodName: string, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.GameObject, methodName: string, parameter: System.Object, options: UnityEngine.SendMessageOptions)
---@overload fun(self: UnityEngine.GameObject, methodName: string, parameter: System.Object)
---@param methodName string
function UnityEngine.GameObject:BroadcastMessage(methodName) end
---@param componentType System.Type
---@return UnityEngine.Component
function UnityEngine.GameObject:AddComponent(componentType) end
---@return number
function UnityEngine.GameObject:GetComponentCount() end
---@param index number
---@return UnityEngine.Component
function UnityEngine.GameObject:GetComponentAtIndex(index) end
---@param component UnityEngine.Component
---@return number
function UnityEngine.GameObject:GetComponentIndex(component) end
---@param value boolean
function UnityEngine.GameObject:SetActive(value) end
---@param tag string
---@return boolean
function UnityEngine.GameObject:CompareTag(tag) end
---@return T
function UnityEngine.GameObject:DemandComponent() end

---@class UnityEngine.InspectorOrderAttribute : UnityEngine.PropertyAttribute
UnityEngine.InspectorOrderAttribute = {}
---@alias CS.UnityEngine.InspectorOrderAttribute UnityEngine.InspectorOrderAttribute
CS.UnityEngine.InspectorOrderAttribute = UnityEngine.InspectorOrderAttribute

---@param inspectorSort UnityEngine.InspectorSort
---@param sortDirection UnityEngine.InspectorSortDirection
---@return UnityEngine.InspectorOrderAttribute
function UnityEngine.InspectorOrderAttribute.New(inspectorSort, sortDirection) end

---@class UnityEngine.InspectorSort
---@field ByName UnityEngine.InspectorSort
---@field ByValue UnityEngine.InspectorSort
UnityEngine.InspectorSort = {}
---@alias CS.UnityEngine.InspectorSort UnityEngine.InspectorSort
CS.UnityEngine.InspectorSort = UnityEngine.InspectorSort


---@class UnityEngine.InspectorSortDirection
---@field Ascending UnityEngine.InspectorSortDirection
---@field Descending UnityEngine.InspectorSortDirection
UnityEngine.InspectorSortDirection = {}
---@alias CS.UnityEngine.InspectorSortDirection UnityEngine.InspectorSortDirection
CS.UnityEngine.InspectorSortDirection = UnityEngine.InspectorSortDirection


---@class UnityEngine.LayerMask : System.ValueType
---@field value number
UnityEngine.LayerMask = {}
---@alias CS.UnityEngine.LayerMask UnityEngine.LayerMask
CS.UnityEngine.LayerMask = UnityEngine.LayerMask

---@param layer number
---@return string
function UnityEngine.LayerMask.LayerToName(layer) end
---@param layerName string
---@return number
function UnityEngine.LayerMask.NameToLayer(layerName) end
---@param layerNames System.String[]
---@return number
function UnityEngine.LayerMask.GetMask(layerNames) end

---@class UnityEngine.LazyLoadReference : System.ValueType
---@field isSet boolean
---@field isBroken boolean
---@field asset T
---@field instanceID number
UnityEngine.LazyLoadReference = {}
---@alias CS.UnityEngine.LazyLoadReference UnityEngine.LazyLoadReference
CS.UnityEngine.LazyLoadReference = UnityEngine.LazyLoadReference

---@overload fun(asset: T) : UnityEngine.LazyLoadReference
---@param instanceID number
---@return UnityEngine.LazyLoadReference
function UnityEngine.LazyLoadReference.New(instanceID) end

---@class UnityEngine.ManagedStreamHelpers : System.Object
UnityEngine.ManagedStreamHelpers = {}
---@alias CS.UnityEngine.ManagedStreamHelpers UnityEngine.ManagedStreamHelpers
CS.UnityEngine.ManagedStreamHelpers = UnityEngine.ManagedStreamHelpers


---@class UnityEngine.MonoBehaviour : UnityEngine.Behaviour
---@field destroyCancellationToken System.Threading.CancellationToken
---@field useGUILayout boolean
---@field runInEditMode boolean
UnityEngine.MonoBehaviour = {}
---@alias CS.UnityEngine.MonoBehaviour UnityEngine.MonoBehaviour
CS.UnityEngine.MonoBehaviour = UnityEngine.MonoBehaviour

---@param message System.Object
function UnityEngine.MonoBehaviour.print(message) end
---@overload fun() : boolean
---@param methodName string
---@return boolean
function UnityEngine.MonoBehaviour:IsInvoking(methodName) end
---@overload fun()
---@param methodName string
function UnityEngine.MonoBehaviour:CancelInvoke(methodName) end
---@param methodName string
---@param time number
function UnityEngine.MonoBehaviour:Invoke(methodName, time) end
---@param methodName string
---@param time number
---@param repeatRate number
function UnityEngine.MonoBehaviour:InvokeRepeating(methodName, time, repeatRate) end
---@overload fun(self: UnityEngine.MonoBehaviour, methodName: string) : UnityEngine.Coroutine
---@overload fun(self: UnityEngine.MonoBehaviour, methodName: string, value: System.Object) : UnityEngine.Coroutine
---@param routine System.Collections.IEnumerator
---@return UnityEngine.Coroutine
function UnityEngine.MonoBehaviour:StartCoroutine(routine) end
---@overload fun(self: UnityEngine.MonoBehaviour, routine: System.Collections.IEnumerator)
---@overload fun(self: UnityEngine.MonoBehaviour, routine: UnityEngine.Coroutine)
---@param methodName string
function UnityEngine.MonoBehaviour:StopCoroutine(methodName) end
function UnityEngine.MonoBehaviour:StopAllCoroutines() end

---@class UnityEngine.NoAllocHelpers : System.Object
UnityEngine.NoAllocHelpers = {}
---@alias CS.UnityEngine.NoAllocHelpers UnityEngine.NoAllocHelpers
CS.UnityEngine.NoAllocHelpers = UnityEngine.NoAllocHelpers

---@return UnityEngine.NoAllocHelpers
function UnityEngine.NoAllocHelpers.New() end
---@param values System.Array
---@return number
function UnityEngine.NoAllocHelpers.SafeLength(values) end
---@param list System.Object
---@return System.Array
function UnityEngine.NoAllocHelpers.ExtractArrayFromList(list) end

---@class UnityEngine.RangeInt : System.ValueType
---@field start number
---@field length number
---@field end number
UnityEngine.RangeInt = {}
---@alias CS.UnityEngine.RangeInt UnityEngine.RangeInt
CS.UnityEngine.RangeInt = UnityEngine.RangeInt

---@param start number
---@param length number
---@return UnityEngine.RangeInt
function UnityEngine.RangeInt.New(start, length) end

---@class UnityEngine.RuntimeInitializeLoadType
---@field AfterSceneLoad UnityEngine.RuntimeInitializeLoadType
---@field BeforeSceneLoad UnityEngine.RuntimeInitializeLoadType
---@field AfterAssembliesLoaded UnityEngine.RuntimeInitializeLoadType
---@field BeforeSplashScreen UnityEngine.RuntimeInitializeLoadType
---@field SubsystemRegistration UnityEngine.RuntimeInitializeLoadType
UnityEngine.RuntimeInitializeLoadType = {}
---@alias CS.UnityEngine.RuntimeInitializeLoadType UnityEngine.RuntimeInitializeLoadType
CS.UnityEngine.RuntimeInitializeLoadType = UnityEngine.RuntimeInitializeLoadType


---@class UnityEngine.RuntimeInitializeOnLoadMethodAttribute : UnityEngine.Scripting.PreserveAttribute
---@field loadType UnityEngine.RuntimeInitializeLoadType
UnityEngine.RuntimeInitializeOnLoadMethodAttribute = {}
---@alias CS.UnityEngine.RuntimeInitializeOnLoadMethodAttribute UnityEngine.RuntimeInitializeOnLoadMethodAttribute
CS.UnityEngine.RuntimeInitializeOnLoadMethodAttribute = UnityEngine.RuntimeInitializeOnLoadMethodAttribute

---@overload fun() : UnityEngine.RuntimeInitializeOnLoadMethodAttribute
---@param loadType UnityEngine.RuntimeInitializeLoadType
---@return UnityEngine.RuntimeInitializeOnLoadMethodAttribute
function UnityEngine.RuntimeInitializeOnLoadMethodAttribute.New(loadType) end

---@class UnityEngine.ScriptableObject : UnityEngine.Object
UnityEngine.ScriptableObject = {}
---@alias CS.UnityEngine.ScriptableObject UnityEngine.ScriptableObject
CS.UnityEngine.ScriptableObject = UnityEngine.ScriptableObject

---@return UnityEngine.ScriptableObject
function UnityEngine.ScriptableObject.New() end
---@overload fun(className: string) : UnityEngine.ScriptableObject
---@param type System.Type
---@return UnityEngine.ScriptableObject
function UnityEngine.ScriptableObject.CreateInstance(type) end

---@class UnityEngine.ScriptingRuntime : System.Object
UnityEngine.ScriptingRuntime = {}
---@alias CS.UnityEngine.ScriptingRuntime UnityEngine.ScriptingRuntime
CS.UnityEngine.ScriptingRuntime = UnityEngine.ScriptingRuntime

---@return UnityEngine.ScriptingRuntime
function UnityEngine.ScriptingRuntime.New() end
---@return System.String[]
function UnityEngine.ScriptingRuntime.GetAllUserAssemblies() end

---@class UnityEngine.ScriptingUtility : System.Object
UnityEngine.ScriptingUtility = {}
---@alias CS.UnityEngine.ScriptingUtility UnityEngine.ScriptingUtility
CS.UnityEngine.ScriptingUtility = UnityEngine.ScriptingUtility

---@return UnityEngine.ScriptingUtility
function UnityEngine.ScriptingUtility.New() end

---@class UnityEngine.ScriptingUtility.TestClass : System.ValueType
---@field value number
UnityEngine.ScriptingUtility.TestClass = {}
---@alias CS.UnityEngine.ScriptingUtility.TestClass UnityEngine.ScriptingUtility.TestClass
CS.UnityEngine.ScriptingUtility.TestClass = UnityEngine.ScriptingUtility.TestClass


---@class UnityEngine.SelectionBaseAttribute : System.Attribute
UnityEngine.SelectionBaseAttribute = {}
---@alias CS.UnityEngine.SelectionBaseAttribute UnityEngine.SelectionBaseAttribute
CS.UnityEngine.SelectionBaseAttribute = UnityEngine.SelectionBaseAttribute

---@return UnityEngine.SelectionBaseAttribute
function UnityEngine.SelectionBaseAttribute.New() end

---@class UnityEngine.StackTraceUtility : System.Object
UnityEngine.StackTraceUtility = {}
---@alias CS.UnityEngine.StackTraceUtility UnityEngine.StackTraceUtility
CS.UnityEngine.StackTraceUtility = UnityEngine.StackTraceUtility

---@return string
function UnityEngine.StackTraceUtility.ExtractStackTrace() end
---@param exception System.Object
---@return string
function UnityEngine.StackTraceUtility.ExtractStringFromException(exception) end

---@class UnityEngine.UnityException : System.SystemException
UnityEngine.UnityException = {}
---@alias CS.UnityEngine.UnityException UnityEngine.UnityException
CS.UnityEngine.UnityException = UnityEngine.UnityException

---@overload fun() : UnityEngine.UnityException
---@overload fun(message: string) : UnityEngine.UnityException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.UnityException
function UnityEngine.UnityException.New(message, innerException) end

---@class UnityEngine.MissingComponentException : System.SystemException
UnityEngine.MissingComponentException = {}
---@alias CS.UnityEngine.MissingComponentException UnityEngine.MissingComponentException
CS.UnityEngine.MissingComponentException = UnityEngine.MissingComponentException

---@overload fun() : UnityEngine.MissingComponentException
---@overload fun(message: string) : UnityEngine.MissingComponentException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.MissingComponentException
function UnityEngine.MissingComponentException.New(message, innerException) end

---@class UnityEngine.UnassignedReferenceException : System.SystemException
UnityEngine.UnassignedReferenceException = {}
---@alias CS.UnityEngine.UnassignedReferenceException UnityEngine.UnassignedReferenceException
CS.UnityEngine.UnassignedReferenceException = UnityEngine.UnassignedReferenceException

---@overload fun() : UnityEngine.UnassignedReferenceException
---@overload fun(message: string) : UnityEngine.UnassignedReferenceException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.UnassignedReferenceException
function UnityEngine.UnassignedReferenceException.New(message, innerException) end

---@class UnityEngine.MissingReferenceException : System.SystemException
UnityEngine.MissingReferenceException = {}
---@alias CS.UnityEngine.MissingReferenceException UnityEngine.MissingReferenceException
CS.UnityEngine.MissingReferenceException = UnityEngine.MissingReferenceException

---@overload fun() : UnityEngine.MissingReferenceException
---@overload fun(message: string) : UnityEngine.MissingReferenceException
---@param message string
---@param innerException System.Exception
---@return UnityEngine.MissingReferenceException
function UnityEngine.MissingReferenceException.New(message, innerException) end

---@class UnityEngine.TextAsset : UnityEngine.Object
---@field bytes System.Byte[]
---@field text string
---@field dataSize number
UnityEngine.TextAsset = {}
---@alias CS.UnityEngine.TextAsset UnityEngine.TextAsset
CS.UnityEngine.TextAsset = UnityEngine.TextAsset

---@overload fun() : UnityEngine.TextAsset
---@param text string
---@return UnityEngine.TextAsset
function UnityEngine.TextAsset.New(text) end
---@return string
function UnityEngine.TextAsset:ToString() end

---@class UnityEngine.TextAsset.CreateOptions
---@field None UnityEngine.TextAsset.CreateOptions
---@field CreateNativeObject UnityEngine.TextAsset.CreateOptions
UnityEngine.TextAsset.CreateOptions = {}
---@alias CS.UnityEngine.TextAsset.CreateOptions UnityEngine.TextAsset.CreateOptions
CS.UnityEngine.TextAsset.CreateOptions = UnityEngine.TextAsset.CreateOptions


---@class UnityEngine.TextAsset.EncodingUtility : System.Object
UnityEngine.TextAsset.EncodingUtility = {}
---@alias CS.UnityEngine.TextAsset.EncodingUtility UnityEngine.TextAsset.EncodingUtility
CS.UnityEngine.TextAsset.EncodingUtility = UnityEngine.TextAsset.EncodingUtility


---@class UnityEngine.TrackedReference : System.Object
UnityEngine.TrackedReference = {}
---@alias CS.UnityEngine.TrackedReference UnityEngine.TrackedReference
CS.UnityEngine.TrackedReference = UnityEngine.TrackedReference

---@param o System.Object
---@return boolean
function UnityEngine.TrackedReference:Equals(o) end
---@return number
function UnityEngine.TrackedReference:GetHashCode() end

---@class UnityEngine.UnhandledExceptionHandler : System.Object
UnityEngine.UnhandledExceptionHandler = {}
---@alias CS.UnityEngine.UnhandledExceptionHandler UnityEngine.UnhandledExceptionHandler
CS.UnityEngine.UnhandledExceptionHandler = UnityEngine.UnhandledExceptionHandler

---@return UnityEngine.UnhandledExceptionHandler
function UnityEngine.UnhandledExceptionHandler.New() end

---@class UnityEngine.UnityAPICompatibilityVersionAttribute : System.Attribute
---@field version string
UnityEngine.UnityAPICompatibilityVersionAttribute = {}
---@alias CS.UnityEngine.UnityAPICompatibilityVersionAttribute UnityEngine.UnityAPICompatibilityVersionAttribute
CS.UnityEngine.UnityAPICompatibilityVersionAttribute = UnityEngine.UnityAPICompatibilityVersionAttribute

---@overload fun(version: string) : UnityEngine.UnityAPICompatibilityVersionAttribute
---@overload fun(version: string, checkOnlyUnityVersion: boolean) : UnityEngine.UnityAPICompatibilityVersionAttribute
---@param version string
---@param configurationAssembliesHashes System.String[]
---@return UnityEngine.UnityAPICompatibilityVersionAttribute
function UnityEngine.UnityAPICompatibilityVersionAttribute.New(version, configurationAssembliesHashes) end

---@class UnityEngine.HideFlags
---@field None UnityEngine.HideFlags
---@field HideInHierarchy UnityEngine.HideFlags
---@field HideInInspector UnityEngine.HideFlags
---@field DontSaveInEditor UnityEngine.HideFlags
---@field NotEditable UnityEngine.HideFlags
---@field DontSaveInBuild UnityEngine.HideFlags
---@field DontUnloadUnusedAsset UnityEngine.HideFlags
---@field DontSave UnityEngine.HideFlags
---@field HideAndDontSave UnityEngine.HideFlags
UnityEngine.HideFlags = {}
---@alias CS.UnityEngine.HideFlags UnityEngine.HideFlags
CS.UnityEngine.HideFlags = UnityEngine.HideFlags


---@class UnityEngine.FindObjectsSortMode
---@field None UnityEngine.FindObjectsSortMode
---@field InstanceID UnityEngine.FindObjectsSortMode
UnityEngine.FindObjectsSortMode = {}
---@alias CS.UnityEngine.FindObjectsSortMode UnityEngine.FindObjectsSortMode
CS.UnityEngine.FindObjectsSortMode = UnityEngine.FindObjectsSortMode


---@class UnityEngine.FindObjectsInactive
---@field Exclude UnityEngine.FindObjectsInactive
---@field Include UnityEngine.FindObjectsInactive
UnityEngine.FindObjectsInactive = {}
---@alias CS.UnityEngine.FindObjectsInactive UnityEngine.FindObjectsInactive
CS.UnityEngine.FindObjectsInactive = UnityEngine.FindObjectsInactive


---@class UnityEngine.Object : System.Object
---@field name string
---@field hideFlags UnityEngine.HideFlags
UnityEngine.Object = {}
---@alias CS.UnityEngine.Object UnityEngine.Object
CS.UnityEngine.Object = UnityEngine.Object

---@return UnityEngine.Object
function UnityEngine.Object.New() end
---@overload fun(original: UnityEngine.Object, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion) : UnityEngine.Object
---@overload fun(original: UnityEngine.Object, position: UnityEngine.Vector3, rotation: UnityEngine.Quaternion, parent: UnityEngine.Transform) : UnityEngine.Object
---@overload fun(original: UnityEngine.Object) : UnityEngine.Object
---@overload fun(original: UnityEngine.Object, scene: UnityEngine.SceneManagement.Scene) : UnityEngine.Object
---@overload fun(original: UnityEngine.Object, parent: UnityEngine.Transform) : UnityEngine.Object
---@param original UnityEngine.Object
---@param parent UnityEngine.Transform
---@param instantiateInWorldSpace boolean
---@return UnityEngine.Object
function UnityEngine.Object.Instantiate(original, parent, instantiateInWorldSpace) end
---@overload fun(obj: UnityEngine.Object, t: number)
---@param obj UnityEngine.Object
function UnityEngine.Object.Destroy(obj) end
---@overload fun(obj: UnityEngine.Object, allowDestroyingAssets: boolean)
---@param obj UnityEngine.Object
function UnityEngine.Object.DestroyImmediate(obj) end
---@overload fun(type: System.Type) : UnityEngine.Object[]
---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Object[]
function UnityEngine.Object.FindObjectsOfType(type, includeInactive) end
---@overload fun(type: System.Type, sortMode: UnityEngine.FindObjectsSortMode) : UnityEngine.Object[]
---@param type System.Type
---@param findObjectsInactive UnityEngine.FindObjectsInactive
---@param sortMode UnityEngine.FindObjectsSortMode
---@return UnityEngine.Object[]
function UnityEngine.Object.FindObjectsByType(type, findObjectsInactive, sortMode) end
---@param target UnityEngine.Object
function UnityEngine.Object.DontDestroyOnLoad(target) end
---@overload fun(type: System.Type) : UnityEngine.Object
---@param type System.Type
---@param includeInactive boolean
---@return UnityEngine.Object
function UnityEngine.Object.FindObjectOfType(type, includeInactive) end
---@overload fun(type: System.Type) : UnityEngine.Object
---@param type System.Type
---@param findObjectsInactive UnityEngine.FindObjectsInactive
---@return UnityEngine.Object
function UnityEngine.Object.FindFirstObjectByType(type, findObjectsInactive) end
---@overload fun(type: System.Type) : UnityEngine.Object
---@param type System.Type
---@param findObjectsInactive UnityEngine.FindObjectsInactive
---@return UnityEngine.Object
function UnityEngine.Object.FindAnyObjectByType(type, findObjectsInactive) end
---@return number
function UnityEngine.Object:GetInstanceID() end
---@return number
function UnityEngine.Object:GetHashCode() end
---@param other System.Object
---@return boolean
function UnityEngine.Object:Equals(other) end
---@return string
function UnityEngine.Object:ToString() end

---@class UnityEngine.UnitySynchronizationContext : System.Threading.SynchronizationContext
UnityEngine.UnitySynchronizationContext = {}
---@alias CS.UnityEngine.UnitySynchronizationContext UnityEngine.UnitySynchronizationContext
CS.UnityEngine.UnitySynchronizationContext = UnityEngine.UnitySynchronizationContext

---@param callback System.Threading.SendOrPostCallback
---@param state System.Object
function UnityEngine.UnitySynchronizationContext:Send(callback, state) end
function UnityEngine.UnitySynchronizationContext:OperationStarted() end
function UnityEngine.UnitySynchronizationContext:OperationCompleted() end
---@param callback System.Threading.SendOrPostCallback
---@param state System.Object
function UnityEngine.UnitySynchronizationContext:Post(callback, state) end
---@return System.Threading.SynchronizationContext
function UnityEngine.UnitySynchronizationContext:CreateCopy() end
function UnityEngine.UnitySynchronizationContext:Exec() end

---@class UnityEngine.UnitySynchronizationContext.WorkRequest : System.ValueType
UnityEngine.UnitySynchronizationContext.WorkRequest = {}
---@alias CS.UnityEngine.UnitySynchronizationContext.WorkRequest UnityEngine.UnitySynchronizationContext.WorkRequest
CS.UnityEngine.UnitySynchronizationContext.WorkRequest = UnityEngine.UnitySynchronizationContext.WorkRequest

---@param callback System.Threading.SendOrPostCallback
---@param state System.Object
---@param waitHandle System.Threading.ManualResetEvent
---@return UnityEngine.UnitySynchronizationContext.WorkRequest
function UnityEngine.UnitySynchronizationContext.WorkRequest.New(callback, state, waitHandle) end
function UnityEngine.UnitySynchronizationContext.WorkRequest:Invoke() end

---@class UnityEngine.WaitForEndOfFrame : UnityEngine.YieldInstruction
UnityEngine.WaitForEndOfFrame = {}
---@alias CS.UnityEngine.WaitForEndOfFrame UnityEngine.WaitForEndOfFrame
CS.UnityEngine.WaitForEndOfFrame = UnityEngine.WaitForEndOfFrame

---@return UnityEngine.WaitForEndOfFrame
function UnityEngine.WaitForEndOfFrame.New() end

---@class UnityEngine.WaitForFixedUpdate : UnityEngine.YieldInstruction
UnityEngine.WaitForFixedUpdate = {}
---@alias CS.UnityEngine.WaitForFixedUpdate UnityEngine.WaitForFixedUpdate
CS.UnityEngine.WaitForFixedUpdate = UnityEngine.WaitForFixedUpdate

---@return UnityEngine.WaitForFixedUpdate
function UnityEngine.WaitForFixedUpdate.New() end

---@class UnityEngine.WaitForSeconds : UnityEngine.YieldInstruction
UnityEngine.WaitForSeconds = {}
---@alias CS.UnityEngine.WaitForSeconds UnityEngine.WaitForSeconds
CS.UnityEngine.WaitForSeconds = UnityEngine.WaitForSeconds

---@param seconds number
---@return UnityEngine.WaitForSeconds
function UnityEngine.WaitForSeconds.New(seconds) end

---@class UnityEngine.WaitForSecondsRealtime : UnityEngine.CustomYieldInstruction
---@field waitTime number
---@field keepWaiting boolean
UnityEngine.WaitForSecondsRealtime = {}
---@alias CS.UnityEngine.WaitForSecondsRealtime UnityEngine.WaitForSecondsRealtime
CS.UnityEngine.WaitForSecondsRealtime = UnityEngine.WaitForSecondsRealtime

---@param time number
---@return UnityEngine.WaitForSecondsRealtime
function UnityEngine.WaitForSecondsRealtime.New(time) end
function UnityEngine.WaitForSecondsRealtime:Reset() end

---@class UnityEngine.WaitUntil : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
UnityEngine.WaitUntil = {}
---@alias CS.UnityEngine.WaitUntil UnityEngine.WaitUntil
CS.UnityEngine.WaitUntil = UnityEngine.WaitUntil

---@param predicate System.Func
---@return UnityEngine.WaitUntil
function UnityEngine.WaitUntil.New(predicate) end

---@class UnityEngine.WaitWhile : UnityEngine.CustomYieldInstruction
---@field keepWaiting boolean
UnityEngine.WaitWhile = {}
---@alias CS.UnityEngine.WaitWhile UnityEngine.WaitWhile
CS.UnityEngine.WaitWhile = UnityEngine.WaitWhile

---@param predicate System.Func
---@return UnityEngine.WaitWhile
function UnityEngine.WaitWhile.New(predicate) end

---@class UnityEngine.YieldInstruction : System.Object
UnityEngine.YieldInstruction = {}
---@alias CS.UnityEngine.YieldInstruction UnityEngine.YieldInstruction
CS.UnityEngine.YieldInstruction = UnityEngine.YieldInstruction

---@return UnityEngine.YieldInstruction
function UnityEngine.YieldInstruction.New() end

---@class UnityEngine.Security : System.Object
UnityEngine.Security = {}
---@alias CS.UnityEngine.Security UnityEngine.Security
CS.UnityEngine.Security = UnityEngine.Security

---@return UnityEngine.Security
function UnityEngine.Security.New() end

---@class UnityEngine.Types : System.Object
UnityEngine.Types = {}
---@alias CS.UnityEngine.Types UnityEngine.Types
CS.UnityEngine.Types = UnityEngine.Types


---@class UnityEngine.SerializeField : System.Attribute
UnityEngine.SerializeField = {}
---@alias CS.UnityEngine.SerializeField UnityEngine.SerializeField
CS.UnityEngine.SerializeField = UnityEngine.SerializeField

---@return UnityEngine.SerializeField
function UnityEngine.SerializeField.New() end

---@class UnityEngine.SerializeReference : System.Attribute
UnityEngine.SerializeReference = {}
---@alias CS.UnityEngine.SerializeReference UnityEngine.SerializeReference
CS.UnityEngine.SerializeReference = UnityEngine.SerializeReference

---@return UnityEngine.SerializeReference
function UnityEngine.SerializeReference.New() end

---@class UnityEngine.PreferBinarySerialization : System.Attribute
UnityEngine.PreferBinarySerialization = {}
---@alias CS.UnityEngine.PreferBinarySerialization UnityEngine.PreferBinarySerialization
CS.UnityEngine.PreferBinarySerialization = UnityEngine.PreferBinarySerialization

---@return UnityEngine.PreferBinarySerialization
function UnityEngine.PreferBinarySerialization.New() end

---@class UnityEngine.ISerializationCallbackReceiver
UnityEngine.ISerializationCallbackReceiver = {}
---@alias CS.UnityEngine.ISerializationCallbackReceiver UnityEngine.ISerializationCallbackReceiver
CS.UnityEngine.ISerializationCallbackReceiver = UnityEngine.ISerializationCallbackReceiver

function UnityEngine.ISerializationCallbackReceiver:OnBeforeSerialize() end
function UnityEngine.ISerializationCallbackReceiver:OnAfterDeserialize() end

---@class UnityEngine.ComputeBuffer : System.Object
---@field count number
---@field stride number
---@field name string
UnityEngine.ComputeBuffer = {}
---@alias CS.UnityEngine.ComputeBuffer UnityEngine.ComputeBuffer
CS.UnityEngine.ComputeBuffer = UnityEngine.ComputeBuffer

---@overload fun(count: number, stride: number) : UnityEngine.ComputeBuffer
---@overload fun(count: number, stride: number, type: UnityEngine.ComputeBufferType) : UnityEngine.ComputeBuffer
---@param count number
---@param stride number
---@param type UnityEngine.ComputeBufferType
---@param usage UnityEngine.ComputeBufferMode
---@return UnityEngine.ComputeBuffer
function UnityEngine.ComputeBuffer.New(count, stride, type, usage) end
---@param src UnityEngine.ComputeBuffer
---@param dst UnityEngine.ComputeBuffer
---@param dstOffsetBytes number
function UnityEngine.ComputeBuffer.CopyCount(src, dst, dstOffsetBytes) end
function UnityEngine.ComputeBuffer:Dispose() end
function UnityEngine.ComputeBuffer:Release() end
---@return boolean
function UnityEngine.ComputeBuffer:IsValid() end
---@overload fun(self: UnityEngine.ComputeBuffer, data: System.Array)
---@param data System.Array
---@param managedBufferStartIndex number
---@param computeBufferStartIndex number
---@param count number
function UnityEngine.ComputeBuffer:SetData(data, managedBufferStartIndex, computeBufferStartIndex, count) end
---@overload fun(self: UnityEngine.ComputeBuffer, data: System.Array)
---@param data System.Array
---@param managedBufferStartIndex number
---@param computeBufferStartIndex number
---@param count number
function UnityEngine.ComputeBuffer:GetData(data, managedBufferStartIndex, computeBufferStartIndex, count) end
---@param counterValue number
function UnityEngine.ComputeBuffer:SetCounterValue(counterValue) end
---@return System.IntPtr
function UnityEngine.ComputeBuffer:GetNativeBufferPtr() end

---@class UnityEngine.ComputeShader : UnityEngine.Object
---@field keywordSpace UnityEngine.Rendering.LocalKeywordSpace
---@field shaderKeywords System.String[]
---@field enabledKeywords UnityEngine.Rendering.LocalKeyword[]
UnityEngine.ComputeShader = {}
---@alias CS.UnityEngine.ComputeShader UnityEngine.ComputeShader
CS.UnityEngine.ComputeShader = UnityEngine.ComputeShader

---@param name string
---@return number
function UnityEngine.ComputeShader:FindKernel(name) end
---@param name string
---@return boolean
function UnityEngine.ComputeShader:HasKernel(name) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, val: number)
---@param name string
---@param val number
function UnityEngine.ComputeShader:SetFloat(name, val) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, val: number)
---@param name string
---@param val number
function UnityEngine.ComputeShader:SetInt(name, val) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, val: UnityEngine.Vector4)
---@param name string
---@param val UnityEngine.Vector4
function UnityEngine.ComputeShader:SetVector(name, val) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, val: UnityEngine.Matrix4x4)
---@param name string
---@param val UnityEngine.Matrix4x4
function UnityEngine.ComputeShader:SetMatrix(name, val) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, values: UnityEngine.Vector4[])
---@param name string
---@param values UnityEngine.Vector4[]
function UnityEngine.ComputeShader:SetVectorArray(name, values) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, values: UnityEngine.Matrix4x4[])
---@param name string
---@param values UnityEngine.Matrix4x4[]
function UnityEngine.ComputeShader:SetMatrixArray(name, values) end
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, texture: UnityEngine.Texture, mipLevel: number)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, texture: UnityEngine.Texture)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, name: string, texture: UnityEngine.Texture)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, name: string, texture: UnityEngine.Texture, mipLevel: number)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, texture: UnityEngine.RenderTexture, mipLevel: number, element: UnityEngine.Rendering.RenderTextureSubElement)
---@param kernelIndex number
---@param name string
---@param texture UnityEngine.RenderTexture
---@param mipLevel number
---@param element UnityEngine.Rendering.RenderTextureSubElement
function UnityEngine.ComputeShader:SetTexture(kernelIndex, name, texture, mipLevel, element) end
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, globalTextureNameID: number)
---@param kernelIndex number
---@param name string
---@param globalTextureName string
function UnityEngine.ComputeShader:SetTextureFromGlobal(kernelIndex, name, globalTextureName) end
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, buffer: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, nameID: number, buffer: UnityEngine.GraphicsBuffer)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, name: string, buffer: UnityEngine.ComputeBuffer)
---@param kernelIndex number
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
function UnityEngine.ComputeShader:SetBuffer(kernelIndex, name, buffer) end
---@param kernelIndex number
---@param out_x number
---@param out_y number
---@param out_z number
---@return ,number,number,number
function UnityEngine.ComputeShader:GetKernelThreadGroupSizes(kernelIndex, out_x, out_y, out_z) end
---@param kernelIndex number
---@param threadGroupsX number
---@param threadGroupsY number
---@param threadGroupsZ number
function UnityEngine.ComputeShader:Dispatch(kernelIndex, threadGroupsX, threadGroupsY, threadGroupsZ) end
---@overload fun(self: UnityEngine.ComputeShader, keyword: string)
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.ComputeShader:EnableKeyword(ref_keyword) end
---@overload fun(self: UnityEngine.ComputeShader, keyword: string)
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.ComputeShader:DisableKeyword(ref_keyword) end
---@overload fun(self: UnityEngine.ComputeShader, keyword: string) : boolean
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@return boolean,UnityEngine.Rendering.LocalKeyword
function UnityEngine.ComputeShader:IsKeywordEnabled(ref_keyword) end
---@param ref_keyword UnityEngine.Rendering.LocalKeyword
---@param value boolean
---@return ,UnityEngine.Rendering.LocalKeyword
function UnityEngine.ComputeShader:SetKeyword(ref_keyword, value) end
---@param kernelIndex number
---@return boolean
function UnityEngine.ComputeShader:IsSupported(kernelIndex) end
---@overload fun(self: UnityEngine.ComputeShader, name: string, values: System.Single[])
---@param nameID number
---@param values System.Single[]
function UnityEngine.ComputeShader:SetFloats(nameID, values) end
---@overload fun(self: UnityEngine.ComputeShader, name: string, values: System.Int32[])
---@param nameID number
---@param values System.Int32[]
function UnityEngine.ComputeShader:SetInts(nameID, values) end
---@overload fun(self: UnityEngine.ComputeShader, name: string, val: boolean)
---@param nameID number
---@param val boolean
function UnityEngine.ComputeShader:SetBool(nameID, val) end
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.ComputeShader, name: string, buffer: UnityEngine.ComputeBuffer, offset: number, size: number)
---@overload fun(self: UnityEngine.ComputeShader, nameID: number, buffer: UnityEngine.GraphicsBuffer, offset: number, size: number)
---@param name string
---@param buffer UnityEngine.GraphicsBuffer
---@param offset number
---@param size number
function UnityEngine.ComputeShader:SetConstantBuffer(name, buffer, offset, size) end
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, argsBuffer: UnityEngine.ComputeBuffer, argsOffset: number)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, argsBuffer: UnityEngine.ComputeBuffer)
---@overload fun(self: UnityEngine.ComputeShader, kernelIndex: number, argsBuffer: UnityEngine.GraphicsBuffer, argsOffset: number)
---@param kernelIndex number
---@param argsBuffer UnityEngine.GraphicsBuffer
function UnityEngine.ComputeShader:DispatchIndirect(kernelIndex, argsBuffer) end

---@class UnityEngine.MaterialPropertyType
---@field Float UnityEngine.MaterialPropertyType
---@field Int UnityEngine.MaterialPropertyType
---@field Vector UnityEngine.MaterialPropertyType
---@field Matrix UnityEngine.MaterialPropertyType
---@field Texture UnityEngine.MaterialPropertyType
---@field ConstantBuffer UnityEngine.MaterialPropertyType
---@field ComputeBuffer UnityEngine.MaterialPropertyType
UnityEngine.MaterialPropertyType = {}
---@alias CS.UnityEngine.MaterialPropertyType UnityEngine.MaterialPropertyType
CS.UnityEngine.MaterialPropertyType = UnityEngine.MaterialPropertyType


---@class UnityEngine.DisableBatchingType
---@field False UnityEngine.DisableBatchingType
---@field True UnityEngine.DisableBatchingType
---@field WhenLODFading UnityEngine.DisableBatchingType
UnityEngine.DisableBatchingType = {}
---@alias CS.UnityEngine.DisableBatchingType UnityEngine.DisableBatchingType
CS.UnityEngine.DisableBatchingType = UnityEngine.DisableBatchingType


---@class UnityEngine.ShaderVariantCollection : UnityEngine.Object
---@field shaderCount number
---@field variantCount number
---@field warmedUpVariantCount number
---@field isWarmedUp boolean
UnityEngine.ShaderVariantCollection = {}
---@alias CS.UnityEngine.ShaderVariantCollection UnityEngine.ShaderVariantCollection
CS.UnityEngine.ShaderVariantCollection = UnityEngine.ShaderVariantCollection

---@return UnityEngine.ShaderVariantCollection
function UnityEngine.ShaderVariantCollection.New() end
function UnityEngine.ShaderVariantCollection:Clear() end
function UnityEngine.ShaderVariantCollection:WarmUp() end
---@param variantCount number
---@return boolean
function UnityEngine.ShaderVariantCollection:WarmUpProgressively(variantCount) end
---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return boolean
function UnityEngine.ShaderVariantCollection:Add(variant) end
---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return boolean
function UnityEngine.ShaderVariantCollection:Remove(variant) end
---@param variant UnityEngine.ShaderVariantCollection.ShaderVariant
---@return boolean
function UnityEngine.ShaderVariantCollection:Contains(variant) end

---@class UnityEngine.ShaderVariantCollection.ShaderVariant : System.ValueType
---@field shader UnityEngine.Shader
---@field passType UnityEngine.Rendering.PassType
---@field keywords System.String[]
UnityEngine.ShaderVariantCollection.ShaderVariant = {}
---@alias CS.UnityEngine.ShaderVariantCollection.ShaderVariant UnityEngine.ShaderVariantCollection.ShaderVariant
CS.UnityEngine.ShaderVariantCollection.ShaderVariant = UnityEngine.ShaderVariantCollection.ShaderVariant

---@param shader UnityEngine.Shader
---@param passType UnityEngine.Rendering.PassType
---@param keywords System.String[]
---@return UnityEngine.ShaderVariantCollection.ShaderVariant
function UnityEngine.ShaderVariantCollection.ShaderVariant.New(shader, passType, keywords) end

---@class UnityEngine.SnapAxis
---@field None UnityEngine.SnapAxis
---@field X UnityEngine.SnapAxis
---@field Y UnityEngine.SnapAxis
---@field Z UnityEngine.SnapAxis
---@field All UnityEngine.SnapAxis
UnityEngine.SnapAxis = {}
---@alias CS.UnityEngine.SnapAxis UnityEngine.SnapAxis
CS.UnityEngine.SnapAxis = UnityEngine.SnapAxis


---@class UnityEngine.SnapAxisFilter : System.ValueType
---@field all UnityEngine.SnapAxisFilter
---@field x number
---@field y number
---@field z number
---@field active number
---@field Item number
UnityEngine.SnapAxisFilter = {}
---@alias CS.UnityEngine.SnapAxisFilter UnityEngine.SnapAxisFilter
CS.UnityEngine.SnapAxisFilter = UnityEngine.SnapAxisFilter

---@overload fun(v: UnityEngine.Vector3) : UnityEngine.SnapAxisFilter
---@param axis UnityEngine.SnapAxis
---@return UnityEngine.SnapAxisFilter
function UnityEngine.SnapAxisFilter.New(axis) end
---@return string
function UnityEngine.SnapAxisFilter:ToString() end
---@overload fun(self: UnityEngine.SnapAxisFilter, other: UnityEngine.SnapAxisFilter) : boolean
---@param obj System.Object
---@return boolean
function UnityEngine.SnapAxisFilter:Equals(obj) end
---@return number
function UnityEngine.SnapAxisFilter:GetHashCode() end

---@class UnityEngine.Snapping : System.Object
UnityEngine.Snapping = {}
---@alias CS.UnityEngine.Snapping UnityEngine.Snapping
CS.UnityEngine.Snapping = UnityEngine.Snapping

---@overload fun(val: number, snap: number) : number
---@overload fun(val: UnityEngine.Vector2, snap: UnityEngine.Vector2) : UnityEngine.Vector2
---@param val UnityEngine.Vector3
---@param snap UnityEngine.Vector3
---@param axis UnityEngine.SnapAxis
---@return UnityEngine.Vector3
function UnityEngine.Snapping.Snap(val, snap, axis) end

---@class UnityEngine.StaticBatchingUtility : System.Object
UnityEngine.StaticBatchingUtility = {}
---@alias CS.UnityEngine.StaticBatchingUtility UnityEngine.StaticBatchingUtility
CS.UnityEngine.StaticBatchingUtility = UnityEngine.StaticBatchingUtility

---@return UnityEngine.StaticBatchingUtility
function UnityEngine.StaticBatchingUtility.New() end
---@overload fun(staticBatchRoot: UnityEngine.GameObject)
---@param gos UnityEngine.GameObject[]
---@param staticBatchRoot UnityEngine.GameObject
function UnityEngine.StaticBatchingUtility.Combine(gos, staticBatchRoot) end

---@class UnityEngine.MeshSubsetCombineUtility : System.Object
UnityEngine.MeshSubsetCombineUtility = {}
---@alias CS.UnityEngine.MeshSubsetCombineUtility UnityEngine.MeshSubsetCombineUtility
CS.UnityEngine.MeshSubsetCombineUtility = UnityEngine.MeshSubsetCombineUtility

---@return UnityEngine.MeshSubsetCombineUtility
function UnityEngine.MeshSubsetCombineUtility.New() end

---@class UnityEngine.MeshSubsetCombineUtility.MeshInstance : System.ValueType
---@field meshInstanceID number
---@field rendererInstanceID number
---@field additionalVertexStreamsMeshInstanceID number
---@field enlightenVertexStreamMeshInstanceID number
---@field transform UnityEngine.Matrix4x4
---@field lightmapScaleOffset UnityEngine.Vector4
---@field realtimeLightmapScaleOffset UnityEngine.Vector4
UnityEngine.MeshSubsetCombineUtility.MeshInstance = {}
---@alias CS.UnityEngine.MeshSubsetCombineUtility.MeshInstance UnityEngine.MeshSubsetCombineUtility.MeshInstance
CS.UnityEngine.MeshSubsetCombineUtility.MeshInstance = UnityEngine.MeshSubsetCombineUtility.MeshInstance


---@class UnityEngine.MeshSubsetCombineUtility.SubMeshInstance : System.ValueType
---@field meshInstanceID number
---@field vertexOffset number
---@field gameObjectInstanceID number
---@field subMeshIndex number
---@field transform UnityEngine.Matrix4x4
UnityEngine.MeshSubsetCombineUtility.SubMeshInstance = {}
---@alias CS.UnityEngine.MeshSubsetCombineUtility.SubMeshInstance UnityEngine.MeshSubsetCombineUtility.SubMeshInstance
CS.UnityEngine.MeshSubsetCombineUtility.SubMeshInstance = UnityEngine.MeshSubsetCombineUtility.SubMeshInstance


---@class UnityEngine.MeshSubsetCombineUtility.MeshContainer : System.ValueType
---@field gameObject UnityEngine.GameObject
---@field instance UnityEngine.MeshSubsetCombineUtility.MeshInstance
---@field subMeshInstances System.Collections.Generic.List
UnityEngine.MeshSubsetCombineUtility.MeshContainer = {}
---@alias CS.UnityEngine.MeshSubsetCombineUtility.MeshContainer UnityEngine.MeshSubsetCombineUtility.MeshContainer
CS.UnityEngine.MeshSubsetCombineUtility.MeshContainer = UnityEngine.MeshSubsetCombineUtility.MeshContainer


---@class UnityEngine.ApplicationShimBase : System.Object
---@field absoluteURL string
---@field backgroundLoadingPriority UnityEngine.ThreadPriority
---@field buildGUID string
---@field cloudProjectId string
---@field companyName string
---@field consoleLogPath string
---@field dataPath string
---@field genuine boolean
---@field genuineCheckAvailable boolean
---@field identifier string
---@field installerName string
---@field installMode UnityEngine.ApplicationInstallMode
---@field internetReachability UnityEngine.NetworkReachability
---@field isBatchMode boolean
---@field isConsolePlatform boolean
---@field isEditor boolean
---@field isFocused boolean
---@field isMobilePlatform boolean
---@field isPlaying boolean
---@field persistentDataPath string
---@field platform UnityEngine.RuntimePlatform
---@field productName string
---@field runInBackground boolean
---@field sandboxType UnityEngine.ApplicationSandboxType
---@field streamingAssetsPath string
---@field systemLanguage UnityEngine.SystemLanguage
---@field targetFrameRate number
---@field temporaryCachePath string
---@field unityVersion string
---@field version string
---@field exitCancellationToken System.Threading.CancellationToken
UnityEngine.ApplicationShimBase = {}
---@alias CS.UnityEngine.ApplicationShimBase UnityEngine.ApplicationShimBase
CS.UnityEngine.ApplicationShimBase = UnityEngine.ApplicationShimBase

---@return UnityEngine.ApplicationShimBase
function UnityEngine.ApplicationShimBase.New() end
function UnityEngine.ApplicationShimBase:Dispose() end
---@return boolean
function UnityEngine.ApplicationShimBase:IsActive() end
---@overload fun(self: UnityEngine.ApplicationShimBase, levelIndex: number) : boolean
---@param levelName string
---@return boolean
function UnityEngine.ApplicationShimBase:CanStreamedLevelBeLoaded(levelName) end
---@return System.String[]
function UnityEngine.ApplicationShimBase:GetBuildTags() end
---@param buildTags System.String[]
function UnityEngine.ApplicationShimBase:SetBuildTags(buildTags) end
---@param logType UnityEngine.LogType
---@return UnityEngine.StackTraceLogType
function UnityEngine.ApplicationShimBase:GetStackTraceLogType(logType) end
---@return boolean
function UnityEngine.ApplicationShimBase:HasProLicense() end
---@param mode UnityEngine.UserAuthorization
---@return boolean
function UnityEngine.ApplicationShimBase:HasUserAuthorization(mode) end
---@param obj UnityEngine.Object
---@return boolean
function UnityEngine.ApplicationShimBase:IsPlaying(obj) end
---@param url string
function UnityEngine.ApplicationShimBase:OpenURL(url) end
---@overload fun()
---@param exitCode number
function UnityEngine.ApplicationShimBase:Quit(exitCode) end
---@param delegateMethod UnityEngine.Application.AdvertisingIdentifierCallback
---@return boolean
function UnityEngine.ApplicationShimBase:RequestAdvertisingIdentifierAsync(delegateMethod) end
---@param mode UnityEngine.UserAuthorization
---@return UnityEngine.AsyncOperation
function UnityEngine.ApplicationShimBase:RequestUserAuthorization(mode) end
---@param logType UnityEngine.LogType
---@param stackTraceType UnityEngine.StackTraceLogType
function UnityEngine.ApplicationShimBase:SetStackTraceLogType(logType, stackTraceType) end
function UnityEngine.ApplicationShimBase:Unload() end

---@class UnityEngine.ScreenShimBase : System.Object
---@field width number
---@field height number
---@field dpi number
---@field currentResolution UnityEngine.Resolution
---@field resolutions UnityEngine.Resolution[]
---@field fullScreen boolean
---@field fullScreenMode UnityEngine.FullScreenMode
---@field safeArea UnityEngine.Rect
---@field cutouts UnityEngine.Rect[]
---@field autorotateToPortrait boolean
---@field autorotateToPortraitUpsideDown boolean
---@field autorotateToLandscapeLeft boolean
---@field autorotateToLandscapeRight boolean
---@field orientation UnityEngine.ScreenOrientation
---@field sleepTimeout number
---@field brightness number
---@field mainWindowPosition UnityEngine.Vector2Int
---@field mainWindowDisplayInfo UnityEngine.DisplayInfo
UnityEngine.ScreenShimBase = {}
---@alias CS.UnityEngine.ScreenShimBase UnityEngine.ScreenShimBase
CS.UnityEngine.ScreenShimBase = UnityEngine.ScreenShimBase

---@return UnityEngine.ScreenShimBase
function UnityEngine.ScreenShimBase.New() end
function UnityEngine.ScreenShimBase:Dispose() end
---@return boolean
function UnityEngine.ScreenShimBase:IsActive() end
---@param width number
---@param height number
---@param fullscreenMode UnityEngine.FullScreenMode
---@param preferredRefreshRate UnityEngine.RefreshRate
function UnityEngine.ScreenShimBase:SetResolution(width, height, fullscreenMode, preferredRefreshRate) end
---@param displayLayout System.Collections.Generic.List
function UnityEngine.ScreenShimBase:GetDisplayLayout(displayLayout) end
---@param ref_display UnityEngine.DisplayInfo
---@param position UnityEngine.Vector2Int
---@return UnityEngine.AsyncOperation,UnityEngine.DisplayInfo
function UnityEngine.ScreenShimBase:MoveMainWindowTo(ref_display, position) end

---@class UnityEngine.ShimManager : System.Object
UnityEngine.ShimManager = {}
---@alias CS.UnityEngine.ShimManager UnityEngine.ShimManager
CS.UnityEngine.ShimManager = UnityEngine.ShimManager

---@return UnityEngine.ShimManager
function UnityEngine.ShimManager.New() end

---@class UnityEngine.SystemInfoShimBase : System.Object
---@field unsupportedIdentifier string
---@field batteryLevel number
---@field batteryStatus UnityEngine.BatteryStatus
---@field operatingSystem string
---@field operatingSystemFamily UnityEngine.OperatingSystemFamily
---@field processorType string
---@field processorFrequency number
---@field processorCount number
---@field systemMemorySize number
---@field deviceUniqueIdentifier string
---@field deviceName string
---@field deviceModel string
---@field supportsAccelerometer boolean
---@field supportsGyroscope boolean
---@field supportsLocationService boolean
---@field supportsVibration boolean
---@field supportsAudio boolean
---@field deviceType UnityEngine.DeviceType
---@field graphicsMemorySize number
---@field graphicsDeviceName string
---@field graphicsDeviceVendor string
---@field graphicsDeviceID number
---@field graphicsDeviceVendorID number
---@field graphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType
---@field graphicsUVStartsAtTop boolean
---@field graphicsDeviceVersion string
---@field graphicsShaderLevel number
---@field graphicsMultiThreaded boolean
---@field renderingThreadingMode UnityEngine.Rendering.RenderingThreadingMode
---@field foveatedRenderingCaps UnityEngine.Rendering.FoveatedRenderingCaps
---@field hasHiddenSurfaceRemovalOnGPU boolean
---@field hasDynamicUniformArrayIndexingInFragmentShaders boolean
---@field supportsShadows boolean
---@field supportsRawShadowDepthSampling boolean
---@field supportsMotionVectors boolean
---@field supports3DTextures boolean
---@field supportsCompressed3DTextures boolean
---@field supports2DArrayTextures boolean
---@field supports3DRenderTextures boolean
---@field supportsCubemapArrayTextures boolean
---@field supportsAnisotropicFilter boolean
---@field copyTextureSupport UnityEngine.Rendering.CopyTextureSupport
---@field supportsComputeShaders boolean
---@field supportsGeometryShaders boolean
---@field supportsTessellationShaders boolean
---@field supportsRenderTargetArrayIndexFromVertexShader boolean
---@field supportsInstancing boolean
---@field supportsHardwareQuadTopology boolean
---@field supports32bitsIndexBuffer boolean
---@field supportsSparseTextures boolean
---@field supportedRenderTargetCount number
---@field supportsSeparatedRenderTargetsBlend boolean
---@field supportedRandomWriteTargetCount number
---@field supportsMultisampledTextures number
---@field supportsMultisampled2DArrayTextures boolean
---@field supportsMultisampleAutoResolve boolean
---@field supportsTextureWrapMirrorOnce number
---@field usesReversedZBuffer boolean
---@field npotSupport UnityEngine.NPOTSupport
---@field maxTextureSize number
---@field maxTexture3DSize number
---@field maxTextureArraySlices number
---@field maxCubemapSize number
---@field maxAnisotropyLevel number
---@field maxComputeBufferInputsVertex number
---@field maxComputeBufferInputsFragment number
---@field maxComputeBufferInputsGeometry number
---@field maxComputeBufferInputsDomain number
---@field maxComputeBufferInputsHull number
---@field maxComputeBufferInputsCompute number
---@field maxComputeWorkGroupSize number
---@field maxComputeWorkGroupSizeX number
---@field maxComputeWorkGroupSizeY number
---@field maxComputeWorkGroupSizeZ number
---@field computeSubGroupSize number
---@field supportsAsyncCompute boolean
---@field supportsGpuRecorder boolean
---@field supportsGraphicsFence boolean
---@field supportsAsyncGPUReadback boolean
---@field supportsRayTracing boolean
---@field supportsSetConstantBuffer boolean
---@field constantBufferOffsetAlignment number
---@field maxConstantBufferSize number
---@field maxGraphicsBufferSize number
---@field hasMipMaxLevel boolean
---@field supportsMipStreaming boolean
---@field usesLoadStoreActions boolean
---@field hdrDisplaySupportFlags UnityEngine.HDRDisplaySupportFlags
---@field supportsConservativeRaster boolean
---@field supportsMultiview boolean
---@field supportsStoreAndResolveAction boolean
---@field supportsMultisampleResolveDepth boolean
---@field supportsMultisampleResolveStencil boolean
---@field supportsIndirectArgumentsBuffer boolean
UnityEngine.SystemInfoShimBase = {}
---@alias CS.UnityEngine.SystemInfoShimBase UnityEngine.SystemInfoShimBase
CS.UnityEngine.SystemInfoShimBase = UnityEngine.SystemInfoShimBase

---@return UnityEngine.SystemInfoShimBase
function UnityEngine.SystemInfoShimBase.New() end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.SystemInfoShimBase:SupportsRenderTextureFormat(format) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.SystemInfoShimBase:SupportsBlendingOnRenderTextureFormat(format) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.SystemInfoShimBase:SupportsRandomWriteOnRenderTextureFormat(format) end
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.SystemInfoShimBase:SupportsTextureFormat(format) end
---@param format UnityEngine.Rendering.VertexAttributeFormat
---@param dimension number
---@return boolean
function UnityEngine.SystemInfoShimBase:SupportsVertexAttributeFormat(format, dimension) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return boolean
function UnityEngine.SystemInfoShimBase:IsFormatSupported(format, usage) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.SystemInfoShimBase:GetCompatibleFormat(format, usage) end
---@param format UnityEngine.Experimental.Rendering.DefaultFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.SystemInfoShimBase:GetGraphicsFormat(format) end
---@param desc UnityEngine.RenderTextureDescriptor
---@return number
function UnityEngine.SystemInfoShimBase:GetRenderTextureSupportedMSAASampleCount(desc) end

---@class UnityEngine.LowerResBlitTexture : UnityEngine.Object
UnityEngine.LowerResBlitTexture = {}
---@alias CS.UnityEngine.LowerResBlitTexture UnityEngine.LowerResBlitTexture
CS.UnityEngine.LowerResBlitTexture = UnityEngine.LowerResBlitTexture

---@return UnityEngine.LowerResBlitTexture
function UnityEngine.LowerResBlitTexture.New() end

---@class UnityEngine.PreloadData : UnityEngine.Object
UnityEngine.PreloadData = {}
---@alias CS.UnityEngine.PreloadData UnityEngine.PreloadData
CS.UnityEngine.PreloadData = UnityEngine.PreloadData

---@return UnityEngine.PreloadData
function UnityEngine.PreloadData.New() end

---@class UnityEngine.BatteryStatus
---@field Unknown UnityEngine.BatteryStatus
---@field Charging UnityEngine.BatteryStatus
---@field Discharging UnityEngine.BatteryStatus
---@field NotCharging UnityEngine.BatteryStatus
---@field Full UnityEngine.BatteryStatus
UnityEngine.BatteryStatus = {}
---@alias CS.UnityEngine.BatteryStatus UnityEngine.BatteryStatus
CS.UnityEngine.BatteryStatus = UnityEngine.BatteryStatus


---@class UnityEngine.OperatingSystemFamily
---@field Other UnityEngine.OperatingSystemFamily
---@field MacOSX UnityEngine.OperatingSystemFamily
---@field Windows UnityEngine.OperatingSystemFamily
---@field Linux UnityEngine.OperatingSystemFamily
UnityEngine.OperatingSystemFamily = {}
---@alias CS.UnityEngine.OperatingSystemFamily UnityEngine.OperatingSystemFamily
CS.UnityEngine.OperatingSystemFamily = UnityEngine.OperatingSystemFamily


---@class UnityEngine.DeviceType
---@field Unknown UnityEngine.DeviceType
---@field Handheld UnityEngine.DeviceType
---@field Console UnityEngine.DeviceType
---@field Desktop UnityEngine.DeviceType
UnityEngine.DeviceType = {}
---@alias CS.UnityEngine.DeviceType UnityEngine.DeviceType
CS.UnityEngine.DeviceType = UnityEngine.DeviceType


---@class UnityEngine.SystemInfo : System.Object
---@field unsupportedIdentifier string
---@field batteryLevel number
---@field batteryStatus UnityEngine.BatteryStatus
---@field operatingSystem string
---@field operatingSystemFamily UnityEngine.OperatingSystemFamily
---@field processorType string
---@field processorFrequency number
---@field processorCount number
---@field systemMemorySize number
---@field deviceUniqueIdentifier string
---@field deviceName string
---@field deviceModel string
---@field supportsAccelerometer boolean
---@field supportsGyroscope boolean
---@field supportsLocationService boolean
---@field supportsVibration boolean
---@field supportsAudio boolean
---@field deviceType UnityEngine.DeviceType
---@field graphicsMemorySize number
---@field graphicsDeviceName string
---@field graphicsDeviceVendor string
---@field graphicsDeviceID number
---@field graphicsDeviceVendorID number
---@field graphicsDeviceType UnityEngine.Rendering.GraphicsDeviceType
---@field graphicsUVStartsAtTop boolean
---@field graphicsDeviceVersion string
---@field graphicsShaderLevel number
---@field graphicsMultiThreaded boolean
---@field renderingThreadingMode UnityEngine.Rendering.RenderingThreadingMode
---@field foveatedRenderingCaps UnityEngine.Rendering.FoveatedRenderingCaps
---@field hasHiddenSurfaceRemovalOnGPU boolean
---@field hasDynamicUniformArrayIndexingInFragmentShaders boolean
---@field supportsShadows boolean
---@field supportsRawShadowDepthSampling boolean
---@field supportsMotionVectors boolean
---@field supports3DTextures boolean
---@field supportsCompressed3DTextures boolean
---@field supports2DArrayTextures boolean
---@field supports3DRenderTextures boolean
---@field supportsCubemapArrayTextures boolean
---@field supportsAnisotropicFilter boolean
---@field copyTextureSupport UnityEngine.Rendering.CopyTextureSupport
---@field supportsComputeShaders boolean
---@field supportsGeometryShaders boolean
---@field supportsTessellationShaders boolean
---@field supportsRenderTargetArrayIndexFromVertexShader boolean
---@field supportsInstancing boolean
---@field supportsHardwareQuadTopology boolean
---@field supports32bitsIndexBuffer boolean
---@field supportsSparseTextures boolean
---@field supportedRenderTargetCount number
---@field supportsSeparatedRenderTargetsBlend boolean
---@field supportedRandomWriteTargetCount number
---@field supportsMultisampledTextures number
---@field supportsMultisampled2DArrayTextures boolean
---@field supportsMultisampleAutoResolve boolean
---@field supportsTextureWrapMirrorOnce number
---@field usesReversedZBuffer boolean
---@field npotSupport UnityEngine.NPOTSupport
---@field maxTextureSize number
---@field maxTexture3DSize number
---@field maxTextureArraySlices number
---@field maxCubemapSize number
---@field maxAnisotropyLevel number
---@field maxComputeBufferInputsVertex number
---@field maxComputeBufferInputsFragment number
---@field maxComputeBufferInputsGeometry number
---@field maxComputeBufferInputsDomain number
---@field maxComputeBufferInputsHull number
---@field maxComputeBufferInputsCompute number
---@field maxComputeWorkGroupSize number
---@field maxComputeWorkGroupSizeX number
---@field maxComputeWorkGroupSizeY number
---@field maxComputeWorkGroupSizeZ number
---@field computeSubGroupSize number
---@field supportsAsyncCompute boolean
---@field supportsGpuRecorder boolean
---@field supportsGraphicsFence boolean
---@field supportsAsyncGPUReadback boolean
---@field supportsRayTracing boolean
---@field supportsSetConstantBuffer boolean
---@field constantBufferOffsetAlignment number
---@field maxConstantBufferSize number
---@field maxGraphicsBufferSize number
---@field hasMipMaxLevel boolean
---@field supportsMipStreaming boolean
---@field usesLoadStoreActions boolean
---@field hdrDisplaySupportFlags UnityEngine.HDRDisplaySupportFlags
---@field supportsConservativeRaster boolean
---@field supportsMultiview boolean
---@field supportsStoreAndResolveAction boolean
---@field supportsMultisampleResolveDepth boolean
---@field supportsMultisampleResolveStencil boolean
---@field supportsIndirectArgumentsBuffer boolean
UnityEngine.SystemInfo = {}
---@alias CS.UnityEngine.SystemInfo UnityEngine.SystemInfo
CS.UnityEngine.SystemInfo = UnityEngine.SystemInfo

---@return UnityEngine.SystemInfo
function UnityEngine.SystemInfo.New() end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.SystemInfo.SupportsRenderTextureFormat(format) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.SystemInfo.SupportsBlendingOnRenderTextureFormat(format) end
---@param format UnityEngine.RenderTextureFormat
---@return boolean
function UnityEngine.SystemInfo.SupportsRandomWriteOnRenderTextureFormat(format) end
---@param format UnityEngine.TextureFormat
---@return boolean
function UnityEngine.SystemInfo.SupportsTextureFormat(format) end
---@param format UnityEngine.Rendering.VertexAttributeFormat
---@param dimension number
---@return boolean
function UnityEngine.SystemInfo.SupportsVertexAttributeFormat(format, dimension) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return boolean
function UnityEngine.SystemInfo.IsFormatSupported(format, usage) end
---@param format UnityEngine.Experimental.Rendering.GraphicsFormat
---@param usage UnityEngine.Experimental.Rendering.FormatUsage
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.SystemInfo.GetCompatibleFormat(format, usage) end
---@param format UnityEngine.Experimental.Rendering.DefaultFormat
---@return UnityEngine.Experimental.Rendering.GraphicsFormat
function UnityEngine.SystemInfo.GetGraphicsFormat(format) end
---@param desc UnityEngine.RenderTextureDescriptor
---@return number
function UnityEngine.SystemInfo.GetRenderTextureSupportedMSAASampleCount(desc) end

---@class UnityEngine.SystemClock : System.Object
---@field now System.DateTime
UnityEngine.SystemClock = {}
---@alias CS.UnityEngine.SystemClock UnityEngine.SystemClock
CS.UnityEngine.SystemClock = UnityEngine.SystemClock

---@return UnityEngine.SystemClock
function UnityEngine.SystemClock.New() end
---@param date System.DateTime
---@return number
function UnityEngine.SystemClock.ToUnixTimeMilliseconds(date) end
---@param date System.DateTime
---@return number
function UnityEngine.SystemClock.ToUnixTimeSeconds(date) end

---@class UnityEngine.Time : System.Object
---@field time number
---@field timeAsDouble number
---@field timeSinceLevelLoad number
---@field timeSinceLevelLoadAsDouble number
---@field deltaTime number
---@field fixedTime number
---@field fixedTimeAsDouble number
---@field unscaledTime number
---@field unscaledTimeAsDouble number
---@field fixedUnscaledTime number
---@field fixedUnscaledTimeAsDouble number
---@field unscaledDeltaTime number
---@field fixedUnscaledDeltaTime number
---@field fixedDeltaTime number
---@field maximumDeltaTime number
---@field smoothDeltaTime number
---@field maximumParticleDeltaTime number
---@field timeScale number
---@field frameCount number
---@field renderedFrameCount number
---@field realtimeSinceStartup number
---@field realtimeSinceStartupAsDouble number
---@field captureDeltaTime number
---@field captureFramerate number
---@field inFixedTimeStep boolean
UnityEngine.Time = {}
---@alias CS.UnityEngine.Time UnityEngine.Time
CS.UnityEngine.Time = UnityEngine.Time

---@return UnityEngine.Time
function UnityEngine.Time.New() end

---@class UnityEngine.TouchScreenKeyboard_InternalConstructorHelperArguments : System.ValueType
---@field keyboardType number
---@field autocorrection number
---@field multiline number
---@field secure number
---@field alert number
---@field characterLimit number
UnityEngine.TouchScreenKeyboard_InternalConstructorHelperArguments = {}
---@alias CS.UnityEngine.TouchScreenKeyboard_InternalConstructorHelperArguments UnityEngine.TouchScreenKeyboard_InternalConstructorHelperArguments
CS.UnityEngine.TouchScreenKeyboard_InternalConstructorHelperArguments = UnityEngine.TouchScreenKeyboard_InternalConstructorHelperArguments


---@class UnityEngine.TouchScreenKeyboard : System.Object
---@field isSupported boolean
---@field isInPlaceEditingAllowed boolean
---@field hideInput boolean
---@field area UnityEngine.Rect
---@field visible boolean
---@field text string
---@field active boolean
---@field status UnityEngine.TouchScreenKeyboard.Status
---@field characterLimit number
---@field canGetSelection boolean
---@field canSetSelection boolean
---@field selection UnityEngine.RangeInt
---@field type UnityEngine.TouchScreenKeyboardType
---@field targetDisplay number
UnityEngine.TouchScreenKeyboard = {}
---@alias CS.UnityEngine.TouchScreenKeyboard UnityEngine.TouchScreenKeyboard
CS.UnityEngine.TouchScreenKeyboard = UnityEngine.TouchScreenKeyboard

---@param text string
---@param keyboardType UnityEngine.TouchScreenKeyboardType
---@param autocorrection boolean
---@param multiline boolean
---@param secure boolean
---@param alert boolean
---@param textPlaceholder string
---@param characterLimit number
---@return UnityEngine.TouchScreenKeyboard
function UnityEngine.TouchScreenKeyboard.New(text, keyboardType, autocorrection, multiline, secure, alert, textPlaceholder, characterLimit) end
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType, autocorrection: boolean, multiline: boolean, secure: boolean, alert: boolean, textPlaceholder: string, characterLimit: number) : UnityEngine.TouchScreenKeyboard
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType, autocorrection: boolean, multiline: boolean, secure: boolean, alert: boolean, textPlaceholder: string) : UnityEngine.TouchScreenKeyboard
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType, autocorrection: boolean, multiline: boolean, secure: boolean, alert: boolean) : UnityEngine.TouchScreenKeyboard
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType, autocorrection: boolean, multiline: boolean, secure: boolean) : UnityEngine.TouchScreenKeyboard
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType, autocorrection: boolean, multiline: boolean) : UnityEngine.TouchScreenKeyboard
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType, autocorrection: boolean) : UnityEngine.TouchScreenKeyboard
---@overload fun(text: string, keyboardType: UnityEngine.TouchScreenKeyboardType) : UnityEngine.TouchScreenKeyboard
---@param text string
---@return UnityEngine.TouchScreenKeyboard
function UnityEngine.TouchScreenKeyboard.Open(text) end

---@class UnityEngine.TouchScreenKeyboard.Status
---@field Visible UnityEngine.TouchScreenKeyboard.Status
---@field Done UnityEngine.TouchScreenKeyboard.Status
---@field Canceled UnityEngine.TouchScreenKeyboard.Status
---@field LostFocus UnityEngine.TouchScreenKeyboard.Status
UnityEngine.TouchScreenKeyboard.Status = {}
---@alias CS.UnityEngine.TouchScreenKeyboard.Status UnityEngine.TouchScreenKeyboard.Status
CS.UnityEngine.TouchScreenKeyboard.Status = UnityEngine.TouchScreenKeyboard.Status


---@class UnityEngine.TouchScreenKeyboard.Android : System.Object
---@field consumesOutsideTouches boolean
UnityEngine.TouchScreenKeyboard.Android = {}
---@alias CS.UnityEngine.TouchScreenKeyboard.Android UnityEngine.TouchScreenKeyboard.Android
CS.UnityEngine.TouchScreenKeyboard.Android = UnityEngine.TouchScreenKeyboard.Android

---@return UnityEngine.TouchScreenKeyboard.Android
function UnityEngine.TouchScreenKeyboard.Android.New() end

---@class UnityEngine.TouchScreenKeyboardType
---@field Default UnityEngine.TouchScreenKeyboardType
---@field ASCIICapable UnityEngine.TouchScreenKeyboardType
---@field NumbersAndPunctuation UnityEngine.TouchScreenKeyboardType
---@field URL UnityEngine.TouchScreenKeyboardType
---@field NumberPad UnityEngine.TouchScreenKeyboardType
---@field PhonePad UnityEngine.TouchScreenKeyboardType
---@field NamePhonePad UnityEngine.TouchScreenKeyboardType
---@field EmailAddress UnityEngine.TouchScreenKeyboardType
---@field Social UnityEngine.TouchScreenKeyboardType
---@field Search UnityEngine.TouchScreenKeyboardType
---@field DecimalPad UnityEngine.TouchScreenKeyboardType
---@field OneTimeCode UnityEngine.TouchScreenKeyboardType
UnityEngine.TouchScreenKeyboardType = {}
---@alias CS.UnityEngine.TouchScreenKeyboardType UnityEngine.TouchScreenKeyboardType
CS.UnityEngine.TouchScreenKeyboardType = UnityEngine.TouchScreenKeyboardType


---@class UnityEngine.UINumericFieldsUtils : System.Object
---@field k_AllowedCharactersForFloat string
---@field k_AllowedCharactersForInt string
---@field k_DoubleFieldFormatString string
---@field k_FloatFieldFormatString string
---@field k_IntFieldFormatString string
UnityEngine.UINumericFieldsUtils = {}
---@alias CS.UnityEngine.UINumericFieldsUtils UnityEngine.UINumericFieldsUtils
CS.UnityEngine.UINumericFieldsUtils = UnityEngine.UINumericFieldsUtils

---@overload fun(str: string, out_value: number) : boolean, number
---@overload fun(str: string, out_value: number, out_expr: UnityEngine.ExpressionEvaluator.Expression) : boolean, number, UnityEngine.ExpressionEvaluator.Expression
---@param str string
---@param initialValueAsString string
---@param out_value number
---@return boolean,number
function UnityEngine.UINumericFieldsUtils.TryConvertStringToDouble(str, initialValueAsString, out_value) end
---@param str string
---@param initialValueAsString string
---@param out_value number
---@return boolean,number
function UnityEngine.UINumericFieldsUtils.TryConvertStringToFloat(str, initialValueAsString, out_value) end
---@overload fun(str: string, out_value: number) : boolean, number
---@overload fun(str: string, out_value: number, out_expr: UnityEngine.ExpressionEvaluator.Expression) : boolean, number, UnityEngine.ExpressionEvaluator.Expression
---@param str string
---@param initialValueAsString string
---@param out_value number
---@return boolean,number
function UnityEngine.UINumericFieldsUtils.TryConvertStringToLong(str, initialValueAsString, out_value) end
---@overload fun(str: string, out_value: number, out_expr: UnityEngine.ExpressionEvaluator.Expression) : boolean, number, UnityEngine.ExpressionEvaluator.Expression
---@param str string
---@param initialValueAsString string
---@param out_value number
---@return boolean,number
function UnityEngine.UINumericFieldsUtils.TryConvertStringToULong(str, initialValueAsString, out_value) end
---@param str string
---@param initialValueAsString string
---@param out_value number
---@return boolean,number
function UnityEngine.UINumericFieldsUtils.TryConvertStringToInt(str, initialValueAsString, out_value) end
---@param str string
---@param initialValueAsString string
---@param out_value number
---@return boolean,number
function UnityEngine.UINumericFieldsUtils.TryConvertStringToUInt(str, initialValueAsString, out_value) end

---@class UnityEngine.RuntimeUndo : System.Object
UnityEngine.RuntimeUndo = {}
---@alias CS.UnityEngine.RuntimeUndo UnityEngine.RuntimeUndo
CS.UnityEngine.RuntimeUndo = UnityEngine.RuntimeUndo

---@return UnityEngine.RuntimeUndo
function UnityEngine.RuntimeUndo.New() end

---@class UnityEngine.UnityEventQueueSystem : System.Object
UnityEngine.UnityEventQueueSystem = {}
---@alias CS.UnityEngine.UnityEventQueueSystem UnityEngine.UnityEventQueueSystem
CS.UnityEngine.UnityEventQueueSystem = UnityEngine.UnityEventQueueSystem

---@return UnityEngine.UnityEventQueueSystem
function UnityEngine.UnityEventQueueSystem.New() end
---@param eventPayloadName string
---@return string
function UnityEngine.UnityEventQueueSystem.GenerateEventIdForPayload(eventPayloadName) end
---@return System.IntPtr
function UnityEngine.UnityEventQueueSystem.GetGlobalEventQueue() end

---@class UnityEngine.Pose : System.ValueType
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field identity UnityEngine.Pose
---@field forward UnityEngine.Vector3
---@field right UnityEngine.Vector3
---@field up UnityEngine.Vector3
UnityEngine.Pose = {}
---@alias CS.UnityEngine.Pose UnityEngine.Pose
CS.UnityEngine.Pose = UnityEngine.Pose

---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
---@return UnityEngine.Pose
function UnityEngine.Pose.New(position, rotation) end
---@overload fun() : string
---@param format string
---@return string
function UnityEngine.Pose:ToString(format) end
---@overload fun(self: UnityEngine.Pose, lhs: UnityEngine.Pose) : UnityEngine.Pose
---@param lhs UnityEngine.Transform
---@return UnityEngine.Pose
function UnityEngine.Pose:GetTransformedBy(lhs) end
---@overload fun(self: UnityEngine.Pose, obj: System.Object) : boolean
---@param other UnityEngine.Pose
---@return boolean
function UnityEngine.Pose:Equals(other) end
---@return number
function UnityEngine.Pose:GetHashCode() end

---@class UnityEngine.FrameDebugger : System.Object
---@field enabled boolean
UnityEngine.FrameDebugger = {}
---@alias CS.UnityEngine.FrameDebugger UnityEngine.FrameDebugger
CS.UnityEngine.FrameDebugger = UnityEngine.FrameDebugger


---@class UnityEngine.DrivenTransformProperties
---@field None UnityEngine.DrivenTransformProperties
---@field All UnityEngine.DrivenTransformProperties
---@field AnchoredPositionX UnityEngine.DrivenTransformProperties
---@field AnchoredPositionY UnityEngine.DrivenTransformProperties
---@field AnchoredPositionZ UnityEngine.DrivenTransformProperties
---@field Rotation UnityEngine.DrivenTransformProperties
---@field ScaleX UnityEngine.DrivenTransformProperties
---@field ScaleY UnityEngine.DrivenTransformProperties
---@field ScaleZ UnityEngine.DrivenTransformProperties
---@field AnchorMinX UnityEngine.DrivenTransformProperties
---@field AnchorMinY UnityEngine.DrivenTransformProperties
---@field AnchorMaxX UnityEngine.DrivenTransformProperties
---@field AnchorMaxY UnityEngine.DrivenTransformProperties
---@field SizeDeltaX UnityEngine.DrivenTransformProperties
---@field SizeDeltaY UnityEngine.DrivenTransformProperties
---@field PivotX UnityEngine.DrivenTransformProperties
---@field PivotY UnityEngine.DrivenTransformProperties
---@field AnchoredPosition UnityEngine.DrivenTransformProperties
---@field AnchoredPosition3D UnityEngine.DrivenTransformProperties
---@field Scale UnityEngine.DrivenTransformProperties
---@field AnchorMin UnityEngine.DrivenTransformProperties
---@field AnchorMax UnityEngine.DrivenTransformProperties
---@field Anchors UnityEngine.DrivenTransformProperties
---@field SizeDelta UnityEngine.DrivenTransformProperties
---@field Pivot UnityEngine.DrivenTransformProperties
UnityEngine.DrivenTransformProperties = {}
---@alias CS.UnityEngine.DrivenTransformProperties UnityEngine.DrivenTransformProperties
CS.UnityEngine.DrivenTransformProperties = UnityEngine.DrivenTransformProperties


---@class UnityEngine.DrivenRectTransformTracker : System.ValueType
UnityEngine.DrivenRectTransformTracker = {}
---@alias CS.UnityEngine.DrivenRectTransformTracker UnityEngine.DrivenRectTransformTracker
CS.UnityEngine.DrivenRectTransformTracker = UnityEngine.DrivenRectTransformTracker

function UnityEngine.DrivenRectTransformTracker.StopRecordingUndo() end
function UnityEngine.DrivenRectTransformTracker.StartRecordingUndo() end
---@param driver UnityEngine.Object
---@param rectTransform UnityEngine.RectTransform
---@param drivenProperties UnityEngine.DrivenTransformProperties
function UnityEngine.DrivenRectTransformTracker:Add(driver, rectTransform, drivenProperties) end
function UnityEngine.DrivenRectTransformTracker:Clear() end

---@class UnityEngine.RectTransform : UnityEngine.Transform
---@field rect UnityEngine.Rect
---@field anchorMin UnityEngine.Vector2
---@field anchorMax UnityEngine.Vector2
---@field anchoredPosition UnityEngine.Vector2
---@field sizeDelta UnityEngine.Vector2
---@field pivot UnityEngine.Vector2
---@field anchoredPosition3D UnityEngine.Vector3
---@field offsetMin UnityEngine.Vector2
---@field offsetMax UnityEngine.Vector2
---@field drivenByObject UnityEngine.Object
UnityEngine.RectTransform = {}
---@alias CS.UnityEngine.RectTransform UnityEngine.RectTransform
CS.UnityEngine.RectTransform = UnityEngine.RectTransform

---@return UnityEngine.RectTransform
function UnityEngine.RectTransform.New() end
function UnityEngine.RectTransform:ForceUpdateRectTransforms() end
---@param fourCornersArray UnityEngine.Vector3[]
function UnityEngine.RectTransform:GetLocalCorners(fourCornersArray) end
---@param fourCornersArray UnityEngine.Vector3[]
function UnityEngine.RectTransform:GetWorldCorners(fourCornersArray) end
---@param edge UnityEngine.RectTransform.Edge
---@param inset number
---@param size number
function UnityEngine.RectTransform:SetInsetAndSizeFromParentEdge(edge, inset, size) end
---@param axis UnityEngine.RectTransform.Axis
---@param size number
function UnityEngine.RectTransform:SetSizeWithCurrentAnchors(axis, size) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPos(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPosX(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPosY(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPos3D(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPos3DX(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPos3DY(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorPos3DZ(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorMax(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOAnchorMin(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOPivot(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOPivotX(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOPivotY(endValue, duration) end
---@param endValue UnityEngine.Vector2
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOSizeDelta(endValue, duration, snapping) end
---@param punch UnityEngine.Vector2
---@param duration number
---@param vibrato number
---@param elasticity number
---@param snapping boolean
---@return DG.Tweening.Tweener
function UnityEngine.RectTransform:DOPunchAnchorPos(punch, duration, vibrato, elasticity, snapping) end
---@param duration number
---@param strength number
---@param vibrato number
---@param randomness number
---@param snapping boolean
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.RectTransform:DOShakeAnchorPos(duration, strength, vibrato, randomness, snapping, fadeOut, randomnessMode) end
---@param duration number
---@param strength UnityEngine.Vector2
---@param vibrato number
---@param randomness number
---@param snapping boolean
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.RectTransform:DOShakeAnchorPos(duration, strength, vibrato, randomness, snapping, fadeOut, randomnessMode) end
---@param endValue UnityEngine.Vector2
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function UnityEngine.RectTransform:DOJumpAnchorPos(endValue, jumpPower, numJumps, duration, snapping) end
---@param center UnityEngine.Vector2
---@param endValueDegrees number
---@param duration number
---@param relativeCenter boolean
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.RectTransform:DOShapeCircle(center, endValueDegrees, duration, relativeCenter, snapping) end

---@class UnityEngine.RectTransform.Edge
---@field Left UnityEngine.RectTransform.Edge
---@field Right UnityEngine.RectTransform.Edge
---@field Top UnityEngine.RectTransform.Edge
---@field Bottom UnityEngine.RectTransform.Edge
UnityEngine.RectTransform.Edge = {}
---@alias CS.UnityEngine.RectTransform.Edge UnityEngine.RectTransform.Edge
CS.UnityEngine.RectTransform.Edge = UnityEngine.RectTransform.Edge


---@class UnityEngine.RectTransform.Axis
---@field Horizontal UnityEngine.RectTransform.Axis
---@field Vertical UnityEngine.RectTransform.Axis
UnityEngine.RectTransform.Axis = {}
---@alias CS.UnityEngine.RectTransform.Axis UnityEngine.RectTransform.Axis
CS.UnityEngine.RectTransform.Axis = UnityEngine.RectTransform.Axis


---@class UnityEngine.RectTransform.ReapplyDrivenProperties : System.MulticastDelegate
UnityEngine.RectTransform.ReapplyDrivenProperties = {}
---@alias CS.UnityEngine.RectTransform.ReapplyDrivenProperties UnityEngine.RectTransform.ReapplyDrivenProperties
CS.UnityEngine.RectTransform.ReapplyDrivenProperties = UnityEngine.RectTransform.ReapplyDrivenProperties

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.RectTransform.ReapplyDrivenProperties
function UnityEngine.RectTransform.ReapplyDrivenProperties.New(object, method) end
---@param driven UnityEngine.RectTransform
function UnityEngine.RectTransform.ReapplyDrivenProperties:Invoke(driven) end
---@param driven UnityEngine.RectTransform
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.RectTransform.ReapplyDrivenProperties:BeginInvoke(driven, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.RectTransform.ReapplyDrivenProperties:EndInvoke(result) end

---@class UnityEngine.RotationOrder
---@field OrderXYZ UnityEngine.RotationOrder
---@field OrderXZY UnityEngine.RotationOrder
---@field OrderYZX UnityEngine.RotationOrder
---@field OrderYXZ UnityEngine.RotationOrder
---@field OrderZXY UnityEngine.RotationOrder
---@field OrderZYX UnityEngine.RotationOrder
UnityEngine.RotationOrder = {}
---@alias CS.UnityEngine.RotationOrder UnityEngine.RotationOrder
CS.UnityEngine.RotationOrder = UnityEngine.RotationOrder


---@class UnityEngine.Transform : UnityEngine.Component
---@field position UnityEngine.Vector3
---@field localPosition UnityEngine.Vector3
---@field eulerAngles UnityEngine.Vector3
---@field localEulerAngles UnityEngine.Vector3
---@field right UnityEngine.Vector3
---@field up UnityEngine.Vector3
---@field forward UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field localRotation UnityEngine.Quaternion
---@field localScale UnityEngine.Vector3
---@field parent UnityEngine.Transform
---@field worldToLocalMatrix UnityEngine.Matrix4x4
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field root UnityEngine.Transform
---@field childCount number
---@field lossyScale UnityEngine.Vector3
---@field hasChanged boolean
---@field hierarchyCapacity number
---@field hierarchyCount number
UnityEngine.Transform = {}
---@alias CS.UnityEngine.Transform UnityEngine.Transform
CS.UnityEngine.Transform = UnityEngine.Transform

---@overload fun(self: UnityEngine.Transform, p: UnityEngine.Transform)
---@param parent UnityEngine.Transform
---@param worldPositionStays boolean
function UnityEngine.Transform:SetParent(parent, worldPositionStays) end
---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function UnityEngine.Transform:SetPositionAndRotation(position, rotation) end
---@param localPosition UnityEngine.Vector3
---@param localRotation UnityEngine.Quaternion
function UnityEngine.Transform:SetLocalPositionAndRotation(localPosition, localRotation) end
---@param out_position UnityEngine.Vector3
---@param out_rotation UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.Transform:GetPositionAndRotation(out_position, out_rotation) end
---@param out_localPosition UnityEngine.Vector3
---@param out_localRotation UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.Transform:GetLocalPositionAndRotation(out_localPosition, out_localRotation) end
---@overload fun(self: UnityEngine.Transform, translation: UnityEngine.Vector3, relativeTo: UnityEngine.Space)
---@overload fun(self: UnityEngine.Transform, translation: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Transform, x: number, y: number, z: number, relativeTo: UnityEngine.Space)
---@overload fun(self: UnityEngine.Transform, x: number, y: number, z: number)
---@overload fun(self: UnityEngine.Transform, translation: UnityEngine.Vector3, relativeTo: UnityEngine.Transform)
---@param x number
---@param y number
---@param z number
---@param relativeTo UnityEngine.Transform
function UnityEngine.Transform:Translate(x, y, z, relativeTo) end
---@overload fun(self: UnityEngine.Transform, eulers: UnityEngine.Vector3, relativeTo: UnityEngine.Space)
---@overload fun(self: UnityEngine.Transform, eulers: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Transform, xAngle: number, yAngle: number, zAngle: number, relativeTo: UnityEngine.Space)
---@overload fun(self: UnityEngine.Transform, xAngle: number, yAngle: number, zAngle: number)
---@overload fun(self: UnityEngine.Transform, axis: UnityEngine.Vector3, angle: number, relativeTo: UnityEngine.Space)
---@param axis UnityEngine.Vector3
---@param angle number
function UnityEngine.Transform:Rotate(axis, angle) end
---@param point UnityEngine.Vector3
---@param axis UnityEngine.Vector3
---@param angle number
function UnityEngine.Transform:RotateAround(point, axis, angle) end
---@overload fun(self: UnityEngine.Transform, target: UnityEngine.Transform, worldUp: UnityEngine.Vector3)
---@overload fun(self: UnityEngine.Transform, target: UnityEngine.Transform)
---@overload fun(self: UnityEngine.Transform, worldPosition: UnityEngine.Vector3, worldUp: UnityEngine.Vector3)
---@param worldPosition UnityEngine.Vector3
function UnityEngine.Transform:LookAt(worldPosition) end
---@overload fun(self: UnityEngine.Transform, direction: UnityEngine.Vector3) : UnityEngine.Vector3
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function UnityEngine.Transform:TransformDirection(x, y, z) end
---@overload fun(self: UnityEngine.Transform, directions: System.ReadOnlySpan, transformedDirections: System.Span)
---@param directions System.Span
function UnityEngine.Transform:TransformDirections(directions) end
---@overload fun(self: UnityEngine.Transform, direction: UnityEngine.Vector3) : UnityEngine.Vector3
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function UnityEngine.Transform:InverseTransformDirection(x, y, z) end
---@overload fun(self: UnityEngine.Transform, directions: System.ReadOnlySpan, transformedDirections: System.Span)
---@param directions System.Span
function UnityEngine.Transform:InverseTransformDirections(directions) end
---@overload fun(self: UnityEngine.Transform, vector: UnityEngine.Vector3) : UnityEngine.Vector3
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function UnityEngine.Transform:TransformVector(x, y, z) end
---@overload fun(self: UnityEngine.Transform, vectors: System.ReadOnlySpan, transformedVectors: System.Span)
---@param vectors System.Span
function UnityEngine.Transform:TransformVectors(vectors) end
---@overload fun(self: UnityEngine.Transform, vector: UnityEngine.Vector3) : UnityEngine.Vector3
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function UnityEngine.Transform:InverseTransformVector(x, y, z) end
---@overload fun(self: UnityEngine.Transform, vectors: System.ReadOnlySpan, transformedVectors: System.Span)
---@param vectors System.Span
function UnityEngine.Transform:InverseTransformVectors(vectors) end
---@overload fun(self: UnityEngine.Transform, position: UnityEngine.Vector3) : UnityEngine.Vector3
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function UnityEngine.Transform:TransformPoint(x, y, z) end
---@overload fun(self: UnityEngine.Transform, positions: System.ReadOnlySpan, transformedPositions: System.Span)
---@param positions System.Span
function UnityEngine.Transform:TransformPoints(positions) end
---@overload fun(self: UnityEngine.Transform, position: UnityEngine.Vector3) : UnityEngine.Vector3
---@param x number
---@param y number
---@param z number
---@return UnityEngine.Vector3
function UnityEngine.Transform:InverseTransformPoint(x, y, z) end
---@overload fun(self: UnityEngine.Transform, positions: System.ReadOnlySpan, transformedPositions: System.Span)
---@param positions System.Span
function UnityEngine.Transform:InverseTransformPoints(positions) end
function UnityEngine.Transform:DetachChildren() end
function UnityEngine.Transform:SetAsFirstSibling() end
function UnityEngine.Transform:SetAsLastSibling() end
---@param index number
function UnityEngine.Transform:SetSiblingIndex(index) end
---@return number
function UnityEngine.Transform:GetSiblingIndex() end
---@param n string
---@return UnityEngine.Transform
function UnityEngine.Transform:Find(n) end
---@param parent UnityEngine.Transform
---@return boolean
function UnityEngine.Transform:IsChildOf(parent) end
---@return System.Collections.IEnumerator
function UnityEngine.Transform:GetEnumerator() end
---@param index number
---@return UnityEngine.Transform
function UnityEngine.Transform:GetChild(index) end
---@param vertex UnityEngine.ProBuilder.Csg.Vertex
---@return UnityEngine.ProBuilder.Csg.Vertex
function UnityEngine.Transform:TransformVertex(vertex) end
---@param vertex UnityEngine.ProBuilder.Vertex
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.Transform:TransformVertex(vertex) end
---@param vertex UnityEngine.ProBuilder.Vertex
---@return UnityEngine.ProBuilder.Vertex
function UnityEngine.Transform:InverseTransformVertex(vertex) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOMove(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOMoveX(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOMoveY(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOMoveZ(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalMove(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalMoveX(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalMoveY(endValue, duration, snapping) end
---@param endValue number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalMoveZ(endValue, duration, snapping) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DORotate(endValue, duration, mode) end
---@param endValue UnityEngine.Quaternion
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DORotateQuaternion(endValue, duration) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalRotate(endValue, duration, mode) end
---@param endValue UnityEngine.Quaternion
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalRotateQuaternion(endValue, duration) end
---@param endValue UnityEngine.Vector3
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOScale(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOScale(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOScaleX(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOScaleY(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOScaleZ(endValue, duration) end
---@param towards UnityEngine.Vector3
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@param up System.Nullable
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOLookAt(towards, duration, axisConstraint, up) end
---@param towards UnityEngine.Vector3
---@param duration number
---@param axisConstraint DG.Tweening.AxisConstraint
---@param up System.Nullable
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DODynamicLookAt(towards, duration, axisConstraint, up) end
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@param snapping boolean
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOPunchPosition(punch, duration, vibrato, elasticity, snapping) end
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOPunchScale(punch, duration, vibrato, elasticity) end
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOPunchRotation(punch, duration, vibrato, elasticity) end
---@param duration number
---@param strength number
---@param vibrato number
---@param randomness number
---@param snapping boolean
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOShakePosition(duration, strength, vibrato, randomness, snapping, fadeOut, randomnessMode) end
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param snapping boolean
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOShakePosition(duration, strength, vibrato, randomness, snapping, fadeOut, randomnessMode) end
---@param duration number
---@param strength number
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOShakeRotation(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param duration number
---@param strength number
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOShakeScale(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param duration number
---@param strength UnityEngine.Vector3
---@param vibrato number
---@param randomness number
---@param fadeOut boolean
---@param randomnessMode DG.Tweening.ShakeRandomnessMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOShakeScale(duration, strength, vibrato, randomness, fadeOut, randomnessMode) end
---@param endValue UnityEngine.Vector3
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function UnityEngine.Transform:DOJump(endValue, jumpPower, numJumps, duration, snapping) end
---@param endValue UnityEngine.Vector3
---@param jumpPower number
---@param numJumps number
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Sequence
function UnityEngine.Transform:DOLocalJump(endValue, jumpPower, numJumps, duration, snapping) end
---@param path UnityEngine.Vector3[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOPath(path, duration, pathType, pathMode, resolution, gizmoColor) end
---@param path UnityEngine.Vector3[]
---@param duration number
---@param pathType DG.Tweening.PathType
---@param pathMode DG.Tweening.PathMode
---@param resolution number
---@param gizmoColor System.Nullable
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalPath(path, duration, pathType, pathMode, resolution, gizmoColor) end
---@param path DG.Tweening.Plugins.Core.PathCore.Path
---@param duration number
---@param pathMode DG.Tweening.PathMode
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOPath(path, duration, pathMode) end
---@param path DG.Tweening.Plugins.Core.PathCore.Path
---@param duration number
---@param pathMode DG.Tweening.PathMode
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.Transform:DOLocalPath(path, duration, pathMode) end
---@param byValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOBlendableMoveBy(byValue, duration, snapping) end
---@param byValue UnityEngine.Vector3
---@param duration number
---@param snapping boolean
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOBlendableLocalMoveBy(byValue, duration, snapping) end
---@param byValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOBlendableRotateBy(byValue, duration, mode) end
---@param byValue UnityEngine.Vector3
---@param duration number
---@param mode DG.Tweening.RotateMode
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOBlendableLocalRotateBy(byValue, duration, mode) end
---@param punch UnityEngine.Vector3
---@param duration number
---@param vibrato number
---@param elasticity number
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOBlendablePunchRotation(punch, duration, vibrato, elasticity) end
---@param byValue UnityEngine.Vector3
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.Transform:DOBlendableScaleBy(byValue, duration) end

---@class UnityEngine.Transform.Enumerator : System.Object
---@field Current System.Object
UnityEngine.Transform.Enumerator = {}
---@alias CS.UnityEngine.Transform.Enumerator UnityEngine.Transform.Enumerator
CS.UnityEngine.Transform.Enumerator = UnityEngine.Transform.Enumerator

---@return boolean
function UnityEngine.Transform.Enumerator:MoveNext() end
function UnityEngine.Transform.Enumerator:Reset() end

---@class UnityEngine.SpriteDrawMode
---@field Simple UnityEngine.SpriteDrawMode
---@field Sliced UnityEngine.SpriteDrawMode
---@field Tiled UnityEngine.SpriteDrawMode
UnityEngine.SpriteDrawMode = {}
---@alias CS.UnityEngine.SpriteDrawMode UnityEngine.SpriteDrawMode
CS.UnityEngine.SpriteDrawMode = UnityEngine.SpriteDrawMode


---@class UnityEngine.SpriteTileMode
---@field Continuous UnityEngine.SpriteTileMode
---@field Adaptive UnityEngine.SpriteTileMode
UnityEngine.SpriteTileMode = {}
---@alias CS.UnityEngine.SpriteTileMode UnityEngine.SpriteTileMode
CS.UnityEngine.SpriteTileMode = UnityEngine.SpriteTileMode


---@class UnityEngine.SpriteMaskInteraction
---@field None UnityEngine.SpriteMaskInteraction
---@field VisibleInsideMask UnityEngine.SpriteMaskInteraction
---@field VisibleOutsideMask UnityEngine.SpriteMaskInteraction
UnityEngine.SpriteMaskInteraction = {}
---@alias CS.UnityEngine.SpriteMaskInteraction UnityEngine.SpriteMaskInteraction
CS.UnityEngine.SpriteMaskInteraction = UnityEngine.SpriteMaskInteraction


---@class UnityEngine.SpriteRenderer : UnityEngine.Renderer
---@field sprite UnityEngine.Sprite
---@field drawMode UnityEngine.SpriteDrawMode
---@field size UnityEngine.Vector2
---@field adaptiveModeThreshold number
---@field tileMode UnityEngine.SpriteTileMode
---@field color UnityEngine.Color
---@field maskInteraction UnityEngine.SpriteMaskInteraction
---@field flipX boolean
---@field flipY boolean
---@field spriteSortPoint UnityEngine.SpriteSortPoint
UnityEngine.SpriteRenderer = {}
---@alias CS.UnityEngine.SpriteRenderer UnityEngine.SpriteRenderer
CS.UnityEngine.SpriteRenderer = UnityEngine.SpriteRenderer

---@return UnityEngine.SpriteRenderer
function UnityEngine.SpriteRenderer.New() end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.SpriteRenderer:RegisterSpriteChangeCallback(callback) end
---@param callback UnityEngine.Events.UnityAction
function UnityEngine.SpriteRenderer:UnregisterSpriteChangeCallback(callback) end
function UnityEngine.SpriteRenderer:DeactivateDeformableBuffer() end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.SpriteRenderer:DOColor(endValue, duration) end
---@param endValue number
---@param duration number
---@return DG.Tweening.Core.TweenerCore
function UnityEngine.SpriteRenderer:DOFade(endValue, duration) end
---@param gradient UnityEngine.Gradient
---@param duration number
---@return DG.Tweening.Sequence
function UnityEngine.SpriteRenderer:DOGradientColor(gradient, duration) end
---@param endValue UnityEngine.Color
---@param duration number
---@return DG.Tweening.Tweener
function UnityEngine.SpriteRenderer:DOBlendableColor(endValue, duration) end

---@class UnityEngine.SpriteMeshType
---@field FullRect UnityEngine.SpriteMeshType
---@field Tight UnityEngine.SpriteMeshType
UnityEngine.SpriteMeshType = {}
---@alias CS.UnityEngine.SpriteMeshType UnityEngine.SpriteMeshType
CS.UnityEngine.SpriteMeshType = UnityEngine.SpriteMeshType


---@class UnityEngine.SpriteAlignment
---@field Center UnityEngine.SpriteAlignment
---@field TopLeft UnityEngine.SpriteAlignment
---@field TopCenter UnityEngine.SpriteAlignment
---@field TopRight UnityEngine.SpriteAlignment
---@field LeftCenter UnityEngine.SpriteAlignment
---@field RightCenter UnityEngine.SpriteAlignment
---@field BottomLeft UnityEngine.SpriteAlignment
---@field BottomCenter UnityEngine.SpriteAlignment
---@field BottomRight UnityEngine.SpriteAlignment
---@field Custom UnityEngine.SpriteAlignment
UnityEngine.SpriteAlignment = {}
---@alias CS.UnityEngine.SpriteAlignment UnityEngine.SpriteAlignment
CS.UnityEngine.SpriteAlignment = UnityEngine.SpriteAlignment


---@class UnityEngine.SpritePackingMode
---@field Tight UnityEngine.SpritePackingMode
---@field Rectangle UnityEngine.SpritePackingMode
UnityEngine.SpritePackingMode = {}
---@alias CS.UnityEngine.SpritePackingMode UnityEngine.SpritePackingMode
CS.UnityEngine.SpritePackingMode = UnityEngine.SpritePackingMode


---@class UnityEngine.SpritePackingRotation
---@field None UnityEngine.SpritePackingRotation
---@field FlipHorizontal UnityEngine.SpritePackingRotation
---@field FlipVertical UnityEngine.SpritePackingRotation
---@field Rotate180 UnityEngine.SpritePackingRotation
---@field Any UnityEngine.SpritePackingRotation
UnityEngine.SpritePackingRotation = {}
---@alias CS.UnityEngine.SpritePackingRotation UnityEngine.SpritePackingRotation
CS.UnityEngine.SpritePackingRotation = UnityEngine.SpritePackingRotation


---@class UnityEngine.SpriteSortPoint
---@field Center UnityEngine.SpriteSortPoint
---@field Pivot UnityEngine.SpriteSortPoint
UnityEngine.SpriteSortPoint = {}
---@alias CS.UnityEngine.SpriteSortPoint UnityEngine.SpriteSortPoint
CS.UnityEngine.SpriteSortPoint = UnityEngine.SpriteSortPoint


---@class UnityEngine.SecondarySpriteTexture : System.ValueType
---@field name string
---@field texture UnityEngine.Texture2D
UnityEngine.SecondarySpriteTexture = {}
---@alias CS.UnityEngine.SecondarySpriteTexture UnityEngine.SecondarySpriteTexture
CS.UnityEngine.SecondarySpriteTexture = UnityEngine.SecondarySpriteTexture


---@class UnityEngine.Sprite : UnityEngine.Object
---@field bounds UnityEngine.Bounds
---@field rect UnityEngine.Rect
---@field border UnityEngine.Vector4
---@field texture UnityEngine.Texture2D
---@field pixelsPerUnit number
---@field spriteAtlasTextureScale number
---@field associatedAlphaSplitTexture UnityEngine.Texture2D
---@field pivot UnityEngine.Vector2
---@field packed boolean
---@field packingMode UnityEngine.SpritePackingMode
---@field packingRotation UnityEngine.SpritePackingRotation
---@field textureRect UnityEngine.Rect
---@field textureRectOffset UnityEngine.Vector2
---@field vertices UnityEngine.Vector2[]
---@field triangles System.UInt16[]
---@field uv UnityEngine.Vector2[]
UnityEngine.Sprite = {}
---@alias CS.UnityEngine.Sprite UnityEngine.Sprite
CS.UnityEngine.Sprite = UnityEngine.Sprite

---@overload fun(texture: UnityEngine.Texture2D, rect: UnityEngine.Rect, pivot: UnityEngine.Vector2, pixelsPerUnit: number, extrude: number, meshType: UnityEngine.SpriteMeshType, border: UnityEngine.Vector4, generateFallbackPhysicsShape: boolean) : UnityEngine.Sprite
---@overload fun(texture: UnityEngine.Texture2D, rect: UnityEngine.Rect, pivot: UnityEngine.Vector2, pixelsPerUnit: number, extrude: number, meshType: UnityEngine.SpriteMeshType, border: UnityEngine.Vector4, generateFallbackPhysicsShape: boolean, secondaryTextures: UnityEngine.SecondarySpriteTexture[]) : UnityEngine.Sprite
---@overload fun(texture: UnityEngine.Texture2D, rect: UnityEngine.Rect, pivot: UnityEngine.Vector2, pixelsPerUnit: number, extrude: number, meshType: UnityEngine.SpriteMeshType, border: UnityEngine.Vector4) : UnityEngine.Sprite
---@overload fun(texture: UnityEngine.Texture2D, rect: UnityEngine.Rect, pivot: UnityEngine.Vector2, pixelsPerUnit: number, extrude: number, meshType: UnityEngine.SpriteMeshType) : UnityEngine.Sprite
---@overload fun(texture: UnityEngine.Texture2D, rect: UnityEngine.Rect, pivot: UnityEngine.Vector2, pixelsPerUnit: number, extrude: number) : UnityEngine.Sprite
---@overload fun(texture: UnityEngine.Texture2D, rect: UnityEngine.Rect, pivot: UnityEngine.Vector2, pixelsPerUnit: number) : UnityEngine.Sprite
---@param texture UnityEngine.Texture2D
---@param rect UnityEngine.Rect
---@param pivot UnityEngine.Vector2
---@return UnityEngine.Sprite
function UnityEngine.Sprite.Create(texture, rect, pivot) end
---@return number
function UnityEngine.Sprite:GetSecondaryTextureCount() end
---@param secondaryTexture UnityEngine.SecondarySpriteTexture[]
---@return number
function UnityEngine.Sprite:GetSecondaryTextures(secondaryTexture) end
---@return number
function UnityEngine.Sprite:GetPhysicsShapeCount() end
---@param shapeIdx number
---@return number
function UnityEngine.Sprite:GetPhysicsShapePointCount(shapeIdx) end
---@param shapeIdx number
---@param physicsShape System.Collections.Generic.List
---@return number
function UnityEngine.Sprite:GetPhysicsShape(shapeIdx, physicsShape) end
---@param physicsShapes System.Collections.Generic.IList
function UnityEngine.Sprite:OverridePhysicsShape(physicsShapes) end
---@param vertices UnityEngine.Vector2[]
---@param triangles System.UInt16[]
function UnityEngine.Sprite:OverrideGeometry(vertices, triangles) end
---@param channel UnityEngine.Rendering.VertexAttribute
---@return Unity.Collections.NativeSlice[T]
function UnityEngine.Sprite:GetVertexAttribute(channel) end
---@param channel UnityEngine.Rendering.VertexAttribute
---@param src Unity.Collections.NativeArray[T]
function UnityEngine.Sprite:SetVertexAttribute(channel, src) end
---@return Unity.Collections.NativeArray
function UnityEngine.Sprite:GetBindPoses() end
---@param src Unity.Collections.NativeArray
function UnityEngine.Sprite:SetBindPoses(src) end
---@return Unity.Collections.NativeArray
function UnityEngine.Sprite:GetIndices() end
---@param src Unity.Collections.NativeArray
function UnityEngine.Sprite:SetIndices(src) end
---@return UnityEngine.U2D.SpriteBone[]
function UnityEngine.Sprite:GetBones() end
---@param src UnityEngine.U2D.SpriteBone[]
function UnityEngine.Sprite:SetBones(src) end
---@param channel UnityEngine.Rendering.VertexAttribute
---@return boolean
function UnityEngine.Sprite:HasVertexAttribute(channel) end
---@param count number
function UnityEngine.Sprite:SetVertexCount(count) end
---@return number
function UnityEngine.Sprite:GetVertexCount() end

---@class UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers : System.Object
UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers = {}
---@alias CS.UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers
CS.UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers = UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers

---@return UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers
function UnityEngine._Scripting.APIUpdating.APIUpdaterRuntimeHelpers.New() end

---@class UnityEngine.Sprites.DataUtility : System.Object
UnityEngine.Sprites.DataUtility = {}
---@alias CS.UnityEngine.Sprites.DataUtility UnityEngine.Sprites.DataUtility
CS.UnityEngine.Sprites.DataUtility = UnityEngine.Sprites.DataUtility

---@return UnityEngine.Sprites.DataUtility
function UnityEngine.Sprites.DataUtility.New() end
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector4
function UnityEngine.Sprites.DataUtility.GetInnerUV(sprite) end
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector4
function UnityEngine.Sprites.DataUtility.GetOuterUV(sprite) end
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector4
function UnityEngine.Sprites.DataUtility.GetPadding(sprite) end
---@param sprite UnityEngine.Sprite
---@return UnityEngine.Vector2
function UnityEngine.Sprites.DataUtility.GetMinSize(sprite) end

---@class UnityEngine.U2D.Light2DBase : UnityEngine.MonoBehaviour
UnityEngine.U2D.Light2DBase = {}
---@alias CS.UnityEngine.U2D.Light2DBase UnityEngine.U2D.Light2DBase
CS.UnityEngine.U2D.Light2DBase = UnityEngine.U2D.Light2DBase


---@class UnityEngine.U2D.Light2DType
---@field Parametric UnityEngine.U2D.Light2DType
---@field Freeform UnityEngine.U2D.Light2DType
---@field Sprite UnityEngine.U2D.Light2DType
---@field Point UnityEngine.U2D.Light2DType
---@field Global UnityEngine.U2D.Light2DType
UnityEngine.U2D.Light2DType = {}
---@alias CS.UnityEngine.U2D.Light2DType UnityEngine.U2D.Light2DType
CS.UnityEngine.U2D.Light2DType = UnityEngine.U2D.Light2DType


---@class UnityEngine.U2D.PixelPerfectRendering : System.Object
---@field pixelSnapSpacing number
UnityEngine.U2D.PixelPerfectRendering = {}
---@alias CS.UnityEngine.U2D.PixelPerfectRendering UnityEngine.U2D.PixelPerfectRendering
CS.UnityEngine.U2D.PixelPerfectRendering = UnityEngine.U2D.PixelPerfectRendering


---@class UnityEngine.U2D.SpriteBone : System.ValueType
---@field name string
---@field guid string
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field length number
---@field parentId number
---@field color UnityEngine.Color32
UnityEngine.U2D.SpriteBone = {}
---@alias CS.UnityEngine.U2D.SpriteBone UnityEngine.U2D.SpriteBone
CS.UnityEngine.U2D.SpriteBone = UnityEngine.U2D.SpriteBone


---@class UnityEngine.U2D.SpriteChannelInfo : System.ValueType
---@field buffer System.Void*
---@field count number
---@field offset number
---@field stride number
UnityEngine.U2D.SpriteChannelInfo = {}
---@alias CS.UnityEngine.U2D.SpriteChannelInfo UnityEngine.U2D.SpriteChannelInfo
CS.UnityEngine.U2D.SpriteChannelInfo = UnityEngine.U2D.SpriteChannelInfo


---@class UnityEngine.U2D.SpriteDataAccessExtensions : System.Object
UnityEngine.U2D.SpriteDataAccessExtensions = {}
---@alias CS.UnityEngine.U2D.SpriteDataAccessExtensions UnityEngine.U2D.SpriteDataAccessExtensions
CS.UnityEngine.U2D.SpriteDataAccessExtensions = UnityEngine.U2D.SpriteDataAccessExtensions

---@param sprite UnityEngine.Sprite
---@return Unity.Collections.NativeArray
function UnityEngine.U2D.SpriteDataAccessExtensions.GetBindPoses(sprite) end
---@param sprite UnityEngine.Sprite
---@param src Unity.Collections.NativeArray
function UnityEngine.U2D.SpriteDataAccessExtensions.SetBindPoses(sprite, src) end
---@param sprite UnityEngine.Sprite
---@return Unity.Collections.NativeArray
function UnityEngine.U2D.SpriteDataAccessExtensions.GetIndices(sprite) end
---@param sprite UnityEngine.Sprite
---@param src Unity.Collections.NativeArray
function UnityEngine.U2D.SpriteDataAccessExtensions.SetIndices(sprite, src) end
---@param sprite UnityEngine.Sprite
---@return UnityEngine.U2D.SpriteBone[]
function UnityEngine.U2D.SpriteDataAccessExtensions.GetBones(sprite) end
---@param sprite UnityEngine.Sprite
---@param src UnityEngine.U2D.SpriteBone[]
function UnityEngine.U2D.SpriteDataAccessExtensions.SetBones(sprite, src) end
---@param sprite UnityEngine.Sprite
---@param channel UnityEngine.Rendering.VertexAttribute
---@return boolean
function UnityEngine.U2D.SpriteDataAccessExtensions.HasVertexAttribute(sprite, channel) end
---@param sprite UnityEngine.Sprite
---@param count number
function UnityEngine.U2D.SpriteDataAccessExtensions.SetVertexCount(sprite, count) end
---@param sprite UnityEngine.Sprite
---@return number
function UnityEngine.U2D.SpriteDataAccessExtensions.GetVertexCount(sprite) end

---@class UnityEngine.U2D.SpriteRendererDataAccessExtensions : System.Object
UnityEngine.U2D.SpriteRendererDataAccessExtensions = {}
---@alias CS.UnityEngine.U2D.SpriteRendererDataAccessExtensions UnityEngine.U2D.SpriteRendererDataAccessExtensions
CS.UnityEngine.U2D.SpriteRendererDataAccessExtensions = UnityEngine.U2D.SpriteRendererDataAccessExtensions

---@param renderer UnityEngine.SpriteRenderer
function UnityEngine.U2D.SpriteRendererDataAccessExtensions.DeactivateDeformableBuffer(renderer) end

---@class UnityEngine.U2D.SpriteAtlasManager : System.Object
UnityEngine.U2D.SpriteAtlasManager = {}
---@alias CS.UnityEngine.U2D.SpriteAtlasManager UnityEngine.U2D.SpriteAtlasManager
CS.UnityEngine.U2D.SpriteAtlasManager = UnityEngine.U2D.SpriteAtlasManager

---@return UnityEngine.U2D.SpriteAtlasManager
function UnityEngine.U2D.SpriteAtlasManager.New() end

---@class UnityEngine.U2D.SpriteAtlas : UnityEngine.Object
---@field isVariant boolean
---@field tag string
---@field spriteCount number
UnityEngine.U2D.SpriteAtlas = {}
---@alias CS.UnityEngine.U2D.SpriteAtlas UnityEngine.U2D.SpriteAtlas
CS.UnityEngine.U2D.SpriteAtlas = UnityEngine.U2D.SpriteAtlas

---@return UnityEngine.U2D.SpriteAtlas
function UnityEngine.U2D.SpriteAtlas.New() end
---@param sprite UnityEngine.Sprite
---@return boolean
function UnityEngine.U2D.SpriteAtlas:CanBindTo(sprite) end
---@param name string
---@return UnityEngine.Sprite
function UnityEngine.U2D.SpriteAtlas:GetSprite(name) end
---@overload fun(self: UnityEngine.U2D.SpriteAtlas, sprites: UnityEngine.Sprite[]) : number
---@param sprites UnityEngine.Sprite[]
---@param name string
---@return number
function UnityEngine.U2D.SpriteAtlas:GetSprites(sprites, name) end

---@class UnityEngine.Profiling.ProfilerArea
---@field CPU UnityEngine.Profiling.ProfilerArea
---@field GPU UnityEngine.Profiling.ProfilerArea
---@field Rendering UnityEngine.Profiling.ProfilerArea
---@field Memory UnityEngine.Profiling.ProfilerArea
---@field Audio UnityEngine.Profiling.ProfilerArea
---@field Video UnityEngine.Profiling.ProfilerArea
---@field Physics UnityEngine.Profiling.ProfilerArea
---@field Physics2D UnityEngine.Profiling.ProfilerArea
---@field NetworkMessages UnityEngine.Profiling.ProfilerArea
---@field NetworkOperations UnityEngine.Profiling.ProfilerArea
---@field UI UnityEngine.Profiling.ProfilerArea
---@field UIDetails UnityEngine.Profiling.ProfilerArea
---@field GlobalIllumination UnityEngine.Profiling.ProfilerArea
---@field VirtualTexturing UnityEngine.Profiling.ProfilerArea
UnityEngine.Profiling.ProfilerArea = {}
---@alias CS.UnityEngine.Profiling.ProfilerArea UnityEngine.Profiling.ProfilerArea
CS.UnityEngine.Profiling.ProfilerArea = UnityEngine.Profiling.ProfilerArea


---@class UnityEngine.Profiling.Profiler : System.Object
---@field supported boolean
---@field logFile string
---@field enableBinaryLog boolean
---@field maxUsedMemory number
---@field enabled boolean
---@field enableAllocationCallstacks boolean
---@field areaCount number
---@field usedHeapSizeLong number
UnityEngine.Profiling.Profiler = {}
---@alias CS.UnityEngine.Profiling.Profiler UnityEngine.Profiling.Profiler
CS.UnityEngine.Profiling.Profiler = UnityEngine.Profiling.Profiler

---@param area UnityEngine.Profiling.ProfilerArea
---@param enabled boolean
function UnityEngine.Profiling.Profiler.SetAreaEnabled(area, enabled) end
---@param area UnityEngine.Profiling.ProfilerArea
---@return boolean
function UnityEngine.Profiling.Profiler.GetAreaEnabled(area) end
---@param file string
function UnityEngine.Profiling.Profiler.AddFramesFromFile(file) end
---@param threadGroupName string
---@param threadName string
function UnityEngine.Profiling.Profiler.BeginThreadProfiling(threadGroupName, threadName) end
function UnityEngine.Profiling.Profiler.EndThreadProfiling() end
---@overload fun(name: string)
---@param name string
---@param targetObject UnityEngine.Object
function UnityEngine.Profiling.Profiler.BeginSample(name, targetObject) end
function UnityEngine.Profiling.Profiler.EndSample() end
---@param o UnityEngine.Object
---@return number
function UnityEngine.Profiling.Profiler.GetRuntimeMemorySizeLong(o) end
---@return number
function UnityEngine.Profiling.Profiler.GetMonoHeapSizeLong() end
---@return number
function UnityEngine.Profiling.Profiler.GetMonoUsedSizeLong() end
---@param size number
---@return boolean
function UnityEngine.Profiling.Profiler.SetTempAllocatorRequestedSize(size) end
---@return number
function UnityEngine.Profiling.Profiler.GetTempAllocatorSize() end
---@return number
function UnityEngine.Profiling.Profiler.GetTotalAllocatedMemoryLong() end
---@return number
function UnityEngine.Profiling.Profiler.GetTotalUnusedReservedMemoryLong() end
---@return number
function UnityEngine.Profiling.Profiler.GetTotalReservedMemoryLong() end
---@param stats Unity.Collections.NativeArray
---@return number
function UnityEngine.Profiling.Profiler.GetTotalFragmentationInfo(stats) end
---@return number
function UnityEngine.Profiling.Profiler.GetAllocatedMemoryForGraphicsDriver() end
---@param id System.Guid
---@param tag number
---@param data System.Array
function UnityEngine.Profiling.Profiler.EmitFrameMetaData(id, tag, data) end
---@param id System.Guid
---@param tag number
---@param data System.Array
function UnityEngine.Profiling.Profiler.EmitSessionMetaData(id, tag, data) end
---@param category Unity.Profiling.ProfilerCategory
---@param enabled boolean
function UnityEngine.Profiling.Profiler.SetCategoryEnabled(category, enabled) end
---@param category Unity.Profiling.ProfilerCategory
---@return boolean
function UnityEngine.Profiling.Profiler.IsCategoryEnabled(category) end
---@return number
function UnityEngine.Profiling.Profiler.GetCategoriesCount() end
---@overload fun(categories: Unity.Profiling.ProfilerCategory[])
---@param categories Unity.Collections.NativeArray
function UnityEngine.Profiling.Profiler.GetAllCategories(categories) end

---@class UnityEngine.Profiling.Recorder : System.Object
---@field isValid boolean
---@field enabled boolean
---@field elapsedNanoseconds number
---@field gpuElapsedNanoseconds number
---@field sampleBlockCount number
---@field gpuSampleBlockCount number
UnityEngine.Profiling.Recorder = {}
---@alias CS.UnityEngine.Profiling.Recorder UnityEngine.Profiling.Recorder
CS.UnityEngine.Profiling.Recorder = UnityEngine.Profiling.Recorder

---@param samplerName string
---@return UnityEngine.Profiling.Recorder
function UnityEngine.Profiling.Recorder.Get(samplerName) end
function UnityEngine.Profiling.Recorder:FilterToCurrentThread() end
function UnityEngine.Profiling.Recorder:CollectFromAllThreads() end

---@class UnityEngine.Profiling.Sampler : System.Object
---@field isValid boolean
---@field name string
UnityEngine.Profiling.Sampler = {}
---@alias CS.UnityEngine.Profiling.Sampler UnityEngine.Profiling.Sampler
CS.UnityEngine.Profiling.Sampler = UnityEngine.Profiling.Sampler

---@param name string
---@return UnityEngine.Profiling.Sampler
function UnityEngine.Profiling.Sampler.Get(name) end
---@param names System.Collections.Generic.List
---@return number
function UnityEngine.Profiling.Sampler.GetNames(names) end
---@return UnityEngine.Profiling.Recorder
function UnityEngine.Profiling.Sampler:GetRecorder() end

---@class UnityEngine.Profiling.CustomSampler : UnityEngine.Profiling.Sampler
UnityEngine.Profiling.CustomSampler = {}
---@alias CS.UnityEngine.Profiling.CustomSampler UnityEngine.Profiling.CustomSampler
CS.UnityEngine.Profiling.CustomSampler = UnityEngine.Profiling.CustomSampler

---@param name string
---@param collectGpuData boolean
---@return UnityEngine.Profiling.CustomSampler
function UnityEngine.Profiling.CustomSampler.Create(name, collectGpuData) end
---@overload fun()
---@param targetObject UnityEngine.Object
function UnityEngine.Profiling.CustomSampler:Begin(targetObject) end
function UnityEngine.Profiling.CustomSampler:End() end

---@class UnityEngine.Profiling.Experimental.DebugScreenCapture : System.ValueType
UnityEngine.Profiling.Experimental.DebugScreenCapture = {}
---@alias CS.UnityEngine.Profiling.Experimental.DebugScreenCapture UnityEngine.Profiling.Experimental.DebugScreenCapture
CS.UnityEngine.Profiling.Experimental.DebugScreenCapture = UnityEngine.Profiling.Experimental.DebugScreenCapture


---@class UnityEngine.Profiling.Memory.Experimental.MetaData : System.Object
UnityEngine.Profiling.Memory.Experimental.MetaData = {}
---@alias CS.UnityEngine.Profiling.Memory.Experimental.MetaData UnityEngine.Profiling.Memory.Experimental.MetaData
CS.UnityEngine.Profiling.Memory.Experimental.MetaData = UnityEngine.Profiling.Memory.Experimental.MetaData

---@return UnityEngine.Profiling.Memory.Experimental.MetaData
function UnityEngine.Profiling.Memory.Experimental.MetaData.New() end

---@class UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@field ManagedObjects UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@field NativeObjects UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@field NativeAllocations UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@field NativeAllocationSites UnityEngine.Profiling.Memory.Experimental.CaptureFlags
---@field NativeStackTraces UnityEngine.Profiling.Memory.Experimental.CaptureFlags
UnityEngine.Profiling.Memory.Experimental.CaptureFlags = {}
---@alias CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags UnityEngine.Profiling.Memory.Experimental.CaptureFlags
CS.UnityEngine.Profiling.Memory.Experimental.CaptureFlags = UnityEngine.Profiling.Memory.Experimental.CaptureFlags


---@class UnityEngine.Profiling.Memory.Experimental.MemoryProfiler : System.Object
UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = {}
---@alias CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler UnityEngine.Profiling.Memory.Experimental.MemoryProfiler
CS.UnityEngine.Profiling.Memory.Experimental.MemoryProfiler = UnityEngine.Profiling.Memory.Experimental.MemoryProfiler


---@class UnityEngine.Jobs.IJobParallelForTransform
UnityEngine.Jobs.IJobParallelForTransform = {}
---@alias CS.UnityEngine.Jobs.IJobParallelForTransform UnityEngine.Jobs.IJobParallelForTransform
CS.UnityEngine.Jobs.IJobParallelForTransform = UnityEngine.Jobs.IJobParallelForTransform

---@param index number
---@param transform UnityEngine.Jobs.TransformAccess
function UnityEngine.Jobs.IJobParallelForTransform:Execute(index, transform) end

---@class UnityEngine.Jobs.IJobParallelForTransformExtensions : System.Object
UnityEngine.Jobs.IJobParallelForTransformExtensions = {}
---@alias CS.UnityEngine.Jobs.IJobParallelForTransformExtensions UnityEngine.Jobs.IJobParallelForTransformExtensions
CS.UnityEngine.Jobs.IJobParallelForTransformExtensions = UnityEngine.Jobs.IJobParallelForTransformExtensions


---@class UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct : System.ValueType
UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct = {}
---@alias CS.UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct
CS.UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct = UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct

---@param ref_jobData T
---@param jobData2 System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.Execute(ref_jobData, jobData2, bufferRangePatchData, ref_ranges, jobIndex) end

---@class UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.TransformJobData : System.ValueType
---@field TransformAccessArray System.IntPtr
---@field IsReadOnly number
UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.TransformJobData = {}
---@alias CS.UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.TransformJobData UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.TransformJobData
CS.UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.TransformJobData = UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.TransformJobData


---@class UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction : System.MulticastDelegate
UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction = {}
---@alias CS.UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction
CS.UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction = UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction
function UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction.New(object, method) end
---@param ref_jobData T
---@param additionalPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction:Invoke(ref_jobData, additionalPtr, bufferRangePatchData, ref_ranges, jobIndex) end
---@param ref_jobData T
---@param additionalPtr System.IntPtr
---@param bufferRangePatchData System.IntPtr
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param jobIndex number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction:BeginInvoke(ref_jobData, additionalPtr, bufferRangePatchData, ref_ranges, jobIndex, callback, object) end
---@param ref_jobData T
---@param ref_ranges Unity.Jobs.LowLevel.Unsafe.JobRanges
---@param result System.IAsyncResult
---@return ,T,Unity.Jobs.LowLevel.Unsafe.JobRanges
function UnityEngine.Jobs.IJobParallelForTransformExtensions.TransformParallelForLoopStruct.ExecuteJobFunction:EndInvoke(ref_jobData, ref_ranges, result) end

---@class UnityEngine.Jobs.TransformAccess : System.ValueType
---@field position UnityEngine.Vector3
---@field rotation UnityEngine.Quaternion
---@field localPosition UnityEngine.Vector3
---@field localRotation UnityEngine.Quaternion
---@field localScale UnityEngine.Vector3
---@field localToWorldMatrix UnityEngine.Matrix4x4
---@field worldToLocalMatrix UnityEngine.Matrix4x4
---@field isValid boolean
UnityEngine.Jobs.TransformAccess = {}
---@alias CS.UnityEngine.Jobs.TransformAccess UnityEngine.Jobs.TransformAccess
CS.UnityEngine.Jobs.TransformAccess = UnityEngine.Jobs.TransformAccess

---@param position UnityEngine.Vector3
---@param rotation UnityEngine.Quaternion
function UnityEngine.Jobs.TransformAccess:SetPositionAndRotation(position, rotation) end
---@param localPosition UnityEngine.Vector3
---@param localRotation UnityEngine.Quaternion
function UnityEngine.Jobs.TransformAccess:SetLocalPositionAndRotation(localPosition, localRotation) end
---@param out_position UnityEngine.Vector3
---@param out_rotation UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.Jobs.TransformAccess:GetPositionAndRotation(out_position, out_rotation) end
---@param out_localPosition UnityEngine.Vector3
---@param out_localRotation UnityEngine.Quaternion
---@return ,UnityEngine.Vector3,UnityEngine.Quaternion
function UnityEngine.Jobs.TransformAccess:GetLocalPositionAndRotation(out_localPosition, out_localRotation) end

---@class UnityEngine.Jobs.TransformAccessArray : System.ValueType
---@field isCreated boolean
---@field Item UnityEngine.Transform
---@field capacity number
---@field length number
UnityEngine.Jobs.TransformAccessArray = {}
---@alias CS.UnityEngine.Jobs.TransformAccessArray UnityEngine.Jobs.TransformAccessArray
CS.UnityEngine.Jobs.TransformAccessArray = UnityEngine.Jobs.TransformAccessArray

---@overload fun(transforms: UnityEngine.Transform[], desiredJobCount: number) : UnityEngine.Jobs.TransformAccessArray
---@param capacity number
---@param desiredJobCount number
---@return UnityEngine.Jobs.TransformAccessArray
function UnityEngine.Jobs.TransformAccessArray.New(capacity, desiredJobCount) end
---@param capacity number
---@param desiredJobCount number
---@param out_array UnityEngine.Jobs.TransformAccessArray
---@return ,UnityEngine.Jobs.TransformAccessArray
function UnityEngine.Jobs.TransformAccessArray.Allocate(capacity, desiredJobCount, out_array) end
function UnityEngine.Jobs.TransformAccessArray:Dispose() end
---@overload fun(self: UnityEngine.Jobs.TransformAccessArray, transform: UnityEngine.Transform)
---@param instanceId number
function UnityEngine.Jobs.TransformAccessArray:Add(instanceId) end
---@param index number
function UnityEngine.Jobs.TransformAccessArray:RemoveAtSwapBack(index) end
---@param transforms UnityEngine.Transform[]
function UnityEngine.Jobs.TransformAccessArray:SetTransforms(transforms) end

---@class UnityEngine.WSA.AppCallbackItem : System.MulticastDelegate
UnityEngine.WSA.AppCallbackItem = {}
---@alias CS.UnityEngine.WSA.AppCallbackItem UnityEngine.WSA.AppCallbackItem
CS.UnityEngine.WSA.AppCallbackItem = UnityEngine.WSA.AppCallbackItem

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.WSA.AppCallbackItem
function UnityEngine.WSA.AppCallbackItem.New(object, method) end
function UnityEngine.WSA.AppCallbackItem:Invoke() end
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.WSA.AppCallbackItem:BeginInvoke(callback, object) end
---@param result System.IAsyncResult
function UnityEngine.WSA.AppCallbackItem:EndInvoke(result) end

---@class UnityEngine.WSA.WindowSizeChanged : System.MulticastDelegate
UnityEngine.WSA.WindowSizeChanged = {}
---@alias CS.UnityEngine.WSA.WindowSizeChanged UnityEngine.WSA.WindowSizeChanged
CS.UnityEngine.WSA.WindowSizeChanged = UnityEngine.WSA.WindowSizeChanged

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.WSA.WindowSizeChanged
function UnityEngine.WSA.WindowSizeChanged.New(object, method) end
---@param width number
---@param height number
function UnityEngine.WSA.WindowSizeChanged:Invoke(width, height) end
---@param width number
---@param height number
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.WSA.WindowSizeChanged:BeginInvoke(width, height, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.WSA.WindowSizeChanged:EndInvoke(result) end

---@class UnityEngine.WSA.WindowActivationState
---@field CodeActivated UnityEngine.WSA.WindowActivationState
---@field Deactivated UnityEngine.WSA.WindowActivationState
---@field PointerActivated UnityEngine.WSA.WindowActivationState
UnityEngine.WSA.WindowActivationState = {}
---@alias CS.UnityEngine.WSA.WindowActivationState UnityEngine.WSA.WindowActivationState
CS.UnityEngine.WSA.WindowActivationState = UnityEngine.WSA.WindowActivationState


---@class UnityEngine.WSA.WindowActivated : System.MulticastDelegate
UnityEngine.WSA.WindowActivated = {}
---@alias CS.UnityEngine.WSA.WindowActivated UnityEngine.WSA.WindowActivated
CS.UnityEngine.WSA.WindowActivated = UnityEngine.WSA.WindowActivated

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.WSA.WindowActivated
function UnityEngine.WSA.WindowActivated.New(object, method) end
---@param state UnityEngine.WSA.WindowActivationState
function UnityEngine.WSA.WindowActivated:Invoke(state) end
---@param state UnityEngine.WSA.WindowActivationState
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.WSA.WindowActivated:BeginInvoke(state, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.WSA.WindowActivated:EndInvoke(result) end

---@class UnityEngine.WSA.Application : System.Object
---@field arguments string
---@field advertisingIdentifier string
UnityEngine.WSA.Application = {}
---@alias CS.UnityEngine.WSA.Application UnityEngine.WSA.Application
CS.UnityEngine.WSA.Application = UnityEngine.WSA.Application

---@return UnityEngine.WSA.Application
function UnityEngine.WSA.Application.New() end
---@param item UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone boolean
function UnityEngine.WSA.Application.InvokeOnAppThread(item, waitUntilDone) end
---@param item UnityEngine.WSA.AppCallbackItem
---@param waitUntilDone boolean
function UnityEngine.WSA.Application.InvokeOnUIThread(item, waitUntilDone) end
---@return boolean
function UnityEngine.WSA.Application.RunningOnAppThread() end
---@return boolean
function UnityEngine.WSA.Application.RunningOnUIThread() end

---@class UnityEngine.WSA.Cursor : System.Object
UnityEngine.WSA.Cursor = {}
---@alias CS.UnityEngine.WSA.Cursor UnityEngine.WSA.Cursor
CS.UnityEngine.WSA.Cursor = UnityEngine.WSA.Cursor

---@param id number
function UnityEngine.WSA.Cursor.SetCustomCursor(id) end

---@class UnityEngine.WSA.Folder
---@field Installation UnityEngine.WSA.Folder
---@field Temporary UnityEngine.WSA.Folder
---@field Local UnityEngine.WSA.Folder
---@field Roaming UnityEngine.WSA.Folder
---@field CameraRoll UnityEngine.WSA.Folder
---@field DocumentsLibrary UnityEngine.WSA.Folder
---@field HomeGroup UnityEngine.WSA.Folder
---@field MediaServerDevices UnityEngine.WSA.Folder
---@field MusicLibrary UnityEngine.WSA.Folder
---@field PicturesLibrary UnityEngine.WSA.Folder
---@field Playlists UnityEngine.WSA.Folder
---@field RemovableDevices UnityEngine.WSA.Folder
---@field SavedPictures UnityEngine.WSA.Folder
---@field VideosLibrary UnityEngine.WSA.Folder
UnityEngine.WSA.Folder = {}
---@alias CS.UnityEngine.WSA.Folder UnityEngine.WSA.Folder
CS.UnityEngine.WSA.Folder = UnityEngine.WSA.Folder


---@class UnityEngine.WSA.Launcher : System.Object
UnityEngine.WSA.Launcher = {}
---@alias CS.UnityEngine.WSA.Launcher UnityEngine.WSA.Launcher
CS.UnityEngine.WSA.Launcher = UnityEngine.WSA.Launcher

---@return UnityEngine.WSA.Launcher
function UnityEngine.WSA.Launcher.New() end
---@param folder UnityEngine.WSA.Folder
---@param relativeFilePath string
---@param showWarning boolean
function UnityEngine.WSA.Launcher.LaunchFile(folder, relativeFilePath, showWarning) end
---@param fileExtension string
function UnityEngine.WSA.Launcher.LaunchFileWithPicker(fileExtension) end
---@param uri string
---@param showWarning boolean
function UnityEngine.WSA.Launcher.LaunchUri(uri, showWarning) end

---@class UnityEngine.WSA.TileTemplate
---@field TileSquare150x150Image UnityEngine.WSA.TileTemplate
---@field TileSquare150x150Block UnityEngine.WSA.TileTemplate
---@field TileSquare150x150Text01 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150Text02 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150Text03 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150Text04 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150PeekImageAndText01 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150PeekImageAndText02 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150PeekImageAndText03 UnityEngine.WSA.TileTemplate
---@field TileSquare150x150PeekImageAndText04 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Image UnityEngine.WSA.TileTemplate
---@field TileWide310x150ImageCollection UnityEngine.WSA.TileTemplate
---@field TileWide310x150ImageAndText01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150ImageAndText02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150BlockAndText01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150BlockAndText02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageCollection01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageCollection02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageCollection03 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageCollection04 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageCollection05 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageCollection06 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageAndText01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImageAndText02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImage01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImage02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImage03 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImage04 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImage05 UnityEngine.WSA.TileTemplate
---@field TileWide310x150PeekImage06 UnityEngine.WSA.TileTemplate
---@field TileWide310x150SmallImageAndText01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150SmallImageAndText02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150SmallImageAndText03 UnityEngine.WSA.TileTemplate
---@field TileWide310x150SmallImageAndText04 UnityEngine.WSA.TileTemplate
---@field TileWide310x150SmallImageAndText05 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text01 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text02 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text03 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text04 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text05 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text06 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text07 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text08 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text09 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text10 UnityEngine.WSA.TileTemplate
---@field TileWide310x150Text11 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310BlockAndText01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310BlockAndText02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Image UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageAndText01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageAndText02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageAndTextOverlay01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageAndTextOverlay02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageAndTextOverlay03 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageCollectionAndText01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageCollectionAndText02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310ImageCollection UnityEngine.WSA.TileTemplate
---@field TileSquare310x310SmallImagesAndTextList01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310SmallImagesAndTextList02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310SmallImagesAndTextList03 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310SmallImagesAndTextList04 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text03 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text04 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text05 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text06 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text07 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text08 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310TextList01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310TextList02 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310TextList03 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310SmallImageAndText01 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310SmallImagesAndTextList05 UnityEngine.WSA.TileTemplate
---@field TileSquare310x310Text09 UnityEngine.WSA.TileTemplate
---@field TileSquare71x71IconWithBadge UnityEngine.WSA.TileTemplate
---@field TileSquare150x150IconWithBadge UnityEngine.WSA.TileTemplate
---@field TileWide310x150IconWithBadgeAndText UnityEngine.WSA.TileTemplate
---@field TileSquare71x71Image UnityEngine.WSA.TileTemplate
---@field TileTall150x310Image UnityEngine.WSA.TileTemplate
---@field TileSquare99x99IconWithBadge UnityEngine.WSA.TileTemplate
---@field TileSquare210x210IconWithBadge UnityEngine.WSA.TileTemplate
---@field TileWide432x210IconWithBadgeAndText UnityEngine.WSA.TileTemplate
UnityEngine.WSA.TileTemplate = {}
---@alias CS.UnityEngine.WSA.TileTemplate UnityEngine.WSA.TileTemplate
CS.UnityEngine.WSA.TileTemplate = UnityEngine.WSA.TileTemplate


---@class UnityEngine.WSA.ToastTemplate
---@field ToastImageAndText01 UnityEngine.WSA.ToastTemplate
---@field ToastImageAndText02 UnityEngine.WSA.ToastTemplate
---@field ToastImageAndText03 UnityEngine.WSA.ToastTemplate
---@field ToastImageAndText04 UnityEngine.WSA.ToastTemplate
---@field ToastText01 UnityEngine.WSA.ToastTemplate
---@field ToastText02 UnityEngine.WSA.ToastTemplate
---@field ToastText03 UnityEngine.WSA.ToastTemplate
---@field ToastText04 UnityEngine.WSA.ToastTemplate
UnityEngine.WSA.ToastTemplate = {}
---@alias CS.UnityEngine.WSA.ToastTemplate UnityEngine.WSA.ToastTemplate
CS.UnityEngine.WSA.ToastTemplate = UnityEngine.WSA.ToastTemplate


---@class UnityEngine.WSA.TileForegroundText
---@field Default UnityEngine.WSA.TileForegroundText
---@field Dark UnityEngine.WSA.TileForegroundText
---@field Light UnityEngine.WSA.TileForegroundText
UnityEngine.WSA.TileForegroundText = {}
---@alias CS.UnityEngine.WSA.TileForegroundText UnityEngine.WSA.TileForegroundText
CS.UnityEngine.WSA.TileForegroundText = UnityEngine.WSA.TileForegroundText


---@class UnityEngine.WSA.SecondaryTileData : System.ValueType
---@field arguments string
---@field backgroundColorSet boolean
---@field displayName string
---@field foregroundText UnityEngine.WSA.TileForegroundText
---@field lockScreenBadgeLogo string
---@field lockScreenDisplayBadgeAndTileText boolean
---@field phoneticName string
---@field roamingEnabled boolean
---@field showNameOnSquare150x150Logo boolean
---@field showNameOnSquare310x310Logo boolean
---@field showNameOnWide310x150Logo boolean
---@field square150x150Logo string
---@field square30x30Logo string
---@field square310x310Logo string
---@field square70x70Logo string
---@field tileId string
---@field wide310x150Logo string
---@field backgroundColor UnityEngine.Color32
UnityEngine.WSA.SecondaryTileData = {}
---@alias CS.UnityEngine.WSA.SecondaryTileData UnityEngine.WSA.SecondaryTileData
CS.UnityEngine.WSA.SecondaryTileData = UnityEngine.WSA.SecondaryTileData

---@param id string
---@param displayName string
---@return UnityEngine.WSA.SecondaryTileData
function UnityEngine.WSA.SecondaryTileData.New(id, displayName) end

---@class UnityEngine.WSA.Tile : System.Object
---@field main UnityEngine.WSA.Tile
---@field id string
---@field hasUserConsent boolean
---@field exists boolean
UnityEngine.WSA.Tile = {}
---@alias CS.UnityEngine.WSA.Tile UnityEngine.WSA.Tile
CS.UnityEngine.WSA.Tile = UnityEngine.WSA.Tile

---@param templ UnityEngine.WSA.TileTemplate
---@return string
function UnityEngine.WSA.Tile.GetTemplate(templ) end
---@param tileId string
---@return boolean
function UnityEngine.WSA.Tile.Exists(tileId) end
---@overload fun(data: UnityEngine.WSA.SecondaryTileData) : UnityEngine.WSA.Tile
---@overload fun(data: UnityEngine.WSA.SecondaryTileData, pos: UnityEngine.Vector2) : UnityEngine.WSA.Tile
---@param data UnityEngine.WSA.SecondaryTileData
---@param area UnityEngine.Rect
---@return UnityEngine.WSA.Tile
function UnityEngine.WSA.Tile.CreateOrUpdateSecondary(data, area) end
---@param tileId string
---@return UnityEngine.WSA.Tile
function UnityEngine.WSA.Tile.GetSecondary(tileId) end
---@return UnityEngine.WSA.Tile[]
function UnityEngine.WSA.Tile.GetSecondaries() end
---@overload fun(tileId: string)
---@overload fun(tileId: string, pos: UnityEngine.Vector2)
---@param tileId string
---@param area UnityEngine.Rect
function UnityEngine.WSA.Tile.DeleteSecondary(tileId, area) end
---@overload fun(self: UnityEngine.WSA.Tile, xml: string)
---@param medium string
---@param wide string
---@param large string
---@param text string
function UnityEngine.WSA.Tile:Update(medium, wide, large, text) end
---@param uri string
---@param interval number
function UnityEngine.WSA.Tile:PeriodicUpdate(uri, interval) end
function UnityEngine.WSA.Tile:StopPeriodicUpdate() end
---@param image string
function UnityEngine.WSA.Tile:UpdateBadgeImage(image) end
---@param number number
function UnityEngine.WSA.Tile:UpdateBadgeNumber(number) end
function UnityEngine.WSA.Tile:RemoveBadge() end
---@param uri string
---@param interval number
function UnityEngine.WSA.Tile:PeriodicBadgeUpdate(uri, interval) end
function UnityEngine.WSA.Tile:StopPeriodicBadgeUpdate() end
---@overload fun()
---@overload fun(self: UnityEngine.WSA.Tile, pos: UnityEngine.Vector2)
---@param area UnityEngine.Rect
function UnityEngine.WSA.Tile:Delete(area) end

---@class UnityEngine.WSA.Toast : System.Object
---@field arguments string
---@field activated boolean
---@field dismissed boolean
---@field dismissedByUser boolean
UnityEngine.WSA.Toast = {}
---@alias CS.UnityEngine.WSA.Toast UnityEngine.WSA.Toast
CS.UnityEngine.WSA.Toast = UnityEngine.WSA.Toast

---@param templ UnityEngine.WSA.ToastTemplate
---@return string
function UnityEngine.WSA.Toast.GetTemplate(templ) end
---@overload fun(xml: string) : UnityEngine.WSA.Toast
---@param image string
---@param text string
---@return UnityEngine.WSA.Toast
function UnityEngine.WSA.Toast.Create(image, text) end
function UnityEngine.WSA.Toast:Show() end
function UnityEngine.WSA.Toast:Hide() end

---@class UnityEngine.Windows.LicenseInformation : System.Object
---@field isOnAppTrial boolean
UnityEngine.Windows.LicenseInformation = {}
---@alias CS.UnityEngine.Windows.LicenseInformation UnityEngine.Windows.LicenseInformation
CS.UnityEngine.Windows.LicenseInformation = UnityEngine.Windows.LicenseInformation

---@return string
function UnityEngine.Windows.LicenseInformation.PurchaseApp() end

---@class UnityEngine.Windows.CrashReporting : System.Object
---@field crashReportFolder string
UnityEngine.Windows.CrashReporting = {}
---@alias CS.UnityEngine.Windows.CrashReporting UnityEngine.Windows.CrashReporting
CS.UnityEngine.Windows.CrashReporting = UnityEngine.Windows.CrashReporting


---@class UnityEngine.Windows.Crypto : System.Object
UnityEngine.Windows.Crypto = {}
---@alias CS.UnityEngine.Windows.Crypto UnityEngine.Windows.Crypto
CS.UnityEngine.Windows.Crypto = UnityEngine.Windows.Crypto

---@param buffer System.Byte[]
---@return System.Byte[]
function UnityEngine.Windows.Crypto.ComputeMD5Hash(buffer) end
---@param buffer System.Byte[]
---@return System.Byte[]
function UnityEngine.Windows.Crypto.ComputeSHA1Hash(buffer) end

---@class UnityEngine.Windows.Directory : System.Object
---@field temporaryFolder string
---@field localFolder string
---@field roamingFolder string
UnityEngine.Windows.Directory = {}
---@alias CS.UnityEngine.Windows.Directory UnityEngine.Windows.Directory
CS.UnityEngine.Windows.Directory = UnityEngine.Windows.Directory

---@param path string
function UnityEngine.Windows.Directory.CreateDirectory(path) end
---@param path string
---@return boolean
function UnityEngine.Windows.Directory.Exists(path) end
---@param path string
function UnityEngine.Windows.Directory.Delete(path) end

---@class UnityEngine.Windows.File : System.Object
UnityEngine.Windows.File = {}
---@alias CS.UnityEngine.Windows.File UnityEngine.Windows.File
CS.UnityEngine.Windows.File = UnityEngine.Windows.File

---@param path string
---@return System.Byte[]
function UnityEngine.Windows.File.ReadAllBytes(path) end
---@param path string
---@param bytes System.Byte[]
function UnityEngine.Windows.File.WriteAllBytes(path, bytes) end
---@param path string
---@return boolean
function UnityEngine.Windows.File.Exists(path) end
---@param path string
function UnityEngine.Windows.File.Delete(path) end

---@class UnityEngine.Windows.Input : System.Object
UnityEngine.Windows.Input = {}
---@alias CS.UnityEngine.Windows.Input UnityEngine.Windows.Input
CS.UnityEngine.Windows.Input = UnityEngine.Windows.Input

---@overload fun(rawInputHeaderIndices: System.IntPtr, rawInputDataIndices: System.IntPtr, indicesCount: number, rawInputData: System.IntPtr, rawInputDataSize: number)
---@param rawInputHeaderIndices System.UInt32*
---@param rawInputDataIndices System.UInt32*
---@param indicesCount number
---@param rawInputData System.Byte*
---@param rawInputDataSize number
function UnityEngine.Windows.Input.ForwardRawInput(rawInputHeaderIndices, rawInputDataIndices, indicesCount, rawInputData, rawInputDataSize) end

---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem : System.Object
---@field isSupported boolean
---@field Status UnityEngine.Windows.Speech.SpeechSystemStatus
UnityEngine.Windows.Speech.PhraseRecognitionSystem = {}
---@alias CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem UnityEngine.Windows.Speech.PhraseRecognitionSystem
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem = UnityEngine.Windows.Speech.PhraseRecognitionSystem

function UnityEngine.Windows.Speech.PhraseRecognitionSystem.Restart() end
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.Shutdown() end

---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate : System.MulticastDelegate
UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate = {}
---@alias CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate = UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate.New(object, method) end
---@param errorCode UnityEngine.Windows.Speech.SpeechError
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate:Invoke(errorCode) end
---@param errorCode UnityEngine.Windows.Speech.SpeechError
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate:BeginInvoke(errorCode, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.ErrorDelegate:EndInvoke(result) end

---@class UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate : System.MulticastDelegate
UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate = {}
---@alias CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate
CS.UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate = UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate.New(object, method) end
---@param status UnityEngine.Windows.Speech.SpeechSystemStatus
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate:Invoke(status) end
---@param status UnityEngine.Windows.Speech.SpeechSystemStatus
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate:BeginInvoke(status, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.PhraseRecognitionSystem.StatusDelegate:EndInvoke(result) end

---@class UnityEngine.Windows.Speech.PhraseRecognizer : System.Object
---@field IsRunning boolean
UnityEngine.Windows.Speech.PhraseRecognizer = {}
---@alias CS.UnityEngine.Windows.Speech.PhraseRecognizer UnityEngine.Windows.Speech.PhraseRecognizer
CS.UnityEngine.Windows.Speech.PhraseRecognizer = UnityEngine.Windows.Speech.PhraseRecognizer

function UnityEngine.Windows.Speech.PhraseRecognizer:Start() end
function UnityEngine.Windows.Speech.PhraseRecognizer:Stop() end
function UnityEngine.Windows.Speech.PhraseRecognizer:Dispose() end

---@class UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate : System.MulticastDelegate
UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate = {}
---@alias CS.UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate
CS.UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate = UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate

---@param object System.Object
---@param method System.IntPtr
---@return UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate
function UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate.New(object, method) end
---@param args UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
function UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate:Invoke(args) end
---@param args UnityEngine.Windows.Speech.PhraseRecognizedEventArgs
---@param callback System.AsyncCallback
---@param object System.Object
---@return System.IAsyncResult
function UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate:BeginInvoke(args, callback, object) end
---@param result System.IAsyncResult
function UnityEngine.Windows.Speech.PhraseRecognizer.PhraseRecognizedDelegate:EndInvoke(result) end
