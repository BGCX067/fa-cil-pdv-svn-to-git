object frmModulo: TfrmModulo
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 3
  Height = 556
  Width = 798
  object conexao: TIBCConnection
    Database = 'C:\Kodigo\PDV\BD\DATPDV.FDB'
    ClientLibrary = 'gds32.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    LoginPrompt = False
    Left = 368
    Top = 16
  end
  object query: TIBCQuery
    Connection = conexao
    Left = 808
    Top = 152
  end
  object Balanca: TACBrBAL
    Porta = 'COM1'
    OnLePeso = BalancaLePeso
    Left = 16
    Top = 16
  end
  object estilo_menu: TAdvMenuOfficeStyler
    AntiAlias = aaNone
    AutoThemeAdapt = False
    Style = osOffice2007Obsidian
    Background.Position = bpCenter
    Background.Color = 16185078
    Background.ColorTo = 16185078
    ButtonAppearance.DownColor = 13421257
    ButtonAppearance.DownColorTo = 15395047
    ButtonAppearance.HoverColor = 14737117
    ButtonAppearance.HoverColorTo = 16052977
    ButtonAppearance.DownBorderColor = 11906984
    ButtonAppearance.HoverBorderColor = 11906984
    ButtonAppearance.CaptionFont.Charset = DEFAULT_CHARSET
    ButtonAppearance.CaptionFont.Color = clWindowText
    ButtonAppearance.CaptionFont.Height = -11
    ButtonAppearance.CaptionFont.Name = 'Tahoma'
    ButtonAppearance.CaptionFont.Style = []
    IconBar.Color = 15658729
    IconBar.ColorTo = 15658729
    IconBar.CheckBorder = clNavy
    IconBar.RadioBorder = clNavy
    IconBar.SeparatorColor = 12961221
    IconBar.Size = 16
    SelectedItem.Color = 15465983
    SelectedItem.ColorTo = 11267071
    SelectedItem.ColorMirror = 6936319
    SelectedItem.ColorMirrorTo = 9889023
    SelectedItem.BorderColor = 10079963
    SelectedItem.Font.Charset = DEFAULT_CHARSET
    SelectedItem.Font.Color = clWindowText
    SelectedItem.Font.Height = -12
    SelectedItem.Font.Name = 'Segoe UI'
    SelectedItem.Font.Style = []
    SelectedItem.NotesFont.Charset = DEFAULT_CHARSET
    SelectedItem.NotesFont.Color = clWindowText
    SelectedItem.NotesFont.Height = -8
    SelectedItem.NotesFont.Name = 'Tahoma'
    SelectedItem.NotesFont.Style = []
    SelectedItem.CheckBorder = clNavy
    SelectedItem.RadioBorder = clNavy
    RootItem.Color = 12105910
    RootItem.ColorTo = 10526878
    RootItem.GradientDirection = gdVertical
    RootItem.Font.Charset = DEFAULT_CHARSET
    RootItem.Font.Color = clMenuText
    RootItem.Font.Height = -12
    RootItem.Font.Name = 'Segoe UI'
    RootItem.Font.Style = []
    RootItem.SelectedColor = 7778289
    RootItem.SelectedColorTo = 4296947
    RootItem.SelectedColorMirror = 946929
    RootItem.SelectedColorMirrorTo = 5021693
    RootItem.SelectedBorderColor = 4548219
    RootItem.HoverColor = 15465983
    RootItem.HoverColorTo = 11267071
    RootItem.HoverColorMirror = 6936319
    RootItem.HoverColorMirrorTo = 9889023
    RootItem.HoverBorderColor = 10079963
    Glyphs.SubMenu.Data = {
      5A000000424D5A000000000000003E0000002800000004000000070000000100
      0100000000001C0000000000000000000000020000000200000000000000FFFF
      FF0070000000300000001000000000000000100000003000000070000000}
    Glyphs.Check.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FDFF0000F8FF0000F07F0000F23F
      0000F71F0000FF8F0000FFCF0000FFEF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    Glyphs.Radio.Data = {
      7E000000424D7E000000000000003E0000002800000010000000100000000100
      010000000000400000000000000000000000020000000200000000000000FFFF
      FF00FFFF0000FFFF0000FFFF0000FFFF0000FFFF0000FC3F0000F81F0000F81F
      0000F81F0000F81F0000FC3F0000FFFF0000FFFF0000FFFF0000FFFF0000FFFF
      0000}
    SideBar.Font.Charset = DEFAULT_CHARSET
    SideBar.Font.Color = clWhite
    SideBar.Font.Height = -19
    SideBar.Font.Name = 'Tahoma'
    SideBar.Font.Style = [fsBold, fsItalic]
    SideBar.Image.Position = bpCenter
    SideBar.Background.Position = bpCenter
    SideBar.SplitterColorTo = clBlack
    Separator.Color = 12961221
    Separator.GradientType = gtBoth
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clGray
    NotesFont.Height = -8
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    MenuBorderColor = clSilver
    Left = 192
    Top = 16
  end
  object spCupom: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_INSERT'
    Connection = conexao
    Left = 104
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QTDE_ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_PAGO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TROCO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CPF_CONSUMIDOR'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'NOME_CONSUMIDOR'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftInteger
        Name = 'COD_VENDEDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
      end>
  end
  object spCupom_Crediario: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_CREDIARIO_INSERT'
    Connection = conexao
    Left = 16
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
      end>
  end
  object spCupom_Forma: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_FORMA_INSERT'
    Connection = conexao
    Left = 368
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'FORMA'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PRESTACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
        Size = 30
      end>
  end
  object spCupom_Consumidor: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_CONSUMIDOR_INSERT'
    Connection = conexao
    Left = 280
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ENDERECO'
        ParamType = ptInput
        Size = 80
      end
      item
        DataType = ftString
        Name = 'BAIRRO'
        ParamType = ptInput
        Size = 40
      end
      item
        DataType = ftString
        Name = 'CIDADE'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'UF'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CEP'
        ParamType = ptInput
        Size = 9
      end
      item
        DataType = ftString
        Name = 'CPF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RG'
        ParamType = ptInput
        Size = 20
      end
      item
        DataType = ftString
        Name = 'PLACA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'KM'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'VENDEDOR'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL1'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'INFO_ADICIONAL2'
        ParamType = ptInput
        Size = 50
      end>
  end
  object spCodigo_Global: TIBCStoredProc
    StoredProcName = 'ST_CODIGO_GLOBAL'
    Connection = conexao
    Left = 192
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
        Value = 5
      end>
  end
  object docValidador: TACBrValidador
    IgnorarChar = './-'
    Left = 104
    Top = 16
  end
  object tbForma_Pgto: TVirtualTable
    IndexFieldNames = 'id'
    FieldDefs = <
      item
        Name = 'Nome'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Valor_Acumulado'
        DataType = ftFloat
      end
      item
        Name = 'Valor_Ultimo_Cupom'
        DataType = ftFloat
      end
      item
        Name = 'id'
        DataType = ftInteger
      end>
    Left = 808
    Top = 288
    Data = {
      0300040004004E6F6D6501001400000000000F0056616C6F725F4163756D756C
      61646F0600000000000000120056616C6F725F556C74696D6F5F4375706F6D06
      00000000000000020069640300000000000000000000000000}
    object tbForma_PgtoNome: TStringField
      FieldName = 'Nome'
    end
    object tbForma_PgtoValor_Acumulado: TFloatField
      FieldName = 'Valor_Acumulado'
    end
    object tbForma_PgtoValor_Ultimo_Cupom: TFloatField
      FieldName = 'Valor_Ultimo_Cupom'
    end
    object tbForma_Pgtoid: TIntegerField
      FieldName = 'id'
    end
  end
  object spNao_Fiscal: TIBCStoredProc
    StoredProcName = 'ST_NAO_FISCAL'
    Connection = conexao
    Left = 544
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'INDICE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESCRICAO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'GNF'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'GRG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CDC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DENOMINACAO'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODVENDEDOR'
        ParamType = ptInput
      end>
  end
  object spReducaoZ: TIBCStoredProc
    StoredProcName = 'ST_REDUCAOZ'
    Connection = conexao
    Left = 456
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'USUARIO'
        ParamType = ptInput
        Size = 2
      end
      item
        DataType = ftString
        Name = 'CRZ'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'CRO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftDate
        Name = 'DATA_MOVIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA_EMISSAO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTALIZADOR_GERAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDA_BRUTA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'CANCELAMENTO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'DESCONTO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VENDA_LIQUIDA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ICMS'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ACRESCIMO_ISS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF_CAIXA'
        ParamType = ptInput
        Size = 3
      end>
  end
  object spReducaoZ_Total_Parcial: TIBCStoredProc
    StoredProcName = 'ST_REDUCAOZ_TOTAL_PARCIAL'
    Connection = conexao
    Left = 632
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_REDUCAOZ'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'TOTALIZADOR'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end>
  end
  object tbAliquota: TVirtualTable
    IndexFieldNames = 'codigo'
    FieldDefs = <
      item
        Name = 'Codigo'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Aliquota'
        DataType = ftFloat
      end>
    Left = 16
    Top = 356
    Data = {
      030002000600436F6469676F01001400000000000800416C6971756F74610600
      000000000000000000000000}
    object tbAliquotaCodigo: TStringField
      FieldName = 'Codigo'
    end
    object tbAliquotaAliquota: TFloatField
      FieldName = 'Aliquota'
    end
  end
  object Conexao_Servidor: TIBCConnection
    Database = 'C:\Kodigo\Server\BD\BASE.FDB'
    SQLDialect = 1
    ClientLibrary = 'gds32.dll'
    Username = 'SYSDBA'
    Password = 'masterkey'
    Server = 'localhost'
    LoginPrompt = False
    Left = 280
    Top = 16
  end
  object query_servidor: TIBCQuery
    Connection = Conexao_Servidor
    Left = 544
    Top = 152
  end
  object spCupom_Temp: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_INSERT'
    Connection = conexao
    Left = 104
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 12
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftTime
        Name = 'HORA'
        ParamType = ptInput
      end>
  end
  object spCupom_Temp_delete: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_DELETE'
    Connection = conexao
    Left = 368
    Top = 288
  end
  object spCupom_Temp_Edit: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_TEMP_EDIT'
    Connection = conexao
    Left = 280
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'PROCEDIMENTO'
        ParamType = ptInput
      end>
  end
  object qrtotalizador: TIBCQuery
    Connection = conexao
    Left = 456
    Top = 152
  end
  object qrMestre: TIBCQuery
    Connection = Conexao_Servidor
    Left = 632
    Top = 152
  end
  object Dlg_arquivo: TOpenDialog
    Filter = 'Arquivo Texto|*.txt'
    Left = 720
    Top = 288
  end
  object qrcliente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000007')
    Left = 720
    Top = 152
  end
  object qrcontasreceber: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000049')
    Left = 368
    Top = 152
  end
  object qrconfig: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000001')
    Left = 16
    Top = 84
  end
  object qrcaixa_operador: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000045')
    Left = 808
    Top = 16
  end
  object qrcaixa_mov: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000044')
    Left = 104
    Top = 84
  end
  object qrbanco: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000013')
    Left = 280
    Top = 84
  end
  object qrcontacorrente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000041')
    Left = 192
    Top = 84
    object qrcontacorrenteCONTA: TStringField
      DisplayLabel = 'Conta'
      DisplayWidth = 15
      FieldName = 'CONTA'
      Size = 15
    end
    object qrcontacorrentebanco: TStringField
      DisplayLabel = 'Banco'
      DisplayWidth = 19
      FieldKind = fkLookup
      FieldName = 'banco'
      LookupDataSet = qrbanco
      LookupKeyFields = 'numero'
      LookupResultField = 'BANCO'
      KeyFields = 'codbanco'
      Size = 40
      Lookup = True
    end
    object qrcontacorrenteAGENCIA: TStringField
      DisplayLabel = 'Ag'#234'ncia'
      DisplayWidth = 6
      FieldName = 'AGENCIA'
      Size = 10
    end
    object qrcontacorrenteTITULAR: TStringField
      DisplayLabel = 'Titular'
      DisplayWidth = 31
      FieldName = 'TITULAR'
      Size = 30
    end
    object qrcontacorrenteCODIGO: TStringField
      DisplayWidth = 6
      FieldName = 'CODIGO'
      Required = True
      Visible = False
      Size = 6
    end
    object qrcontacorrenteCODBANCO: TStringField
      DisplayWidth = 3
      FieldName = 'CODBANCO'
      Visible = False
      Size = 3
    end
    object qrcontacorrenteSALDO: TFloatField
      DisplayWidth = 10
      FieldName = 'SALDO'
      Visible = False
    end
    object qrcontacorrenteNOME_AGENCIA: TStringField
      DisplayWidth = 30
      FieldName = 'NOME_AGENCIA'
      Visible = False
      Size = 30
    end
  end
  object qrlancamento_conta: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000042')
    Left = 720
    Top = 16
  end
  object spDav_Codigo: TIBCStoredProc
    StoredProcName = 'SPCODIGO_DAV'
    Connection = Conexao_Servidor
    Left = 192
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object spDAV: TIBCStoredProc
    StoredProcName = 'ST_DAV'
    Connection = conexao
    Left = 16
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ECF'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftString
        Name = 'COO'
        ParamType = ptInput
        Size = 6
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TITULO'
        ParamType = ptInput
        Size = 30
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COO_CUPOM_FISCAL'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftString
        Name = 'CCF'
        ParamType = ptInput
        Size = 6
      end>
  end
  object query_servidor2: TIBCQuery
    Connection = Conexao_Servidor
    Left = 456
    Top = 16
  end
  object qrfilial: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000004')
    Left = 632
    Top = 16
  end
  object qrtransportador: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000010')
    Left = 544
    Top = 16
  end
  object qrcfop: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000030')
    Left = 16
    Top = 152
  end
  object qrfiscal_modelo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000082')
    Left = 808
    Top = 84
  end
  object qrgrupo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000017')
    Left = 104
    Top = 152
  end
  object qrsubgrupo: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000018')
    Left = 280
    Top = 152
  end
  object qrmarca: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000019')
    Left = 192
    Top = 152
  end
  object qrfornecedor: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000009')
    Left = 456
    Top = 84
  end
  object qrproduto: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000025')
    Left = 368
    Top = 84
  end
  object qrproduto_mov: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 544
    Top = 84
  end
  object qrgrade_produto: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c000032')
    Left = 720
    Top = 84
  end
  object St_Abastecimento_codigo: TIBCStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_CODIGO'
    Connection = conexao
    Left = 720
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object St_Abastecimento: TIBCStoredProc
    StoredProcName = 'ST_ABASTECIMENTO_INSERT'
    Connection = conexao
    Left = 808
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BOMBA'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'BICO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HORA'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EI'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SITUACAO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TANQUE'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftString
        Name = 'NUMERO_ABASTECIMENTO'
        ParamType = ptInput
        Size = 6
      end>
  end
  object st_bico_movimento: TIBCStoredProc
    StoredProcName = 'ST_BICO_MOVIMENTO'
    Connection = conexao
    Left = 632
    Top = 220
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_BICO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'EF'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VOLUME'
        ParamType = ptInput
      end>
  end
  object spCupom_Item_Temp: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_TEMP_INSERT'
    Connection = conexao
    Left = 456
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
      end>
  end
  object spCupom_Item: TIBCStoredProc
    StoredProcName = 'ST_CUPOM_ITEM_INSERT'
    Connection = conexao
    Left = 544
    Top = 220
    ParamData = <
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftString
        Name = 'COD_CUPOM'
        ParamType = ptInput
        Size = 50
      end
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD_PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptInput
        Size = 10
      end
      item
        DataType = ftFloat
        Name = 'QTDE'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_UNITARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_SUBTOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_ACRESCIMO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'VALOR_TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CST'
        ParamType = ptInput
        Size = 3
      end
      item
        DataType = ftFloat
        Name = 'ALIQUOTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CANCELADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COD_TOTALIZADOR'
        ParamType = ptInput
        Size = 7
      end
      item
        DataType = ftFixedChar
        Name = 'TAMANHO'
        ParamType = ptInput
        Size = 5
      end
      item
        DataType = ftFixedChar
        Name = 'COR'
        ParamType = ptInput
        Size = 5
      end>
  end
  object Qremitente: TIBCQuery
    Connection = Conexao_Servidor
    SQL.Strings = (
      'select * from c999999')
    Left = 632
    Top = 84
    object QremitenteCODIGO: TStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 6
    end
    object QremitenteNOME: TStringField
      FieldName = 'NOME'
      Size = 80
    end
    object QremitenteFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Size = 80
    end
    object QremitenteENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 80
    end
    object QremitenteBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object QremitenteCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 40
    end
    object QremitenteUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object QremitenteCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object QremitenteTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object QremitenteCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 25
    end
    object QremitenteIE: TStringField
      FieldName = 'IE'
    end
    object QremitenteEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 80
    end
    object QremitenteHOMEPAGE: TStringField
      FieldName = 'HOMEPAGE'
      Size = 80
    end
    object QremitenteRESPONSAVEL: TStringField
      FieldName = 'RESPONSAVEL'
      Size = 50
    end
    object QremitenteCELULAR: TStringField
      FieldName = 'CELULAR'
    end
    object QremitenteLOGO: TBlobField
      FieldName = 'LOGO'
    end
    object QremitenteFAX: TStringField
      FieldName = 'FAX'
    end
    object QremitenteNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object QremitenteCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 30
    end
    object QremitenteCONTRIBUINTE_IPI: TStringField
      FieldName = 'CONTRIBUINTE_IPI'
      Size = 4
    end
    object QremitenteSUBSTITUTO_TRIBUTARIO: TStringField
      FieldName = 'SUBSTITUTO_TRIBUTARIO'
      Size = 4
    end
    object QremitenteCOMENTARIOS: TStringField
      FieldName = 'COMENTARIOS'
      Size = 50
    end
    object QremitenteDATAHORA_INICIAL: TDateTimeField
      FieldName = 'DATAHORA_INICIAL'
    end
    object QremitenteDATAHORA_FINAL: TDateTimeField
      FieldName = 'DATAHORA_FINAL'
    end
    object QremitenteDATA_INVENTARIO: TDateTimeField
      FieldName = 'DATA_INVENTARIO'
    end
    object QremitenteESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
    end
    object QremitenteVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object QremitenteCONHECIMENTO: TIntegerField
      FieldName = 'CONHECIMENTO'
    end
    object QremitenteCPF: TStringField
      FieldName = 'CPF'
    end
    object QremitenteRG: TStringField
      FieldName = 'RG'
    end
    object QremitenteDIA_VENCIMENTO_CHAVE: TStringField
      FieldName = 'DIA_VENCIMENTO_CHAVE'
      Size = 2
    end
    object QremitenteINSC_MUNICIPAL: TStringField
      FieldName = 'INSC_MUNICIPAL'
    end
    object QremitenteDATA_ABERTURA: TDateTimeField
      FieldName = 'DATA_ABERTURA'
    end
    object QremitenteCOD_MUNICIPIO_IBGE: TStringField
      FieldName = 'COD_MUNICIPIO_IBGE'
      Size = 10
    end
    object QremitenteIBGE: TStringField
      FieldName = 'IBGE'
      Size = 10
    end
  end
  object cdsComandas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    Left = 88
    Top = 360
    Data = {
      540000009619E0BD01000000180000000200000000000300000054000A49445F
      434F4D414E44410100490000000100055749445448020002001400064556454E
      544F01004900000001000557494454480200020001000000}
    object cdsComandasID_COMANDA: TStringField
      FieldName = 'ID_COMANDA'
    end
    object cdsComandasEVENTO: TStringField
      FieldName = 'EVENTO'
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = cdsComandas
    Left = 168
    Top = 360
  end
end
