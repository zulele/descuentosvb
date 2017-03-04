VERSION 5.00
Begin VB.Form Form1 
   AutoRedraw      =   -1  'True
   BackColor       =   &H00C0FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Form1"
   ClientHeight    =   7680
   ClientLeft      =   4590
   ClientTop       =   1395
   ClientWidth     =   12720
   DrawMode        =   9  'Not Mask Pen
   FillColor       =   &H000000FF&
   FillStyle       =   0  'Solid
   BeginProperty Font 
      Name            =   "MT Extra"
      Size            =   8.25
      Charset         =   2
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Picture         =   "Form1.frx":0000
   ScaleHeight     =   7680
   ScaleWidth      =   12720
   Begin VB.CommandButton Command3 
      Caption         =   "Salir"
      DisabledPicture =   "Form1.frx":3696
      DownPicture     =   "Form1.frx":6D2C
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   9480
      Picture         =   "Form1.frx":A3C2
      TabIndex        =   3
      Top             =   2040
      Width           =   2175
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Limpiar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   6720
      MaskColor       =   &H00FFC0FF&
      TabIndex        =   2
      Top             =   2040
      Width           =   2295
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Total a pagar"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3960
      MaskColor       =   &H00FF8080&
      TabIndex        =   1
      Top             =   2040
      Width           =   2415
   End
   Begin VB.TextBox Text3 
      BackColor       =   &H8000000D&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   3720
      TabIndex        =   0
      Top             =   720
      Width           =   3615
   End
   Begin VB.Label Label6 
      BackColor       =   &H8000000D&
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   7920
      TabIndex        =   6
      Top             =   720
      Width           =   3495
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "su descuento es"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   11.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   7920
      TabIndex        =   5
      Top             =   120
      Width           =   3015
   End
   Begin VB.Label Label4 
      BackStyle       =   0  'Transparent
      Caption         =   "total a pagar"
      BeginProperty Font 
         Name            =   "Comic Sans MS"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   615
      Left            =   3960
      TabIndex        =   4
      Top             =   240
      Width           =   2175
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()

If Val(Text3.Text) > 100 Then
Label5 = "Total a pagar" + Text1.Text + " " + Text2.Text + "Tiene el 2%"
 Label6 = Val(Text3.Text) - Val(Text3.Text) * 0.02
If Val(Text3.Text) > 101 Then
 Else
 Label5 = "Su precio es de" + Text1.Text + " " + Text2.Text + "Tiene el 10%"
 Label6 = Val(Text3.Text) - Val(Text3.Text) * 0.1
 If Val(Text3.Text) > 501 Then
 Else
 Label5 = "Total de pagar" + Text1.Text + " " + Text2.Text + "Tiene el 20%"
 Label6 = Val(Text3.Text) - Val(Text3.Text) * 0.2
 If Val(Text3.Text) > 1001 Then
 Else
 Label5 = "Total a pagar" + Text1.Text + " " + Text2.Text + "Tiene el 50%"
 Label6 = Val(Text3.Text) - Val(Text3.Text) * 0.5
 If Val(Text3.Text) > 100000 Then
 Else
 Label5 = "Total a pagar" + Text1.Text + " " + Text2.Text + "Tiene el 50%"
 Label6 = Val(Text3.Text) - Val(Text3.Text) * 0.5
 
 End If
 End If
 End If
 End If
 End If
End Sub

Private Sub Command2_Click()
Text1.Text = " "
Text2.Text = " "
Text3.Text = " "
Label5 = " "
Label6 = " "

End Sub

Private Sub Command3_Click()
End
End Sub

