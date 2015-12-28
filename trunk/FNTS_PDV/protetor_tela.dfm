object frmProtetor_tela: TfrmProtetor_tela
  Left = 4
  Top = 0
  BorderStyle = bsNone
  Caption = 'frmProtetor_tela'
  ClientHeight = 532
  ClientWidth = 790
  Color = clBlack
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 96
    Top = 264
    Width = 594
    Height = 77
    Caption = 'Caixa Indispon'#237'vel'
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -64
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Timer1: TTimer
    Interval = 5000
    Left = 488
    Top = 136
  end
end
