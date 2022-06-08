object Form1: TForm1
  Left = 192
  Top = 124
  Width = 928
  Height = 480
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Image1: TImage
    Left = 8
    Top = 8
    Width = 769
    Height = 425
  end
  object CheckBox1: TCheckBox
    Left = 784
    Top = 56
    Width = 97
    Height = 17
    Caption = 'izi bilan'
    Checked = True
    State = cbChecked
    TabOrder = 0
  end
  object SpinEdit1: TSpinEdit
    Left = 784
    Top = 80
    Width = 121
    Height = 22
    MaxValue = 10
    MinValue = 0
    TabOrder = 1
    Value = 0
  end
  object Timer1: TTimer
    Interval = 50
    OnTimer = Timer1Timer
    Left = 800
    Top = 16
  end
end
