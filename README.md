# 📋 Sequential Clipboard Paster (AHK)

A lightweight Windows automation utility built using **AutoHotkey (AHK)** that reads a text file line-by-line and sequentially pastes each line every time you press `Tab`. It includes an intelligent safety net that preserves and restores your original system clipboard data without interrupting your workflow.

Ideal for data entry, script execution, or eliminating repetitive, regurgitative text tasks.

---

## ✨ Features

- **Sequential Pasting:** Reads your custom messages from a `.txt` file and cycles through them in order every time you trigger the hotkey.
- **Clipboard Preservation:** Temporarily stores your active system clipboard, executes the automated paste, and instantly restores your original copied items.
- **Native Function Overrides:** Features a safety modifier to let you use the regular `Tab` key function when needed.
- **Manual Reset:** Instantly reset the text rotation back to the first line of the file with a quick keystroke.
- **Note:** You need a ".txt" file on your desktop and need to copy its relative path onto the .ahk file
---

## ⌨️ Hotkeys & Controls

| Hotkey | Action |
| :--- | :--- |
| `Tab` | Pastes the current line from your file and advances to the next line. |
| `Shift + Tab` | Executes a normal, standard `Tab` keystroke (Native Windows function bypass). |
| `F9` | Resets the sequence rotation manually back to the first line of your text file. |

---

## 🚀 Setup & Installation

### Prerequisites
Make sure you have [AutoHotkey (v1.1+)](https://www.autohotkey.com/) installed on your Windows machine.

### Installation Steps

1. Clone this repository or download the script file:
   ```bash
   git clone [https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git](https://github.com/YOUR_USERNAME/YOUR_REPO_NAME.git)
