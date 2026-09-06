# SRPG_2026

基于 Unity 2022.3 (URP) 的 3D 方块风格战棋策略 RPG。以体素（Minecraft 风格）世界呈现棋盘，玩法采用 Slay-the-Spire 式节点推进，战斗为回合制战棋。主要面向 Windows。

## 环境要求

- Unity 2022.3.50f1 (LTS)
- Windows（主平台）
- 依赖包：Addressables、Cinemachine、URP、UniTask、DOTween、Newtonsoft.Json、xLua

## 运行与构建

1. 用 Unity Hub 打开本目录（`Unity.exe -projectPath <repo>`）。
2. 首次打开后等待脚本编译与 Addressables 组构建完成。
3. 进入 `Assets/Scenes/LaunchScene` 运行游戏：
   - `LaunchScene`：启动流程（版本检查 / 热更下载 → 主菜单）。
   - 战斗中通过 `BattleBootstrap` 生成节点地图并进入关卡。
4. 构建：`File → Build Settings → Build`（Windows）。

> 热更新相关内容见 `Assets/Script/Manager/UpdateManager.cs` 与 `Docs/`。

## 场景入口

| 场景 | 路径 | 用途 |
|---|---|---|
| LaunchScene | `Assets/Scenes/LaunchScene.unity` | 启动、热更、主菜单 |
| LoadScene | `Assets/Scenes/LoadScene.unity` | 加载/更新进度界面 |
| SampleScene | `Assets/Scenes/SampleScene.unity` | 基础测试场景 |
| RenderTestScene | `Assets/Scenes/RenderTestScene.unity` | 渲染特性验证 |

## 代码结构

```
Assets/Script/
├── Core/        # 数据层：伤害/战斗数值、状态、命令、表格配置
│   ├── Data/    #   表格加载 (CSV → 配置字典)
│   ├── Status/  #   状态 / 伤害修改器
│   └── Command/ #   指令系统
├── GamePlay/    # 玩法层：单位、战斗、AI、网格、Buff、技能、藏品、事件
├── Manager/     # 全局管理器：战斗/回合/地图/单位/运行/UI/热更
├── Map/         # 地图：节点地图生成与持久化
├── Render/      # 自定义渲染特性（URP ScriptableRendererFeature）
├── UI/          # 界面：引导、面板、节点地图、Timeline 等
└── LUA/         # Lua 运行时逻辑（Buff/Skill/Relic 扩展，经 xLua 绑定）
```

配置数据采用 CSV 驱动，位于 `Assets/Data/Table/`（方块、单位、关卡、节点、事件、藏品、道具等），由 `Core.Data.TableData` 加载为运行时字典。

## 渲染特性

`Assets/Script/Render/` 内含一组自定义 URP 渲染器特性（与 `Assets/shader/` 配套），用于体素世界的实时渲染实验：

- 体素射线追踪与体素单位烘焙（`VoxelRaytraceFeature`、`VoxelUnitBakerFeature`、`VoxelFaceBaker`）
- 屏幕空间反射与累积（`SSRFeature`、`ReflectionDataFeature`）
- 辐照度缓存全局光（`IrradianceCacheFeature`）
- 单位描边 / 对象 ID（`UnitStrokeRenderFeature`、`UnitObjectIdRegistry`）
- 曝光的应用与自动曝光

各特性开关与参数在 `Assets/Settings/` 下的 URP Renderer Asset（`URP-HighFidelity-Renderer.asset` 等）中配置。

## 调试与测试

项目未配置自动化测试框架，以编辑器内手动测试为主：

- `Assets/Script/Debug/`：`Test_Battle.cs`（战斗系统）、`Test_ClickMove.cs`（移动测试）
- 将测试脚本挂到场景对象，进入 Play Mode，通过 Inspector 按钮或 Console 触发
- 渲染相关诊断工具位于 `Assets/Script/Editor/`（Voxel / 辐照度缓存校验等）

## 相关文档

- `AGENTS.md`：协作与代码规范（面向 AI 助手与开发者）
- `Docs/BALANCE_REFERENCE.md`：数值设计基准
- `Docs/HotUpdate_Architecture_zh.md`：热更新架构说明（本地）
- `Assets/XLua/Doc/`：xLua 官方文档
