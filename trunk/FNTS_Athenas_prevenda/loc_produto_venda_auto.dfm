object frmloc_venda_produto_auto: Tfrmloc_venda_produto_auto
  Left = 357
  Top = 184
  BorderStyle = bsDialog
  Caption = 
    'Pedido de Venda - Localizar Produtos                            ' +
    '                      :: Auto ::'
  ClientHeight = 472
  ClientWidth = 771
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 0
    Top = 421
    Width = 771
    Height = 3
    Align = alBottom
  end
  object FlatPanel2: TFlatPanel
    Left = 0
    Top = 424
    Width = 771
    Height = 48
    Color = clWhite
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alBottom
    TabOrder = 0
    UseDockManager = True
    object GroupBox1: TGroupBox
      Left = 8
      Top = 8
      Width = 81
      Height = 31
      Caption = 'Estoque'
      TabOrder = 0
      object lestoque: TLabel
        Left = 2
        Top = 15
        Width = 77
        Height = 14
        Align = alClient
        Alignment = taCenter
        Caption = '0,00'
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox2: TGroupBox
      Left = 95
      Top = 8
      Width = 114
      Height = 31
      Caption = 'Pre'#231'o'
      TabOrder = 1
      object DBText2: TDBText
        Left = 2
        Top = 15
        Width = 110
        Height = 14
        Align = alClient
        Alignment = taCenter
        DataField = 'PRECOVENDA'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox3: TGroupBox
      Left = 288
      Top = 8
      Width = 201
      Height = 31
      Caption = 'Fornecedor'
      TabOrder = 2
      object DBText4: TDBText
        Left = 10
        Top = 15
        Width = 183
        Height = 14
        DataField = 'fornecedor'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox4: TGroupBox
      Left = 495
      Top = 8
      Width = 170
      Height = 31
      Caption = 'Marca'
      TabOrder = 3
      object DBText5: TDBText
        Left = 8
        Top = 15
        Width = 153
        Height = 14
        DataField = 'marca'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object GroupBox5: TGroupBox
      Left = 215
      Top = 8
      Width = 66
      Height = 31
      Caption = 'Unidade'
      TabOrder = 4
      object DBText3: TDBText
        Left = 2
        Top = 15
        Width = 62
        Height = 14
        Align = alClient
        Alignment = taCenter
        DataField = 'UNIDADE'
        DataSource = dsproduto
        Font.Charset = ANSI_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Verdana'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object bfechar: TAdvGlowButton
      Left = 669
      Top = 3
      Width = 97
      Height = 44
      Caption = 'ESC | Sair'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 49
      FocusType = ftHot
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
        6D0000001974455874536F6674776172650041646F626520496D616765526561
        647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
        000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
        4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
        6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
        786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
        362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
        2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
        3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
        7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
        626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
        62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
        74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
        6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
        7861702F312E302F73547970652F5265736F75726365526566232220786D703A
        43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
        202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
        702E6969643A3237463942453631453238323131453238383933383533304243
        3643463530362220786D704D4D3A446F63756D656E7449443D22786D702E6469
        643A323746394245363245323832313145323838393338353330424336434635
        3036223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
        7374616E636549443D22786D702E6969643A3237463942453546453238323131
        453238383933383533304243364346353036222073745265663A646F63756D65
        6E7449443D22786D702E6469643A323746394245363045323832313145323838
        3933383533304243364346353036222F3E203C2F7264663A4465736372697074
        696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
        7061636B657420656E643D2272223F3E2C4D6F47000004E44944415478DAB459
        7988575514FECD73CB9A512C2D236B7450D4C8254525D7C12C30C18DDC925113
        9242C952C47112973FC4052C95122B484DC71197B29219B3C0724C5C835C2810
        15975CCAD1B1658C5CBF337D570E9777EF7BEFF7FBF5C1C7DCF77EF7DD77DEB9
        F79EF39D3B39A96D275319E021B023980FB6009F0403F022788E3C0EFE9EEE0B
        EAA6F9DC4BE048B00F5810D1F73258096E033F076B92BC282781071F04A78363
        C1B69E7E776BC70DC715703DB80C3C934D0347832BC066EADE6DF05B702F7804
        FC05FC13BC03E671DA9F05BBD0E379EA59E953022ECED4C0FAFCE211EA9E18B3
        1C2C072FC5F4BE185708BE090E50F70F8263C093E918F830B80F6CC36B593B33
        C1F7539961303FB025AFFF05FB82FBC33A078E41647A8E29E37680ADB3609CE0
        4BAEE1956A96C4112F2631F007F071B6578303193A7C9800AE238745F415AF4D
        E6A633F85A39C41B66BE039F60FB3D705A4CCF0CE3F409FE624889C2BBE0553A
        21454F4A3CBDE1F2E0EB603FB62B131827F84DB5AF25786E0D1D61D6FDC7AE29
        6EACD65815F87CCC173CC7716EA87BD71937BBC71C431CB1876D89B33DC20C5C
        02D661FB55F066C4A0031872F6323857ABDFCC7ADDCF25D335869163547BAD6D
        60537012DB47C1AF2206FB08FC06ECE0C91EC6A3B2640E81F322C63C0F7EC876
        5BE37D63E050D5B13862A032F035756D84403D75AF6188C173C1851163CFB1F6
        C37D038BD457947B0698CFB467F001D89EED26EA7E0BA63389A75BAC8F2F8AD8
        6866F6448CD415031B71A10B3EF33C5C607DE102700A379420D7121682B34C93
        65EAB74FB8215DD8A9A45CA118D85B4DCF51CF832B545BBC3CDBFAFD574AABCB
        2139FA156E28137B6778DE53A9DA9D024E87C1CF8E87E48B07A9EBE9217D8A19
        E0854B437E9F65E563177E62F0AE5D2A0155B0493FC71C0F7556EDC3945636EE
        5082DD66DB4685F26C8708A17BC1449740E5DC3F98A25CE2414BA4747097E1C6
        A095A7AFB12337B0C2814B09374A338DB95E1CB7DCC80954D4CF63FC0A43956A
        3F9A81813A14DD8C28C66A3F28E0EE13345031CDC669D5EE95A671F55538F36D
        484173FEBDAA0D143CE378E00817BFA09D4EE609304A2D95031E7DD95ED53EE7
        02AA08F3F2A71D0FD55016E95C9CAC7AFC4F8C186CF0F4EDA7DAC703C61CB3BB
        86781E2C51ED8E96C151D8ADA6AD8A29D28542FEFD07DC65727129FFB66631EE
        CA9313D5F5781940299A30F4616CEDADEEBD0CDE72F4CF5515E417A2884C55D7
        5CAD09F16637CF4B17B1BAD3D84CB97E9E02249F5335D0EAF706B8CA33F652A5
        E2E5F9DDBAEC2C534A45DCFCBD67A0A93C1D888B1A16559B234290497172A6F3
        94ADA8A75975820FCBB9E3B772ADB8600AA28208E3049FAAF64457E15E421965
        D6C0D018DE1135FE02C34F3E23C229E6EB8A988745C54ACC56F0A8C479B27040
        ADC10521B22ADB18CE9910FC4D7555ED2BDCFBAA9CF90E37C5FF8522659CD918
        D551270BB2A67A2A2367B2CA6A9865E3E65BEB6E2CA55CACA30F51D69D944818
        079EB04EB9D245771AA2CB8741AEEC1278063AC5BCB89DD7A2943731388F5375
        475C484CDCC85AB98B49655CEFE5991E60BEC520AA3FA89AE72F3FF2B0E92277
        AC08D307C047E8ADAE94F82D436A9CA9D93A614D3170BECD14D7C4A1988D810D
        AC3A599705A534EE503C9591FC94DFE44B8991FDAD72D3855D3C5E2B653A4C20
        8332FB37442B8A05599F8F716A4D0176855AF3842A3913E39E000300FC4D1C17
        703A52D50000000049454E44AE426082}
      Transparent = True
      TabOrder = 5
      Appearance.BorderColor = 14727579
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.BorderColorChecked = clBlack
      Appearance.Color = 15653832
      Appearance.ColorTo = 16178633
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 15586496
      Appearance.ColorMirrorTo = 16245200
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
  end
  object DBGRID1: TwwDBGrid
    Left = 0
    Top = 75
    Width = 771
    Height = 346
    DittoAttributes.ShortCutDittoField = 0
    DittoAttributes.ShortCutDittoRecord = 0
    DittoAttributes.Options = []
    DisableThemesInTitle = False
    Selected.Strings = (
      'CODIGO'#9'8'#9'C'#243'digo'
      'CODBARRA'#9'14'#9'Refer'#234'ncia'
      'PRODUTO'#9'49'#9'Produto'
      'AUTO_APLICACAO'#9'31'#9'Aplica'#231#227'o'
      'LOCALICAZAO'#9'16'#9'Localiza'#231#227'o')
    IniAttributes.Delimiter = ';;'
    TitleColor = clBtnFace
    OnRowChanged = DBGRID1RowChanged
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = dsproduto
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit, dgWordWrap]
    ParentFont = False
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = DBGRID1DblClick
    OnKeyPress = DBGRID1KeyPress
    PaintOptions.AlternatingRowColor = 16053492
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 0
    Width = 771
    Height = 75
    Color = 14265139
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 2
    UseDockManager = True
    object Label1: TLabel
      Left = 8
      Top = 6
      Width = 49
      Height = 13
      Caption = 'Produto:'
    end
    object Label2: TLabel
      Left = 8
      Top = 30
      Width = 45
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label3: TLabel
      Left = 160
      Top = 30
      Width = 66
      Height = 13
      Caption = 'Refer'#234'ncia:'
    end
    object Label4: TLabel
      Left = 8
      Top = 54
      Width = 59
      Height = 13
      Caption = 'Aplica'#231#227'o:'
    end
    object Label5: TLabel
      Left = 432
      Top = 54
      Width = 85
      Height = 13
      Caption = 'Complemento:'
    end
    object Label6: TLabel
      Left = 432
      Top = 6
      Width = 69
      Height = 13
      Caption = 'Fornecedor:'
    end
    object Label7: TLabel
      Left = 432
      Top = 30
      Width = 39
      Height = 13
      Caption = 'Marca:'
    end
    object Label9: TLabel
      Left = 334
      Top = 7
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object eproduto: TEdit
      Left = 72
      Top = 3
      Width = 257
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 0
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object ecodigo: TEdit
      Left = 72
      Top = 27
      Width = 81
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object ereferencia: TEdit
      Left = 232
      Top = 27
      Width = 193
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 2
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object eaplicacao: TEdit
      Left = 72
      Top = 51
      Width = 353
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 3
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object ecomplemento: TEdit
      Left = 520
      Top = 51
      Width = 246
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 6
      OnChange = eprodutoChange
      OnEnter = eprodutoEnter
      OnExit = eprodutoExit
      OnKeyDown = eprodutoKeyDown
      OnKeyPress = eprodutoKeyPress
    end
    object efornecedor: TwwDBLookupCombo
      Left = 520
      Top = 3
      Width = 246
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'NOME'#9'F')
      LookupField = 'NOME'
      TabOrder = 4
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = eprodutoEnter
      OnExit = efornecedorExit
      OnKeyPress = efornecedorKeyPress
    end
    object emarca: TwwDBLookupCombo
      Left = 520
      Top = 27
      Width = 246
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'NOME'#9'40'#9'NOME'#9'F')
      LookupField = 'NOME'
      TabOrder = 5
      AutoDropDown = True
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnEnter = eprodutoEnter
      OnExit = emarcaExit
      OnKeyPress = emarcaKeyPress
    end
    object combo_referencia: TComboBox
      Left = 352
      Top = 4
      Width = 73
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemHeight = 12
      ItemIndex = 0
      ParentFont = False
      TabOrder = 7
      Text = 'IN'#205'CIO'
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
  end
  object dsproduto: TDataSource
    DataSet = qrproduto
    Left = 320
    Top = 136
  end
  object qrproduto: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000025')
    Params = <>
    Left = 432
    Top = 160
    object qrprodutoCODIGO: TStringField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 8
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object qrprodutoCODBARRA: TStringField
      DisplayLabel = 'Refer'#234'ncia'
      DisplayWidth = 14
      FieldName = 'CODBARRA'
      Size = 13
    end
    object qrprodutoPRODUTO: TStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 49
      FieldName = 'PRODUTO'
      Size = 60
    end
    object qrprodutoAUTO_APLICACAO: TStringField
      DisplayLabel = 'Aplica'#231#227'o'
      DisplayWidth = 31
      FieldName = 'AUTO_APLICACAO'
      Size = 60
    end
    object qrprodutoLOCALICAZAO: TStringField
      DisplayLabel = 'Localiza'#231#227'o'
      DisplayWidth = 16
      FieldName = 'LOCALICAZAO'
      Size = 50
    end
    object qrprodutoUNIDADE: TStringField
      DisplayLabel = 'UN'
      DisplayWidth = 2
      FieldName = 'UNIDADE'
      Visible = False
      Size = 2
    end
    object qrprodutoAPLICACAO: TMemoField
      DisplayWidth = 10
      FieldName = 'APLICACAO'
      Visible = False
      BlobType = ftMemo
    end
    object qrprodutoESTOQUE: TFloatField
      DisplayWidth = 8
      FieldName = 'ESTOQUE'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPRECOVENDA: TFloatField
      DisplayLabel = 'PRE'#199'O'
      DisplayWidth = 7
      FieldName = 'PRECOVENDA'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutomarca: TStringField
      DisplayLabel = 'MARCA'
      DisplayWidth = 8
      FieldKind = fkLookup
      FieldName = 'marca'
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codmarca'
      Visible = False
      Size = 40
      Lookup = True
    end
    object qrprodutofornecedor: TStringField
      DisplayLabel = 'FORNECEDOR'
      DisplayWidth = 13
      FieldKind = fkLookup
      FieldName = 'fornecedor'
      LookupKeyFields = 'codigo'
      LookupResultField = 'NOME'
      KeyFields = 'codfornecedor'
      Visible = False
      Size = 50
      Lookup = True
    end
    object qrprodutoDATA_CADASTRO: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_CADASTRO'
      Visible = False
    end
    object qrprodutoCODGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODSUBGRUPO: TStringField
      DisplayWidth = 6
      FieldName = 'CODSUBGRUPO'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODMARCA: TStringField
      DisplayWidth = 6
      FieldName = 'CODMARCA'
      Visible = False
      Size = 6
    end
    object qrprodutoDATA_ULTIMACOMPRA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA'
      Visible = False
    end
    object qrprodutoNOTAFISCAL: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoDATA_ULTIMAVENDA: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMAVENDA'
      Visible = False
    end
    object qrprodutoESTOQUEMINIMO: TFloatField
      DisplayWidth = 10
      FieldName = 'ESTOQUEMINIMO'
      Visible = False
      DisplayFormat = '###,###,##0.00'
    end
    object qrprodutoPESO: TFloatField
      DisplayWidth = 10
      FieldName = 'PESO'
      Visible = False
    end
    object qrprodutoVALIDADE: TStringField
      DisplayWidth = 20
      FieldName = 'VALIDADE'
      Visible = False
    end
    object qrprodutoCOMISSAO: TFloatField
      DisplayWidth = 10
      FieldName = 'COMISSAO'
      Visible = False
    end
    object qrprodutoUSA_BALANCA: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_BALANCA'
      Visible = False
    end
    object qrprodutoUSA_SERIAL: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_SERIAL'
      Visible = False
    end
    object qrprodutoUSA_GRADE: TIntegerField
      DisplayWidth = 10
      FieldName = 'USA_GRADE'
      Visible = False
    end
    object qrprodutogrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'grupo'
      LookupKeyFields = 'codigo'
      LookupResultField = 'grupo'
      KeyFields = 'CODGRUPO'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrprodutosubgrupo: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'subgrupo'
      LookupKeyFields = 'codigo'
      LookupResultField = 'subgrupo'
      KeyFields = 'codsubgrupo'
      Visible = False
      Size = 30
      Lookup = True
    end
    object qrprodutoCODRECEITA: TStringField
      DisplayWidth = 6
      FieldName = 'CODRECEITA'
      Visible = False
      Size = 6
    end
    object qrprodutoFOTO: TStringField
      DisplayWidth = 80
      FieldName = 'FOTO'
      Visible = False
      Size = 80
    end
    object qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField
      DisplayWidth = 18
      FieldName = 'DATA_ULTIMACOMPRA_ANTERIOR'
      Visible = False
    end
    object qrprodutoNOTAFISCAL_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'NOTAFISCAL_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoCODFORNECEDOR_ANTERIOR: TStringField
      DisplayWidth = 6
      FieldName = 'CODFORNECEDOR_ANTERIOR'
      Visible = False
      Size = 6
    end
    object qrprodutoPRECOCUSTO_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOCUSTO_ANTERIOR'
      Visible = False
    end
    object qrprodutoPRECOVENDA_ANTERIOR: TFloatField
      DisplayWidth = 10
      FieldName = 'PRECOVENDA_ANTERIOR'
      Visible = False
    end
    object qrprodutoCUSTOMEDIO: TFloatField
      DisplayWidth = 10
      FieldName = 'CUSTOMEDIO'
      Visible = False
    end
    object qrprodutoAUTO_COMPLEMENTO: TStringField
      FieldName = 'AUTO_COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField
      FieldName = 'DATA_REMARCACAO_CUSTO'
      Visible = False
    end
    object qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField
      FieldName = 'DATA_REMARCACAO_VENDA'
      Visible = False
    end
    object qrprodutoPRECO_PROMOCAO: TFloatField
      FieldName = 'PRECO_PROMOCAO'
      Visible = False
    end
    object qrprodutoDATA_PROMOCAO: TDateTimeField
      FieldName = 'DATA_PROMOCAO'
      Visible = False
    end
    object qrprodutoFIM_PROMOCAO: TDateTimeField
      FieldName = 'FIM_PROMOCAO'
      Visible = False
    end
    object qrprodutoCODALIQUOTA: TStringField
      FieldName = 'CODALIQUOTA'
      Visible = False
      Size = 5
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 544
    Top = 216
    object Sair1: TMenuItem
      Caption = 'Sair'
      ShortCut = 27
      OnClick = Sair1Click
    end
    object SelecionarProduto1: TMenuItem
      Caption = 'Selecionar Produto'
      ShortCut = 121
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object ipodePesquisa1: TMenuItem
      Caption = 'Tipo de Pesquisa'
      ShortCut = 115
      OnClick = ipodePesquisa1Click
    end
  end
  object qrestoque: TZQuery
    Connection = frmmodulo.Conexao
    Params = <>
    Left = 160
    Top = 152
  end
end
