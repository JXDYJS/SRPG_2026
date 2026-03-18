#!/bin/bash

# Print Directory Skill
# Usage: print-directory [path] [options]

# Default values
DEPTH=3
SHOW_SIZE=false
TREE_VIEW=false
SHOW_HIDDEN=false
FILTER=""
LONG_FORMAT=false
REVERSE=false
SORT_BY="name"

# Parse arguments
POSITIONAL_ARGS=()

while [[ $# -gt 0 ]]; do
  case $1 in
    -d|--depth)
      DEPTH="$2"
      shift 2
      ;;
    -s|--size)
      SHOW_SIZE=true
      shift
      ;;
    -t|--tree)
      TREE_VIEW=true
      shift
      ;;
    -a|--all)
      SHOW_HIDDEN=true
      shift
      ;;
    -f|--filter)
      FILTER="$2"
      shift 2
      ;;
    -l|--long)
      LONG_FORMAT=true
      shift
      ;;
    -r|--reverse)
      REVERSE=true
      shift
      ;;
    -S|--sort-size)
      SORT_BY="size"
      shift
      ;;
    -T|--sort-time)
      SORT_BY="time"
      shift
      ;;
    -h|--help)
      echo "Usage: print-directory [path] [options]"
      echo "Options:"
      echo "  -d, --depth N     Maximum depth (default: 3)"
      echo "  -s, --size        Show file sizes"
      echo "  -t, --tree        Tree view"
      echo "  -a, --all         Show hidden files"
      echo "  -f, --filter EXT  Filter by extension"
      echo "  -l, --long        Long format"
      echo "  -r, --reverse     Reverse sort order"
      echo "  -S, --sort-size   Sort by size"
      echo "  -T, --sort-time   Sort by modification time"
      echo "  -h, --help        Show this help"
      exit 0
      ;;
    -*|--*)
      echo "Unknown option: $1"
      exit 1
      ;;
    *)
      POSITIONAL_ARGS+=("$1")
      shift
      ;;
  esac
done

# Set target directory
TARGET_DIR="${POSITIONAL_ARGS[0]:-.}"

# Check if directory exists
if [ ! -d "$TARGET_DIR" ]; then
  echo "Error: Directory does not exist: $TARGET_DIR"
  exit 1
fi

# Get absolute path
TARGET_DIR=$(realpath "$TARGET_DIR")

# Function to format file size
format_size() {
  local size=$1
  if [ $size -ge 1073741824 ]; then
    printf "%.1f GB" $(echo "$size / 1073741824" | bc -l)
  elif [ $size -ge 1048576 ]; then
    printf "%.1f MB" $(echo "$size / 1048576" | bc -l)
  elif [ $size -ge 1024 ]; then
    printf "%.1f KB" $(echo "$size / 1024" | bc -l)
  else
    printf "%d B" $size
  fi
}

