object FComanda: TFComanda
  Left = 405
  Top = 311
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Comanda/Mesa'
  ClientHeight = 134
  ClientWidth = 316
  Color = 15264234
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  Position = poMainFormCenter
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 69
    Top = 26
    Width = 170
    Height = 19
    Caption = 'N'#250'mero da Comanda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object EditComanda: TRzNumericEdit
    Left = 64
    Top = 51
    Width = 185
    Height = 46
    Alignment = taCenter
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Comic Sans MS'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnKeyPress = EditComandaKeyPress
    DisplayFormat = ',0;(,0)'
  end
  object qrMesa: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 4
    Top = 51
  end
  object QRITEM: TIBCQuery
    Connection = frmModulo.Conexao_Servidor
    SQL.Strings = (
      'select '
      '  c000074.*,'
      '  c000007.Nome Cliente,'
      '  c000008.Nome Vendedor'
      'from '
      '  c000074, c000007, c000008'
      'where'
      '  c000074.codcliente = c000007.codigo and'
      '  c000074.codvendedor = c000008.codigo')
    Left = 4
    Top = 19
  end
end
