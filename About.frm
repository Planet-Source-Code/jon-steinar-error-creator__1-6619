VERSION 5.00
Begin VB.Form Form4 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "About Error Creator"
   ClientHeight    =   3480
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4680
   Icon            =   "About.frx":0000
   LinkTopic       =   "Form4"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3480
   ScaleWidth      =   4680
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   1680
      TabIndex        =   2
      Top             =   2640
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1080
      Locked          =   -1  'True
      TabIndex        =   1
      Text            =   "jonsteinar@islandia.is"
      Top             =   2160
      Width           =   2415
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   2040
      Picture         =   "About.frx":0442
      Top             =   1320
      Width           =   480
   End
   Begin VB.Line Line5 
      X1              =   120
      X2              =   4320
      Y1              =   2040
      Y2              =   2040
   End
   Begin VB.Label Label1 
      Caption         =   $"About.frx":0884
      Height          =   675
      Left            =   120
      TabIndex        =   0
      Top             =   480
      Width           =   4335
   End
   Begin VB.Line Line4 
      X1              =   240
      X2              =   4200
      Y1              =   3120
      Y2              =   3120
   End
   Begin VB.Line Line3 
      X1              =   120
      X2              =   4320
      Y1              =   3360
      Y2              =   3360
   End
   Begin VB.Line Line2 
      X1              =   240
      X2              =   4200
      Y1              =   360
      Y2              =   360
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   4440
      Y1              =   120
      Y2              =   120
   End
   Begin VB.Image Image2 
      Height          =   480
      Left            =   2040
      Picture         =   "About.frx":092D
      Top             =   1320
      Width           =   480
   End
End
Attribute VB_Name = "Form4"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.Caption = "Error"
End Sub

Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.Caption = "OK"
End Sub

Private Sub Image1_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.Visible = False
End Sub

Private Sub Image2_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
Image1.Visible = True
End Sub

Private Sub Text1_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
Command1.Caption = "OK"
End Sub
