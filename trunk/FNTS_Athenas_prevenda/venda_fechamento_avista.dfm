object frmvenda_fechamento_avista: Tfrmvenda_fechamento_avista
  Left = 917
  Top = 206
  BorderStyle = bsToolWindow
  Caption = 'ATENDIMENTO | Fechamento '#224' Vista'
  ClientHeight = 220
  ClientWidth = 336
  Color = 15264234
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label7: TLabel
    Left = 120
    Top = 159
    Width = 31
    Height = 13
    Caption = 'Troco:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label1: TLabel
    Left = 48
    Top = 17
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Subtotal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label2: TLabel
    Left = 48
    Top = 41
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Desconto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label3: TLabel
    Left = 48
    Top = 64
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Acr'#233'scimo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Label4: TLabel
    Left = 48
    Top = 88
    Width = 90
    Height = 13
    Alignment = taRightJustify
    AutoSize = False
    Caption = 'Total:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Transparent = True
  end
  object Bevel1: TBevel
    Left = 0
    Top = 185
    Width = 336
    Height = 2
    Align = alBottom
  end
  object rdinheiro: TRxCalcEdit
    Left = 156
    Top = 120
    Width = 166
    Height = 24
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 5
    OnExit = rdinheiroExit
    OnKeyPress = rdinheiroKeyPress
  end
  object rdesconto2: TRxCalcEdit
    Left = 227
    Top = 38
    Width = 95
    Height = 22
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 1
    OnExit = rdesconto2Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object racrescimo2: TRxCalcEdit
    Left = 227
    Top = 61
    Width = 95
    Height = 22
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 3
    OnExit = racrescimo2Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object rdesconto1: TRxCalcEdit
    Left = 157
    Top = 38
    Width = 69
    Height = 22
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 0
    OnExit = rdesconto1Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object racrescimo1: TRxCalcEdit
    Left = 157
    Top = 61
    Width = 69
    Height = 22
    AutoSize = False
    DecimalPlaces = 3
    DisplayFormat = '###,###,##0.00%'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 2
    OnExit = racrescimo1Exit
    OnKeyPress = rdesconto1KeyPress
  end
  object rsubtotal: TRxCalcEdit
    Left = 156
    Top = 14
    Width = 166
    Height = 23
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 7
  end
  object rtotal: TRxCalcEdit
    Left = 157
    Top = 84
    Width = 165
    Height = 23
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlue
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    ReadOnly = True
    TabOrder = 8
  end
  object Panel1: TPanel
    Left = 0
    Top = 187
    Width = 336
    Height = 33
    Align = alBottom
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 6
    object bgravar: TBitBtn
      Left = 68
      Top = 3
      Width = 97
      Height = 25
      Caption = 'F2 | Gravar'
      TabOrder = 0
      OnClick = bgravarClick
    end
    object bcancelar: TBitBtn
      Left = 172
      Top = 3
      Width = 97
      Height = 25
      Caption = 'Esc | Cancelar'
      TabOrder = 1
      OnClick = bcancelarClick
    end
  end
  object comboforma: TComboBox
    Left = 13
    Top = 120
    Width = 137
    Height = 24
    Style = csDropDownList
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ItemHeight = 16
    ItemIndex = 0
    ParentFont = False
    TabOrder = 4
    Text = 'DINHEIRO'
    OnKeyPress = comboformaKeyPress
    Items.Strings = (
      'DINHEIRO'
      'CART'#195'O DE D'#201'BITO'
      'CHEQUE '#192' VISTA')
  end
  object rdiferenca: TRxCalcEdit
    Left = 157
    Top = 147
    Width = 166
    Height = 23
    AutoSize = False
    DisplayFormat = '###,###,##0.00'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Verdana'
    Font.Style = []
    ButtonWidth = 0
    NumGlyphs = 2
    ParentFont = False
    TabOrder = 9
  end
  object PopupMenu1: TPopupMenu
    Left = 344
    Top = 8
    object Gravar1: TMenuItem
      Caption = 'Gravar'
      ShortCut = 113
      OnClick = bgravarClick
    end
    object Cancelar1: TMenuItem
      Caption = 'Cancelar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
end
