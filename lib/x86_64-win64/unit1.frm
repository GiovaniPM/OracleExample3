object Form1: TForm1
  Left = 315
  Height = 155
  Top = 156
  Width = 194
  Caption = 'Form1'
  ClientHeight = 155
  ClientWidth = 194
  Color = clBackground
  LCLVersion = '7.2'
  object Hora: TplLEDIndicator
    Left = 8
    Height = 128
    Top = 8
    Width = 30
    Position = 12
    Background = clBlack
    Foreground = clLime
  end
  object Minuto: TplLEDIndicator
    Left = 56
    Height = 128
    Top = 8
    Width = 30
    Position = 12
    Background = clBlack
    Foreground = clLime
  end
  object Segundo: TplLEDIndicator
    Left = 104
    Height = 128
    Top = 8
    Width = 30
    Position = 98
    Background = clBlack
    Foreground = clLime
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 144
    Top = 104
  end
end
