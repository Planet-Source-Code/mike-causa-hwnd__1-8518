Attribute VB_Name = "Module1"
'This program was designed by causa, april 2000.
'Website: http://io.spaceports.com/~causanet
'If you want to change anything in this program feel free to do so.
'You dont even need to mention my name in the credits.
'This program was intended for educational purposes only.
'Enjoy!

Declare Function SendMessageByNum& Lib "User32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As Long)

Declare Function SendMessageByString Lib "User32" Alias "SendMessageA" (ByVal hWnd As Long, ByVal wMsg As Long, ByVal wParam As Long, ByVal lParam As String) As Long

Declare Function GetCursorPos Lib "User32" (lpPoint As Where) As Long

Declare Function WindowFromPoint Lib "User32" (ByVal xPoint As Long, ByVal yPoint As Long) As Long

Type Where
    Pointa As Long
    Pointb As Long
End Type