# Function to print directory tree
print_tree() {
  local dir="$1"
  local prefix="$2"
  local depth="$3"
  
  if [ $depth -le 0 ]; then
    return
  fi
  
  # Get list of items
  local items=()
  if [ "$SHOW_HIDDEN" = true ]; then
    items=("$dir"/* "$dir"/.*)
  else
    items=("$dir"/*)
  fi
  
  # Filter out . and ..
  items=(${items[@]//*\/./})
  items=(${items[@]//*\/../})
  
  # Apply extension filter if specified
  if [ -n "$FILTER" ]; then
    local filtered_items=()
    for item in "${items[@]}"; do
      if [ -d "$item" ] || [[ "$item" == *"$FILTER" ]]; then
        filtered_items+=("$item")
      fi
    done
    items=("${filtered_items[@]}")
  fi
  
  # Sort items
  case "$SORT_BY" in
    "size")
      # Sort by size (directories first)
      items=($(printf "%s\n" "${items[@]}" | xargs -I {} sh -c 'if [ -d "{}" ]; then echo "0 {}"; else stat -c "%s {}" "{}"; fi' | sort -n | cut -d' ' -f2-))
      ;;
    "time")
      # Sort by modification time
      items=($(printf "%s\n" "${items[@]}" | xargs -I {} sh -c 'stat -c "%Y {}" "{}"' | sort -n | cut -d' ' -f2-))
      ;;
    *)
      # Sort by name
      items=($(printf "%s\n" "${items[@]}" | sort))
      ;;
  esac
  
  # Reverse if requested
  if [ "$REVERSE" = true ]; then
    items=($(printf "%s\n" "${items[@]}" | tac))
  fi
  
  local count=${#items[@]}
  local i=0
  
  for item in "${items[@]}"; do
    i=$((i + 1))
    local name=$(basename "$item")
    
    # Skip if item doesn't exist (e.g., empty directory with *)
    [ -e "$item" ] || continue
    
    # Determine icon and type
    if [ -d "$item" ]; then
      local icon="📁"
      local type="dir"
    elif [ -L "$item" ]; then
      local icon="🔗"
      local type="link"
    elif [ -x "$item" ]; then
      local icon="⚡"
      local type="exe"
    else
      local icon="📄"
      local type="file"
    fi
    
    # Get file info
    local size_info=""
    local time_info=""
    local perm_info=""
    
    if [ "$LONG_FORMAT" = true ] || [ "$SHOW_SIZE" = true ]; then
      if [ -f "$item" ]; then
        local size=$(stat -c "%s" "$item" 2>/dev/null || stat -f "%z" "$item" 2>/dev/null)
        size_info=" ($(format_size $size))"
      fi
    fi
    
    if [ "$LONG_FORMAT" = true ]; then
      # Get permissions
      local perm=$(stat -c "%A" "$item" 2>/dev/null || ls -la "$item" | cut -d' ' -f1)
      perm_info=" $perm"
      
      # Get modification time
      local mtime=$(stat -c "%y" "$item" 2>/dev/null || stat -f "%Sm" "$item" 2>/dev/null)
      time_info=" $(echo $mtime | cut -d' ' -f1-2)"
    fi
    
    # Print item
    if [ $i -eq $count ]; then
      echo "${prefix}└── $icon $name$size_info$time_info$perm_info"
      if [ -d "$item" ]; then
        print_tree "$item" "${prefix}    " $((depth - 1))
      fi
    else
      echo "${prefix}├── $icon $name$size_info$time_info$perm_info"
      if [ -d "$item" ]; then
        print_tree "$item" "${prefix}│   " $((depth - 1))
      fi
    fi
  done
}

# Function to print simple list
print_list() {
  local dir="$1"
  
  # Get list of items
  local items=()
  if [ "$SHOW_HIDDEN" = true ]; then
    if command -v ls >/dev/null 2>&1; then
      items=($(ls -A "$dir"))
    else
      # Fallback for Windows
      items=("$dir"/* "$dir"/.*)
      items=(${items[@]//*\/./})
      items=(${items[@]//*\/../})
      items=($(basename -a "${items[@]}"))
    fi
  else
    if command -v ls >/dev/null 2>&1; then
      items=($(ls "$dir"))
    else
      # Fallback for Windows
      items=("$dir"/*)
      items=(${items[@]//*\/./})
      items=(${items[@]//*\/../})
      items=($(basename -a "${items[@]}"))
    fi
  fi
  
  # Apply extension filter
  if [ -n "$FILTER" ]; then
    local filtered_items=()
    for item in "${items[@]}"; do
      if [ -d "$dir/$item" ] || [[ "$item" == *"$FILTER" ]]; then
        filtered_items+=("$item")
      fi
    done
    items=("${filtered_items[@]}")
  fi
  
  # Sort items
  case "$SORT_BY" in
    "size")
      # Simple sort by name for now (size sorting is complex without stat)
      items=($(printf "%s\n" "${items[@]}" | sort))
      ;;
    "time")
      # Simple sort by name for now
      items=($(printf "%s\n" "${items[@]}" | sort))
      ;;
    *)
      items=($(printf "%s\n" "${items[@]}" | sort))
      ;;
  esac
  
  # Reverse if requested
  if [ "$REVERSE" = true ]; then
    items=($(printf "%s\n" "${items[@]}" | tac))
  fi
  
  # Print items
  for item in "${items[@]}"; do
    local full_path="$dir/$item"
    
    if [ -d "$full_path" ]; then
      echo "📁 $item/"
    elif [ -L "$full_path" ]; then
      echo "🔗 $item@"
    elif [ -x "$full_path" ]; then
      echo "⚡ $item*"
    else
      echo "📄 $item"
    fi
  done
}

# Main execution
echo "📁 Current directory: $TARGET_DIR"

# Count files and directories
if command -v find >/dev/null 2>&1; then
  dir_count=$(find "$TARGET_DIR" -maxdepth 1 -type d ! -name "." | wc -l)
  file_count=$(find "$TARGET_DIR" -maxdepth 1 -type f ! -name "." | wc -l)
  echo "📊 Stats: $file_count files, $dir_count directories"
else
  echo "📊 Stats: (counting not available)"
fi

echo ""

if [ "$TREE_VIEW" = true ]; then
  echo "🌳 Tree view (depth: $DEPTH):"
  echo "."
  print_tree "$TARGET_DIR" "" $DEPTH
else
  echo "📋 List view:"
  print_list "$TARGET_DIR"
fi

echo ""
echo "✅ Done"