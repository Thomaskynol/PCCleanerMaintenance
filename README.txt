# PC Cleaner & Maintenance Tool

## Description

This tool is designed to automate essential PC maintenance tasks for improved performance and system health. It helps clean temporary files, turn off hibernation, tweak Windows settings for optimal performance, and run disk cleanup. Additionally, it provides an option to repair corrupted system files and check for disk errors, requiring restarts for full repair.

## Features

- **Clear Temporary Files:** Deletes temporary system files to free up space.
- **Turn off Hibernation:** Disables the hibernation feature to save disk space.
- **Modify System Settings:** Changes Windows settings to improve performance.
- **Disk Cleanup:** Launches the built-in disk cleanup tool for better disk health.
- **Repair System Files:** Uses `sfc /scannow` to check and repair corrupted system files.
- **Disk Check:** Option to run `chkdsk /f` to repair disk issues (requires multiple restarts).

## Usage

1. Run the program by starting the `.exe` file.
2. Follow the on-screen prompts to choose actions such as cleaning temporary files, turning off hibernation, and running disk cleanup.
3. After completing the clean-up process, you will have an option to repair the disk (if needed), which will require two restarts.

### Commands Executed

- **Clear Temporary Files:**
  - `IF EXIST c:\windows\temp del /f /s /q c:\windows\temp`
  - `DEL /f /s /q %temp%\`

- **Turn off Hibernation:**
  - `powercfg.exe /hibernate off`

- **Enable Windows Notify when Files Are Deleted:**
  - `Fsutil behavior query DisableDeleteNotify`
  - `fsutil behavior set disabledeletenotify 0`

- **Change Windows Tick Method:**
  - `bcdedit /set useplatformtick yes`
  - `bcdedit /set disabledynamictick yes`

- **Disk Cleanup:**
  - `cleanmgr.exe`

- **Repair Corrupted System Files:**
  - `sfc /scannow`

- **Disk Check (optional):**
  - `chkdsk /f`

## Requirements

- Windows OS
- Administrator privileges to run certain commands

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
