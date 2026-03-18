# Technology Stack

**Analysis Date:** 2026-03-18

## Languages

**Primary:**
- C# (Unity) - All game logic scripts in `Assets/Script/`

**Secondary:**
- ShaderLab (Unity shaders) - Shader files in `Assets/shader/`
- Unity YAML - Scene and asset serialization

## Runtime

**Environment:**
- Unity 2022.3.50f1c1 (LTS)

**Package Manager:**
- Unity Package Manager (UPM)
- Lockfile: `Packages/manifest.json` present

## Frameworks

**Core:**
- Unity Engine 2022.3.50f1c1 - Game engine and runtime
- UniTask (Cysharp) - Async/await support for Unity

**Testing:**
- Unity Test Framework 1.1.33 - Unit testing framework

**Build/Dev:**
- Unity Addressables 1.22.3 - Asset management system
- Unity Cinemachine 2.10.6 - Camera system
- Unity ProBuilder 5.2.4 - Level design tools
- DOTween - Animation tweening library

## Key Dependencies

**Critical:**
- Newtonsoft.Json 3.2.2 - JSON serialization
- TextMesh Pro 3.0.7 - Advanced text rendering
- Unity Universal Render Pipeline 14.0.11 - Graphics pipeline

**Infrastructure:**
- Unity Visual Scripting 1.9.4 - Visual programming
- Unity Timeline 1.7.6 - Animation sequencing
- Unity Collab 2.11.2 - Version control collaboration

## Configuration

**Environment:**
- Project settings in `ProjectSettings/`
- Unity version locked in `ProjectSettings/ProjectVersion.txt`
- Package dependencies in `Packages/manifest.json`

**Build:**
- Build configurations via Unity Build Settings
- Addressable asset groups in `Assets/AddressableAssetsData/`

## Platform Requirements

**Development:**
- Unity 2022.3.50f1c1 Editor
- .NET Framework 4.x / .NET Standard 2.1
- Windows/macOS/Linux for editor

**Production:**
- Target platforms: Windows, potentially other Unity-supported platforms
- Build output via Unity Build Pipeline

---

*Stack analysis: 2026-03-18*