print("show permissions: ")
os.execute("whoami /all")
os.execute("pause")
os.execute("cls")

print("starting pc clean operation")
os.execute("pause")
os.execute("cls")

print("clear temporary files")
os.execute("pause")
os.execute("IF EXIST c:\\windows\\temp (del /f /s /q c:\\windows\\temp) & (del /f /s /q %temp%\\)")
os.execute("pause")
os.execute("cls")

print("turn off hibernation")
os.execute("pause")
os.execute("powercfg.exe /hibernate off")
os.execute("pause")
os.execute("cls")

print("active windows notify when files are deleted")
os.execute("pause")
os.execute("Fsutil behavior query DisableDeleteNotify")
os.execute("fsutil behavior set disabledeletenotify 0")
os.execute("pause")
os.execute("cls")

print("change windows tick method to a better one")
os.execute("pause")
os.execute("bcdedit /set disabledynamictick yes")
os.execute("bcdedit /set useplatformtick yes")
os.execute("pause")
os.execute("cls")

print("clean disk (optional options)")
os.execute("pause")
::seldisc::
print("enter the number of disks you want to clean: ")
local numdisco = tonumber(io.read())
if type(numdisco) == "number" then
    for i = 1, numdisco do
        os.execute("cleanmgr.exe")
    end
elseif type(numdisco) ~= number or numdisco == 0 then
    print("enter a valid number!")
    goto seldisc
end
os.execute("cls")

print("repair corrupted files on the system")
os.execute("pause")
os.execute("sfc /scannow")
os.execute("cls")

::res1::
print("your cleanup is finished, you want to start the disk repair operation?(it will be necessary to restart the pc twice!)")
print("y/n?")
local res1 = io.read()
if res1 == "y" then
    ::res2::
    print("are you sure?")
    print("y/n?")
    local res2 = io.read()
    if res2 == "y" then
        print("starting...")
        os.execute("chkdsk /f")
        print("Repair completed. Restart your computer 2 times")
        os.execute("pause")
        local res2 = io.read()
    elseif res2 == "n" then
        print("disk repair cancelled!")
    else
        print("Please enter a valid answer!")
        goto res2
    end
elseif res1 == "n" then
    print("reparação de discos cancelada!")
else
    print("Please enter a valid answer!")
    goto res1
end
os.execute("cls")

print("pc clean operation finished!")
os.execute("pause")
