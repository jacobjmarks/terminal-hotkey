![Terminal Icon](terminal.ico)

An [AutoHotKey](https://www.autohotkey.com/) script to open Windows Terminal via the `Ctrl+Alt+T` keyboard shortcut.

Compiled shortcuts exist for both the [mainline](https://apps.microsoft.com/store/detail/windows-terminal/9N0DX20HK701) and [preview](https://apps.microsoft.com/store/detail/windows-terminal-preview/9N8G5RFZ9XK3) versions of the Windows Terminal.

Executable icons sourced from the official [microsoft/terminal](https://github.com/microsoft/terminal) repository.

# Usage

Download your executable of choice from the [releases](https://github.com/jacobjmarks/terminal-hotkey/releases) section.
After running the executable, you should be able to open a new Windows Terminal window by pressing `Ctrl+Alt+T`.

Note that like any AutoHotkey script, you will need to re-run the executable after restarting your system. I recommend simply adding a shortcut to the program to your `shell:startup` folder\* to alleviate this issue.

\* i.e. `%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup`

# Customising

If you would like to customise the script (including the hotkey) feel free to download it, modify, and compile.

# Compiling

You can compile the script into an executable using [AutoHotKey](https://www.autohotkey.com/).
