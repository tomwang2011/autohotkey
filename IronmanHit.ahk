count := 0
variation := 4
end1 := 4, start2 := 3, end2 := 8
; end1 := 1, start2 := 0, end2 := 2
Key1 := "Left", Key2 := "Right"
; Key1 := "Up", Key2 := "Down"

Loop
{
    If stop = 1
        Continue
    Else
    {
        If (count < end1) {
            ; Send, {%Key1% down}
            Send, T
            Sleep 100
            ; Send, {%Key1% up}
            count++
            Sleep 200
        }
        else if (count > start2 && count < end2) {
            if (variation == 4) {
                ; Send, {%Key2% down}
                Send, T
                Sleep 100
                ; Send, {%Key2% up}
            }
            count++
            Sleep 200
        }
        else {
            Send, {%Key1%}
            Sleep 100
            Send, {%Key2%}
            Send, {F9}
            Send, {F10}
            Send, {F11}
            count = 0
            Sleep 300
        }
           
    }
}
return

F5::
If stop = 1
stop = 0
Else
stop = 1
return