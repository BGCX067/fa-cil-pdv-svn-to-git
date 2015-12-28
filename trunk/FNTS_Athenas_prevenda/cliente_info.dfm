object frmcliente_info: Tfrmcliente_info
  Left = 721
  Top = 313
  BorderStyle = bsToolWindow
  Caption = 'Cliente - Informa'#231#245'es'
  ClientHeight = 337
  ClientWidth = 584
  Color = clWhite
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel1: TBevel
    Left = 0
    Top = 289
    Width = 584
    Height = 2
    Align = alTop
  end
  object Label4: TLabel
    Left = 8
    Top = 60
    Width = 49
    Height = 13
    Caption = 'Endere'#231'o:'
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 584
    Height = 289
    Align = alTop
    BevelOuter = bvNone
    Color = 14265139
    Enabled = False
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 12
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label2: TLabel
      Left = 136
      Top = 12
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label3: TLabel
      Left = 8
      Top = 36
      Width = 49
      Height = 13
      Caption = 'Endere'#231'o:'
    end
    object Label5: TLabel
      Left = 8
      Top = 60
      Width = 32
      Height = 13
      Caption = 'Bairro:'
    end
    object Label6: TLabel
      Left = 264
      Top = 60
      Width = 69
      Height = 13
      Caption = 'Complemento:'
    end
    object Label7: TLabel
      Left = 8
      Top = 84
      Width = 37
      Height = 13
      Caption = 'Cidade:'
    end
    object Label8: TLabel
      Left = 400
      Top = 84
      Width = 17
      Height = 13
      Caption = 'UF:'
    end
    object Label9: TLabel
      Left = 464
      Top = 84
      Width = 23
      Height = 13
      Caption = 'CEP:'
    end
    object Label10: TLabel
      Left = 8
      Top = 108
      Width = 51
      Height = 13
      Caption = 'Telefones:'
    end
    object Label11: TLabel
      Left = 8
      Top = 140
      Width = 31
      Height = 13
      Caption = 'Limite:'
    end
    object Label12: TLabel
      Left = 8
      Top = 164
      Width = 45
      Height = 13
      Caption = 'Situa'#231#227'o:'
    end
    object Label13: TLabel
      Left = 8
      Top = 196
      Width = 67
      Height = 13
      Caption = 'Observa'#231#245'es:'
    end
    object DBEdit1: TDBEdit
      Left = 80
      Top = 8
      Width = 49
      Height = 21
      DataField = 'CODIGO'
      DataSource = dscliente
      TabOrder = 0
    end
    object DBEdit2: TDBEdit
      Left = 176
      Top = 8
      Width = 393
      Height = 21
      DataField = 'NOME'
      DataSource = dscliente
      TabOrder = 1
    end
    object DBEdit3: TDBEdit
      Left = 80
      Top = 32
      Width = 489
      Height = 21
      DataField = 'ENDERECO'
      DataSource = dscliente
      TabOrder = 2
    end
    object DBEdit4: TDBEdit
      Left = 80
      Top = 56
      Width = 169
      Height = 21
      DataField = 'BAIRRO'
      DataSource = dscliente
      TabOrder = 3
    end
    object DBEdit5: TDBEdit
      Left = 344
      Top = 56
      Width = 225
      Height = 21
      DataField = 'COMPLEMENTO'
      DataSource = dscliente
      TabOrder = 4
    end
    object DBEdit6: TDBEdit
      Left = 80
      Top = 80
      Width = 305
      Height = 21
      DataField = 'CIDADE'
      DataSource = dscliente
      TabOrder = 5
    end
    object DBEdit7: TDBEdit
      Left = 424
      Top = 80
      Width = 33
      Height = 21
      DataField = 'UF'
      DataSource = dscliente
      TabOrder = 6
    end
    object DBEdit8: TDBEdit
      Left = 496
      Top = 80
      Width = 73
      Height = 21
      DataField = 'CEP'
      DataSource = dscliente
      TabOrder = 7
    end
    object DBEdit9: TDBEdit
      Left = 80
      Top = 104
      Width = 89
      Height = 21
      DataField = 'TELEFONE1'
      DataSource = dscliente
      TabOrder = 8
    end
    object DBEdit10: TDBEdit
      Left = 176
      Top = 104
      Width = 89
      Height = 21
      DataField = 'TELEFONE2'
      DataSource = dscliente
      TabOrder = 9
    end
    object DBEdit11: TDBEdit
      Left = 272
      Top = 104
      Width = 89
      Height = 21
      DataField = 'TELEFONE3'
      DataSource = dscliente
      TabOrder = 10
    end
    object DBEdit12: TDBEdit
      Left = 368
      Top = 104
      Width = 89
      Height = 21
      DataField = 'CELULAR'
      DataSource = dscliente
      TabOrder = 11
    end
    object RzDBNumericEdit1: TRzDBNumericEdit
      Left = 80
      Top = 136
      Width = 121
      Height = 21
      DataSource = dscliente
      DataField = 'LIMITE'
      Alignment = taLeftJustify
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      DisplayFormat = '###,###,##0.00'
    end
    object ed_situacao: TEdit
      Left = 80
      Top = 160
      Width = 121
      Height = 21
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 13
    end
    object DBEdit13: TDBEdit
      Left = 80
      Top = 192
      Width = 489
      Height = 21
      DataField = 'OBS1'
      DataSource = dscliente
      TabOrder = 14
    end
    object DBEdit14: TDBEdit
      Left = 80
      Top = 216
      Width = 489
      Height = 21
      DataField = 'OBS2'
      DataSource = dscliente
      TabOrder = 15
    end
    object DBEdit15: TDBEdit
      Left = 80
      Top = 240
      Width = 489
      Height = 21
      DataField = 'OBS3'
      DataSource = dscliente
      TabOrder = 16
    end
    object DBEdit16: TDBEdit
      Left = 80
      Top = 264
      Width = 489
      Height = 21
      DataField = 'OBS4'
      DataSource = dscliente
      TabOrder = 17
    end
  end
  object isair: TAdvGlowButton
    Left = 262
    Top = 295
    Width = 101
    Height = 40
    Caption = 'Esc | Sair'
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
    TabOrder = 1
    OnClick = isairClick
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
    Layout = blGlyphLeftAdjusted
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000007')
    Params = <>
    Left = 232
    Top = 248
  end
  object dscliente: TDataSource
    DataSet = qrcliente
    Left = 264
    Top = 248
  end
  object PopupMenu1: TPopupMenu
    Left = 440
    Top = 128
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
end
