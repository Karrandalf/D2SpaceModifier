    ; 1. **Highly Recommended**
    ; *Documentation: https://autohotkey.com/docs/commands/_SingleInstance.htm *
    ; Prevents more than one instance from running by closing the old instance when a new one is ran.
    #SingleInstance force 
    
    ; 2. **Highly Recommended**
    ; *Documentation: https://autohotkey.com/docs/commands/_IfWinActive.htm *
    ; Only active while you are "Alt-tabbed" into DotA 2.
    #IfWinActive ahk_exe dota2.exe 

    ; 3. **Required**
    ; *Documentation: https://autohotkey.com/docs/Hotkeys.htm *
    ; *Documentation: https://autohotkey.com/docs/commands/ControlSend.htm *
    ; Hides all down key presses of the left Windows key from the operating system
    ; and ALL applications EXCEPT dota2.exe.
    ~*Space::ControlSend, , {LWin Down}, Dota 2 
    
    ; 4. **Required**
    ; *Documentation: https://autohotkey.com/docs/commands/Send.htm *
    ; Allows all releases of the left Windows key to be seen by the operating system
    ; and ALL applications INCLUDING dota2.exe.
    *Space Up::Send {LWin Up}
    
    ; 5. **Highly Recommended**
    ; *Documentation: https://autohotkey.com/docs/commands/SetNumScrollCapsLockState.htm *
    ; Upon releasing the CapsLock key, the CapsLock State is set to off. 
    ; It prevents a conflict due to the Windows key and CapsLock interaction.
    ; This method allows you to still use the CapsLock key as a hotkey in the in-game UI.
    ~*CapsLock Up::SetCapsLockState Off
    
    ; 6. **Optional**
    ; Binds the Unified Command Modifier to Mouse5 while inside DotA 2 inorder to improve accessibility.
    ; Overrides other mouse binding software.
    *XButton2::Ctrl

    ; 7. **Optional**
    ; Disables the left Windows key while inside of DotA 2.
    *LWin::Return
