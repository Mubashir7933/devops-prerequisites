# VI Editor Essentials for DevOps

## Core Functionality
```bash
vi filename.conf  # Open/create file
```

### Navigation Cheatsheet
| Command | Action          |
|---------|-----------------|
| `h j k l` | Move cursor     |
| `0`     | Start of line   |
| `$`     | End of line     |
| `G`     | End of file     |
| `gg`    | Start of file   |

### Editing Commands
| Command | Action          |
|---------|-----------------|
| `i`     | Insert mode     |
| `ESC`   | Command mode    |
| `:w`    | Save file       |
| `:q!`   | Quit without save |
| `dd`    | Delete line     |
| `/text` | Search text     |

## DevOps Use Cases
```bash
# 1. Edit config files on remote servers
vi /etc/nginx/nginx.conf

# 2. View logs (read-only mode)
vi /var/log/syslog

# 3. Quick troubleshooting workflow:
#   - Open file: vi service.conf
#   - Press `/` + search for error
#   - Press `i` to edit
#   - ESC + `:wq` to save
```

## Pro Tips
```bash
:set number       # Show line numbers
:set paste        # Prevent auto-indent when pasting
:%s/old/new/g     # Replace text globally
```

> Mastery of VI enables efficient server management where GUI editors are unavailable
