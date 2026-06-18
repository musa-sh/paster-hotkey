#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%  ; 

; 1. Configuration
TextFile := "C:\Users\user\Desktop\Paster messages.txt"
Sentences := []
CurrentIndex := 1

; 2. Read the text file line-by-line and load it into the script memory
if (!FileExist(TextFile)) {
    MsgBox, 16, Error, %TextFile% not found! Please create it in the same folder as this script.
    ExitApp
}

Loop, Read, %TextFile%
{
    ; Skip completely empty lines inside the text file
    if (A_LoopReadLine != "") {
        Sentences.Push(A_LoopReadLine)
    }
}

; Double-check that the file actually had text inside it
if (Sentences.Length() == 0) {
    MsgBox, 16, Error, %TextFile% is empty! Please add some lines to it.
    ExitApp
}
return

; 3. Press Tab to instantly paste the script sequence
$Tab::
    ; Store whatever you currently have manually copied
    SavedClipboard := ClipboardAll  
    
    ; Clear clipboard and set it to the script's current sentence
    Clipboard := ""
    Clipboard := Sentences[CurrentIndex]
    ClipWait, 1
    
    ; Execute the paste command
    Send, ^v
    Sleep, 50 ; Brief pause to let Windows finish pasting
    
    ; Advance the sequence loop
    CurrentIndex += 1
    if (CurrentIndex > Sentences.Length()) {
        CurrentIndex := 1
    }
    
    ; Instantly restore your personal copied text back to your clipboard
    Clipboard := SavedClipboard
    SavedClipboard := "" 
return

; 4. Safety Net: Press Shift + Tab if you need to use a normal Tab key function
+Tab::
    Send, {Tab}
return

; Press F9 to reset the rotation back to the first line manually
F9::
    CurrentIndex := 1
    MsgBox, 64, Reset, Rotation reset to the first line of the file!, 1
return