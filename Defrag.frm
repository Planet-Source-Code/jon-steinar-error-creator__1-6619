VERSION 5.00
Object = "{831FDD16-0C5C-11D2-A9FC-0000F8754DA1}#2.0#0"; "MSCOMCTL.OCX"
Begin VB.Form Form3 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Defragmenting - C: "
   ClientHeight    =   1890
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5490
   Icon            =   "Defrag.frx":0000
   LinkTopic       =   "Form3"
   MaxButton       =   0   'False
   ScaleHeight     =   1890
   ScaleWidth      =   5490
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton Command3 
      Caption         =   "&Pause"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   1320
      Width           =   1455
   End
   Begin VB.Timer Timer2 
      Interval        =   1000
      Left            =   480
      Top             =   120
   End
   Begin VB.Timer Timer1 
      Interval        =   1235
      Left            =   120
      Top             =   120
   End
   Begin VB.CommandButton Command2 
      Caption         =   "&Stop"
      Default         =   -1  'True
      Height          =   375
      Left            =   360
      TabIndex        =   2
      Top             =   1320
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Show &Details"
      Height          =   375
      Left            =   3480
      TabIndex        =   1
      Top             =   1320
      Width           =   1575
   End
   Begin MSComctlLib.ProgressBar ProgressBar1 
      Height          =   285
      Left            =   1320
      TabIndex        =   0
      Top             =   360
      Width           =   3735
      _ExtentX        =   6588
      _ExtentY        =   503
      _Version        =   393216
      Appearance      =   1
      Scrolling       =   1
   End
   Begin VB.Label Label1 
      AutoSize        =   -1  'True
      Height          =   195
      Left            =   1320
      TabIndex        =   3
      Top             =   720
      Width           =   45
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "Defrag.frx":030A
      Top             =   720
      Width           =   480
   End
End
Attribute VB_Name = "Form3"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
MsgBox "No details are available", vbOKOnly + vbCritical, "Error"
End Sub

Private Sub Command2_Click()
MsgBox "Are you sure you want to sto the defragmentation? Your computer has not finished defrag.", vbYesNo + vbQuestion, "Defrag"
If vbYes Then
Unload Me
Else
Exit Sub
End If
End Sub

Private Sub Timer1_Timer()
ProgressBar1.Value = ProgressBar1.Value + 1
Label1.Caption = ProgressBar1.Value / ProgressBar1.Max * 100 & "% Complete"
If ProgressBar1.Value = ProgressBar1.Max Then
Unload Me
End If
End Sub

Private Sub Timer2_Timer()
Timer1.Interval = Rnd * 15000
End Sub
