VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   ClientHeight    =   5520
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5265
   Icon            =   "main.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5520
   ScaleWidth      =   5265
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command5 
      Caption         =   "Exit"
      Height          =   375
      Left            =   3960
      TabIndex        =   12
      Top             =   5040
      Width           =   1095
   End
   Begin VB.CommandButton Command4 
      Caption         =   "About"
      Height          =   375
      Left            =   2760
      TabIndex        =   4
      Top             =   5040
      Width           =   1095
   End
   Begin VB.Frame Frame2 
      Caption         =   "Preset Errors"
      Height          =   4815
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   4935
      Begin VB.Frame Frame6 
         Caption         =   "Custom Error"
         Height          =   1695
         Left            =   1920
         TabIndex        =   19
         Top             =   1320
         Width           =   2895
         Begin VB.CommandButton Command10 
            Caption         =   "Show Error"
            Height          =   255
            Left            =   1560
            TabIndex        =   22
            Top             =   1320
            Width           =   1095
         End
         Begin VB.TextBox Text4 
            Height          =   285
            Left            =   120
            TabIndex        =   21
            Top             =   840
            Width           =   2535
         End
         Begin VB.TextBox Text3 
            Height          =   285
            Left            =   120
            TabIndex        =   20
            Top             =   360
            Width           =   2535
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Windows Crash"
         Height          =   1695
         Left            =   120
         TabIndex        =   16
         Top             =   1320
         Width           =   1695
         Begin VB.CommandButton Command9 
            Caption         =   "Show Error"
            Height          =   255
            Left            =   240
            TabIndex        =   17
            Top             =   1320
            Width           =   1095
         End
         Begin VB.Label Label1 
            Caption         =   "No options available for this error."
            Height          =   375
            Left            =   120
            TabIndex        =   18
            Top             =   480
            Width           =   1455
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Create-A-Error"
         Height          =   1695
         Left            =   120
         TabIndex        =   8
         Top             =   3000
         Width           =   4695
         Begin VB.CommandButton Command8 
            Caption         =   "Information"
            Height          =   255
            Left            =   3480
            TabIndex        =   15
            Top             =   1320
            Width           =   1095
         End
         Begin VB.CommandButton Command7 
            Caption         =   "Question"
            Height          =   255
            Left            =   3480
            TabIndex        =   14
            Top             =   960
            Width           =   1095
         End
         Begin VB.CommandButton Command6 
            Caption         =   "Warning"
            Height          =   255
            Left            =   3480
            TabIndex        =   13
            Top             =   600
            Width           =   1095
         End
         Begin VB.TextBox Text2 
            Height          =   1005
            Left            =   120
            MaxLength       =   255
            MultiLine       =   -1  'True
            ScrollBars      =   2  'Vertical
            TabIndex        =   11
            Text            =   "main.frx":0442
            Top             =   600
            Width           =   3255
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Left            =   120
            MaxLength       =   30
            TabIndex        =   10
            Text            =   "TITLE BAR TEXT"
            Top             =   240
            Width           =   3255
         End
         Begin VB.CommandButton Command2 
            Caption         =   "Error"
            Height          =   255
            Left            =   3480
            TabIndex        =   9
            Top             =   240
            Width           =   1095
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Format"
         Height          =   1095
         Left            =   1920
         TabIndex        =   5
         Top             =   240
         Width           =   1695
         Begin VB.CommandButton Command1 
            Caption         =   "Show Error"
            Height          =   255
            Left            =   240
            TabIndex        =   7
            Top             =   720
            Width           =   1215
         End
         Begin VB.DriveListBox Drive3 
            Height          =   315
            Left            =   120
            TabIndex        =   6
            Top             =   240
            Width           =   1455
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Defrag"
         Height          =   1095
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1695
         Begin VB.DriveListBox Drive1 
            Height          =   315
            Left            =   120
            TabIndex        =   3
            Top             =   240
            Width           =   1455
         End
         Begin VB.CommandButton Command3 
            Caption         =   "Show Error"
            Height          =   255
            Left            =   240
            TabIndex        =   2
            Top             =   720
            Width           =   1215
         End
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False


Private Sub Command1_Click()
Form5.Show
End Sub

Private Sub Command10_Click()
Form6.Caption = Text3.Text
Form6.Label1.Caption = Text4.Text
Form6.Show
End Sub

Private Sub Command2_Click()
Me.WindowState = 0
MsgBox Text2.Text, vbCritical, Text1.Text
End Sub

Private Sub Command3_Click()
Form3.Caption = "Defragmenting drive " & Drive1.Drive
Form3.Show
End Sub

Private Sub Command4_Click()
Form4.Show
End Sub

Private Sub Command5_Click()
Unload Form1
Unload Form3
Unload Form4
Unload Form5
End Sub

Private Sub Command6_Click()
Me.WindowState = 0

MsgBox Text2.Text, vbExclamation, Text1.Text
End Sub

Private Sub Command7_Click()
Me.WindowState = 0
MsgBox Text2.Text, vbQuestion, Text1.Text
End Sub

Private Sub Command8_Click()
Form1.WindowState = 1
MsgBox Text2.Text, vbInformation, Text1.Text
End Sub

Private Sub Command9_Click()
Form2.Show
End Sub

Private Sub Drive1_Change()
Form3.Caption = "Defragmenting drive " & Drive1.Drive
End Sub

Private Sub Drive1_Validate(Cancel As Boolean)
Form3.Caption = "Defragmenting - " & Drive1.Drive
End Sub

Private Sub Drive3_Change()
Form5.Caption = Form5.Caption & Drive3.Drive
End Sub

Private Sub Form_Load()
Form3.Show
Form3.Visible = False
Form5.Show
Form5.Visible = False
End Sub

