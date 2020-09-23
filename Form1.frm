VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   " hWnd"
   ClientHeight    =   570
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   1815
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   570
   ScaleWidth      =   1815
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   100
      Left            =   1320
      Top             =   120
   End
   Begin VB.TextBox Text1 
      Alignment       =   2  'Center
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Text            =   "hWnd"
      Top             =   135
      Width           =   1575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'This program was designed by causa, april 2000.
'Website: http://io.spaceports.com/~causanet
'If you want to change anything in this program feel free to do so.
'You dont even need to mention my name in the credits.
'This program was intended for educational purposes only.
'Enjoy!

Private Sub Form_Load()
    Timer1.Enabled = True
    Timer1.Interval = 100
End Sub

Private Sub Timer1_Timer()
    Dim AnB As Where
    Call GetCursorPos(AnB)
    YourHWND% = WindowFromPoint(AnB.Pointa, AnB.Pointb) 'Mouse pos.
    
    If YourHWND% <> LasthWnd% Then 'If there no the same
        LasthWnd% = YourHWND%
        Text1 = YourHWND% 'place whatever output device here To equal hwndover.
    End If
End Sub
