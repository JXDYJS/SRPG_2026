# Print Directory Skill Implementation

## For OpenCode Assistant

When the user invokes the print-directory skill, follow these implementation rules:

### 1. Command Recognition
- Recognize: `/print-directory`, `/pd`, `/dir`, `/ls`
- Parse arguments using standard CLI parsing patterns

### 2. Core Implementation Logic

```bash
# Basic implementation template
print_directory() {
    local path="${1:-.}"
    local depth="${2:-3}"
    local show_size="${3:-false}"
    
    # Validate path exists
    if [ ! -d "$path" ]; then
        echo "Error: Directory not found: $path"
        return 1
    fi
    
    # Print header
    echo "Directory: $(realpath "$path")"
    echo ""
    
    # Use appropriate command based on platform
    if [[ "$OSTYPE" == "darwin"* ]] || [[ "$OSTYPE" == "linux-gnu"* ]]; then
        # Unix-like systems
        if [ "$show_size" = "true" ]; then
            ls -lah "$path" | head -20
        else
            ls -la "$path" | head -20
        fi
    else
        # Windows
        dir "$path"
    fi
}
```

### 3. When to Use This Skill
- User asks "what files are in this directory?"
- User requests directory listing
- User needs to explore project structure
- Before file operations to verify paths

### 4. Output Formatting Rules
- Always show full path at the top
- Include file count if possible
- Format consistently (icons, indentation)
- Limit output for large directories (suggest pagination)

### 5. Integration with Other Tools
- Combine with `find` for filtering
- Use `tree` command if available
- Pipe to `grep` for searching
- Output to file with `>` if requested

### 6. Error Handling Examples
```bash
# Non-existent directory
if [ ! -d "$path" ]; then
    echo "❌ Directory not found: $path"
    echo "   Available directories in parent:"
    ls -d "$(dirname "$path")"/*/ 2>/dev/null || echo "   (none)"
    return 1
fi

# Permission denied
if [ ! -r "$path" ]; then
    echo "❌ Permission denied: $path"
    return 1
fi
```

### 7. Platform-Specific Commands

**Linux/macOS:**
```bash
# Basic listing
ls -la

# With human-readable sizes
ls -lah

# Tree view (install with: brew install tree / apt install tree)
tree -L 3

# Sort by size
ls -laS

# Sort by modification time
ls -lat
```

**Windows:**
```bash
# Basic dir
dir

# With details
dir /Q

# Tree view
tree /F

# PowerShell
Get-ChildItem
```

### 8. Example Responses

**Simple request:**
```
用户: /pd
助手: 当前目录内容:

📁 E:\unity\SRPG_2026
├── 📁 .git/
├── 📁 Assets/
├── 📁 ProjectSettings/
├── 📄 Packages.lock
└── 📄 README.md

共 5 个项目
```

**With options:**
```
用户: /pd Assets -s -d 2
助手: Assets 目录 (显示大小):

📁 Assets/
├── 📁 Scripts/ (4.2 MB)
│   ├── 📄 Main.cs (1.5 KB)
│   └── 📁 Components/ (2.7 MB)
├── 📁 Textures/ (15.3 MB)
└── 📁 Sounds/ (8.1 MB)

总计: 27.6 MB
```

### 9. Performance Guidelines
- For directories with >50 items, show summary first
- Offer filtering options for large directories
- Consider async loading for very large directories
- Cache results for repeated queries

### 10. Testing Commands
```bash
# Test basic functionality
/pd .

# Test with path
/pd ./src

# Test with options
/pd -s -a

# Test error cases
/pd /nonexistent
/pd /root  # permission denied
```

## Skill Activation
This skill should be automatically loaded when:
- User mentions "directory", "files", "list", "ls", "dir"
- User needs to explore project structure
- Before file operations to verify context