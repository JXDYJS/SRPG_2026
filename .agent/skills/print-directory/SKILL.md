# Skill: Print Directory

**Purpose:** Print the current directory structure with file information

## Command
`/print-directory` or `/pd`

## Description
This skill prints a formatted directory listing of the current working directory and its contents. It shows file sizes, modification dates, and permissions in a readable format.

## Usage
```bash
/pd [options] [path]
```

### Options
- `-d` or `--depth`: Maximum depth to display (default: 3)
- `-s` or `--size`: Show file sizes in human-readable format
- `-t` or `--tree`: Display as tree structure (default: list)
- `-a` or `--all`: Show hidden files (starting with `.`)
- `-f` or `--filter`: Filter by file extension (e.g., `-f .cs`)
- `-h` or `--help`: Show help information

### Examples
```bash
# Print current directory
/pd

# Print as tree with depth 2
/pd -t -d 2

# Print specific path with file sizes
/pd -s /path/to/directory

# Filter C# files
/pd -f .cs
```

## Implementation Rules

### For Executors
When this skill is invoked:
1. **Resolve path**: Use current working directory if no path provided
2. **Check existence**: Verify the directory exists before listing
3. **Format output**: Use consistent formatting with indentation
4. **Handle errors**: Provide clear error messages for non-existent paths or permission issues
5. **Performance**: Use efficient directory traversal for large directories

### Output Format
The output should include:
- Directory path at the top
- Total file and directory count
- Formatted listing with:
  - File/directory icon or indicator
  - Name
  - Size (if `-s` option used)
  - Modification date
  - Permissions (simplified: rwx format)

### Examples of Good Implementation
```bash
# Good: Clear output with headers
Current directory: /projects/myapp
Total: 15 files, 3 directories

📁 src/
  📄 main.cs (2.1 KB) 2024-01-15 rw-
  📁 components/
    📄 button.cs (1.5 KB) 2024-01-14 rw-
```

## Integration Points
- Works with existing file operations
- Can be combined with other skills (e.g., search, filter)
- Supports cross-platform paths (Windows/Unix)

## Testing
- Test with different directory depths
- Test with hidden files
- Test with permission restrictions
- Test with large directories

## Notes
- This skill is read-only and does not modify files
- Use platform-appropriate commands (e.g., `ls` on Unix, `dir` on Windows)
- Consider using tree view libraries if available
- Format dates consistently (YYYY-MM-DD)

## Dependencies
- Bash shell access
- Standard file system utilities