unit modulo;

interface

uses
  SysUtils, Classes,
  IniFiles {Unit de arquivo ini},
  forms, DB, MemDS, DBAccess, IBC, ACBrBase, ACBrBAL, AdvMenus,
  AdvMenuStylers, ACBrValidador, VirtualTable, Dialogs, DBClient;

type
  TfrmModulo = class(TDataModule)
    conexao: TIBCConnection;
    query: TIBCQuery;
    Balanca: TACBrBAL;
    estilo_menu: TAdvMenuOfficeStyler;
    spCupom: TIBCStoredProc;
    spCupom_Crediario: TIBCStoredProc;
    spCupom_Forma: TIBCStoredProc;
    spCupom_Consumidor: TIBCStoredProc;
    spCodigo_Global: TIBCStoredProc;
    docValidador: TACBrValidador;
    tbForma_Pgto: TVirtualTable;
    tbForma_PgtoNome: TStringField;
    tbForma_PgtoValor_Acumulado: TFloatField;
    tbForma_PgtoValor_Ultimo_Cupom: TFloatField;
    tbForma_Pgtoid: TIntegerField;
    spNao_Fiscal: TIBCStoredProc;
    spReducaoZ: TIBCStoredProc;
    spReducaoZ_Total_Parcial: TIBCStoredProc;
    tbAliquota: TVirtualTable;
    tbAliquotaCodigo: TStringField;
    tbAliquotaAliquota: TFloatField;
    Conexao_Servidor: TIBCConnection;
    query_servidor: TIBCQuery;
    spCupom_Temp: TIBCStoredProc;
    spCupom_Temp_delete: TIBCStoredProc;
    spCupom_Temp_Edit: TIBCStoredProc;
    qrtotalizador: TIBCQuery;
    qrMestre: TIBCQuery;
    Dlg_arquivo: TOpenDialog;
    qrcliente: TIBCQuery;
    qrcontasreceber: TIBCQuery;
    qrconfig: TIBCQuery;
    qrcaixa_operador: TIBCQuery;
    qrcaixa_mov: TIBCQuery;
    qrbanco: TIBCQuery;
    qrcontacorrente: TIBCQuery;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrentebanco: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrlancamento_conta: TIBCQuery;
    spDav_Codigo: TIBCStoredProc;
    spDAV: TIBCStoredProc;
    query_servidor2: TIBCQuery;
    qrfilial: TIBCQuery;
    qrtransportador: TIBCQuery;
    qrcfop: TIBCQuery;
    qrfiscal_modelo: TIBCQuery;
    qrgrupo: TIBCQuery;
    qrsubgrupo: TIBCQuery;
    qrmarca: TIBCQuery;
    qrfornecedor: TIBCQuery;
    qrproduto: TIBCQuery;
    qrproduto_mov: TIBCQuery;
    qrgrade_produto: TIBCQuery;
    St_Abastecimento_codigo: TIBCStoredProc;
    St_Abastecimento: TIBCStoredProc;
    st_bico_movimento: TIBCStoredProc;
    spCupom_Item_Temp: TIBCStoredProc;
    spCupom_Item: TIBCStoredProc;
    Qremitente: TIBCQuery;
    QremitenteCODIGO: TStringField;
    QremitenteNOME: TStringField;
    QremitenteFANTASIA: TStringField;
    QremitenteENDERECO: TStringField;
    QremitenteBAIRRO: TStringField;
    QremitenteCIDADE: TStringField;
    QremitenteUF: TStringField;
    QremitenteCEP: TStringField;
    QremitenteTELEFONE: TStringField;
    QremitenteCNPJ: TStringField;
    QremitenteIE: TStringField;
    QremitenteEMAIL: TStringField;
    QremitenteHOMEPAGE: TStringField;
    QremitenteRESPONSAVEL: TStringField;
    QremitenteCELULAR: TStringField;
    QremitenteLOGO: TBlobField;
    QremitenteFAX: TStringField;
    QremitenteNUMERO: TStringField;
    QremitenteCOMPLEMENTO: TStringField;
    QremitenteCONTRIBUINTE_IPI: TStringField;
    QremitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    QremitenteCOMENTARIOS: TStringField;
    QremitenteDATAHORA_INICIAL: TDateTimeField;
    QremitenteDATAHORA_FINAL: TDateTimeField;
    QremitenteDATA_INVENTARIO: TDateTimeField;
    QremitenteESTOQUE: TFloatField;
    QremitenteVALOR: TFloatField;
    QremitenteCONHECIMENTO: TIntegerField;
    QremitenteCPF: TStringField;
    QremitenteRG: TStringField;
    QremitenteDIA_VENCIMENTO_CHAVE: TStringField;
    QremitenteINSC_MUNICIPAL: TStringField;
    QremitenteDATA_ABERTURA: TDateTimeField;
    QremitenteCOD_MUNICIPIO_IBGE: TStringField;
    QremitenteIBGE: TStringField;
    cdsComandas: TClientDataSet;
    DataSource1: TDataSource;
    cdsComandasID_COMANDA: TStringField;
    cdsComandasEVENTO: TStringField;
    procedure BalancaLePeso(Peso: Double; Resposta: string);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    mesa_comanda: string;

  end;

const
  sPAF_Versao_ER: string = '0103';


var
  frmModulo: TfrmModulo;
  sConfiguracoes: string;
  emitente_uf, emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone, emitente_ie: string;

  resultado_pesquisa1,
    resultado_pesquisa2,
    resultado_pesquisa3,
    resultado_pesquisa4,
    resultado_pesquisa5,
    resultado_pesquisa6,
    resultado_pesquisa7,
    resultado_pesquisa8: string;


  resultado_valor1, resultado_valor2: real;

  parametro_pesquisa: string;

implementation

uses funcoes, principal;

{$R *.dfm}

procedure TfrmModulo.BalancaLePeso(Peso: Double; Resposta: string);
begin
   // Buscar o Peso nas balancas PDV's
  if Peso > 0 then
  begin
     // Leitura OK
    sBal_Resposta := 'Peso Estável';
    rBal_peso := Peso;
  end
  else
  begin
     // Leitura retornou ERRo
    case Trunc(balanca.UltimoPesoLido) of
      0: sBal_Resposta := 'Coloque o produto sobre a Balança!';
      -1: sBal_Resposta := 'Peso Instavel!';
      -2: sBal_Resposta := 'Peso Negativo!';
      -10: sBal_Resposta := 'Sobrepeso!';
    end;
    rBal_peso := 0;
  end;
end;

procedure TfrmModulo.DataModuleCreate(Sender: TObject);
begin
  qremitente.open;
  emitente_nome := qremitente.fieldbyname('nome').asstring;
  emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
  emitente_endereco := qremitente.fieldbyname('endereco').asstring + ' - ' + qremitente.fieldbyname('bairro').asstring;
  emitente_cidade := qremitente.fieldbyname('cidade').asstring + '/' + qremitente.fieldbyname('uf').asstring;
  emitente_cep := qremitente.fieldbyname('cep').asstring;
  emitente_telefone := qremitente.fieldbyname('telefone').asstring;
  emitente_cnpj := qremitente.fieldbyname('cnpj').asstring;
  emitente_ie := qremitente.fieldbyname('ie').asstring;
  emitente_uf := qremitente.fieldbyname('uf').asstring;
  qremitente.Close;
end;

end.

Nome: string[20];
Valor_Acumulado: Real;
Valor_Ultimo_Cupom: Real;

