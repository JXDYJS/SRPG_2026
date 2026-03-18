# Print Directory Skill Loader

This file tells OpenCode how to load and use the print-directory skill.

## Skill Registration

**Name:** print-directory  
**Type:** filesystem-utility  
**Priority:** medium  
**Auto-load:** yes  

## Trigger Patterns

The skill should be activated when user input matches:

### Commands
- `/print-directory`
- `/pd`
- `/dir`
- `/ls`

### Keywords
- "list files"
- "show directory"
- "what's in this folder"
- "explore directory"
- "browse files"

### Questions
- "What files are here?"
- "Can you show me the directory structure?"
- "How is this project organized?"
- "What's in the [folder] directory?"

## Implementation Hook

When skill is triggered, the assistant should:

1. **Parse arguments** from user input
2. **Validate path** (default to current directory)
3. **Execute appropriate command** based on platform
4. **Format output** with icons and structure
5. **Handle errors** gracefully

## Example Usage in Conversation

```
用户: /pd Assets
助手: [使用bash工具执行目录列表命令并格式化输出]

用户: 这个项目有哪些文件？
助手: [自动触发print-directory skill，显示项目结构]

用户: /pd -t -d 2
助手: [显示树状目录结构，深度为2]
```

## Integration Points

This skill integrates with:
- File search operations
- Project exploration
- Path validation before file operations
- Codebase understanding tasks

## Configuration

No special configuration required. Skill uses:
- Standard filesystem commands (ls, dir, find)
- Platform detection (Windows vs Unix)
- Safe path resolution

## Testing

Test with:
```bash
# Basic test
/pd .

# With options
/pd -s -a

# Specific path
/pd ./src

# Error case
/pd /nonexistent
```

## Notes for Assistant

- Always show the full path being listed
- Include file/directory count when possible
- Use consistent formatting (icons, indentation)
- Handle large directories gracefully (limit output)
- Suggest filtering options for large results