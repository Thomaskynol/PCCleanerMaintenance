start .exe to start the program

The commands that will be executed are:

-- clear temporary files --
IF EXIST c:\windows\temp del /f /s /q c:\windows\temp
DEL /f /s /q %temp%\

-- turn off hibernation --
powercfg.exe /hibernate off
	
-- active windows notify when files are deleted --
Fsutil behavior query DisableDeleteNotify
fsutil behavior set disabledeletenotify 0

-- change windows tick method to a better one -- 
bcdedit /set useplatformtick yes
bcdedit /set disabledynamictick yes

-- clean disk (optional options) --
cleanmgr.exe 

-- repair corrupted files on the system --
sfc /scannow

-- optional: repair problem disk --
chkdsk /f


-- made by Thomaskynol --