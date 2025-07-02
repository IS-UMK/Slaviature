#Requires AutoHotkey v2.0
; it is required that the Polish keyboard 'pl' is running in the background
<^>!+`::SendInput Chr(0x303)    ; + Shift, Combining Tilde ◌̃
<^>!`::SendInput Chr(0xB4)      ; <^>! Altgr, ´

<^>!8::SendInput Chr(0x30A)     ; Combining Ring Above
<^>!9::SendInput Chr(0x32F)     ; combigning Inverted Breve Below ◌̯
<^>!0::SendInput Chr(0x32E)     ; Combining Breve Below

<^>!+e::SendInput Chr(0x116)    ; Latin Capital Letter E with Dot Above
<^>!e::SendInput Chr(0x117)     ; Latin Small Letter E with Dot Above
<^>!+r::SendInput Chr(0x156)    ; Latin Capital Letter R with Cedilla
<^>!r::SendInput Chr(0x157)     ; Latin Small Letter E with Cedilla
<^>!+t::SendInput Chr(0x1E6C)   ; Latin Capital Letter t with Dot Below
<^>!t::SendInput Chr(0x1E6D)    ; Latin Small Letter t with Dot Below
<^>!+y::SendInput Chr(0x393)    ; Greek Capital Letter Gamma
<^>!y::SendInput Chr(0x3B3)     ; Greek Small Letter Gamma
<^>!+u::SendInput Chr(0xDC)     ; Latin Capital Letter U with Diaeresis
<^>!u::SendInput Chr(0xFC)      ; Latin Small Letter U with Diaeresis
<^>!+i::SendInput Chr(0x128)    ; Latin Capital Letter I with Tilde
<^>!i::SendInput Chr(0x129)     ; Latin Small Letter I with Tilde
<^>!+o::SendInput Chr(0x22E)    ; Latin Capital Letter O with Dot Above
<^>!o::SendInput Chr(0x22F)     ; Latin Small Letter O with Dot Above
<^>!+a::SendInput Chr(0xC4)     ; Latin Capital Letter A with Diaeresis
<^>!a::SendInput Chr(0xE4)      ; Latin Small Letter A with Diaeresis
; w polskiej klawaturze s nie potrzebuje zmian
<^>!+d::SendInput Chr(0x1E0C)   ; Latin Capital Letter D with Dot Below
<^>!d::SendInput Chr(0x1E0D)    ; Latin Small Letter D with Dot Below
<^>!+g::SendInput Chr(0x1F4)    ; Latin Capital Letter G with Acute
<^>!g::SendInput Chr(0x1F5)     ; Latin Small Letter G with Dot Acute
<^>!+k::SendInput Chr(0x1E30)   ; Latin Capital Letter G with Acute
<^>!k::SendInput Chr(0x1E31)    ; Latin Small Letter G with Dot Acute
<^>!+l::SendInput Chr(0x13B)    ; Latin Capital Letter L with Cedilla
<^>!l::SendInput Chr(0x13C)     ; Latin Small Letter L with Cedilla

<^>!+;::SendInput Chr(0x308)    ; Combining Diaeresis
<^>!;::SendInput Chr(0x328)     ; Combining Ogonek
<^>!'::SendInput Chr(0x301)     ; Combining Acute Accent

<^>!+z::SendInput Chr(0x1B7)    ; Latin Capital Letter Ezh
<^>!z::SendInput Chr(0x292)     ; Latin Small Letter Ezh
+x::SendInput Chr(0x3A7)        ; Greek Capital Chi
x::SendInput Chr(0x3C7)         ; Greek Small Letter Chi
<^>!v::SendInput Chr(0x30C)     ; Combining Caron
<^>!+b::SendInput Chr(0x1E46)    ; Latin Capital Letter N with Dot Below
<^>!b::SendInput Chr(0x1E47)     ; Latin Small Letter N with Dot below
<^>!+m::SendInput Chr(0x14A)    ; Latin Capital Letter Ang
<^>!m::SendInput Chr(0x14B)     ; Latin Small Letter Ang

<^>!,::SendInput Chr(0x326)     ; Combining Comma Below
<^>!.::SendInput Chr(0x323)     ; Combining Dot Below
<^>!/::SendInput Chr(0x329)     ; Combining Vertical Line Below
