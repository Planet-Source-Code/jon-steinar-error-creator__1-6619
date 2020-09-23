VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Explorer"
   ClientHeight    =   1380
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   5145
   Icon            =   "crash.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "crash.frx":0442
   ScaleHeight     =   1380
   ScaleWidth      =   5145
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   WhatsThisHelp   =   -1  'True
   Begin VB.CommandButton Command2 
      Caption         =   "&Details"
      Height          =   375
      Left            =   3960
      TabIndex        =   2
      Top             =   840
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "&Close"
      Default         =   -1  'True
      Height          =   375
      Left            =   3960
      TabIndex        =   1
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label3 
      Caption         =   "If the problem persists contact the program vendor."
      Height          =   495
      Left            =   720
      TabIndex        =   4
      Top             =   840
      Width           =   2895
   End
   Begin VB.Label Label2 
      Caption         =   "This program has performed an illegal operation and will be shut down."
      Height          =   495
      Left            =   720
      TabIndex        =   3
      Top             =   240
      Width           =   3135
   End
   Begin VB.Image Image1 
      Height          =   480
      Left            =   120
      Picture         =   "crash.frx":0884
      Top             =   120
      Width           =   480
   End
   Begin VB.Label Label1 
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   495
   End
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Unload Me
End Sub

Private Sub Command2_Click()
MsgBox "No details available.", vbOKOnly + vbCritical, "Error"
End Sub
