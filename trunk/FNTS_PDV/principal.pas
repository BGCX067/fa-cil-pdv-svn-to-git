unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, XPMan, Registry, ACBrBase, ACBrBAL, ACBrDevice,
  Menus, AdvMenus, DB, DBAccess, IBC, Grids, DBGrids, MemDS,
  IniFiles, // unit de leitura do arquivo INI
  ComCtrls, ExtCtrls, RzPanel, AdvGlowButton, frxpngimage,
  AdvOfficeStatusBar, ImgList, AdvShapeButton, AdvPanel, TFlatPanelUnit,
  AdvOfficeStatusBarStylers, AdvMenuStylers, DateUtils,
  AdvReflectionImage, RzLabel, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinsDefaultPainters,
  dxSkinValentine, dxSkinVS2010, dxSkinWhiteprint, dxSkinXmas2008Blue,
  dxCustomTileControl, cxClasses, dxTileControl, sSkinManager,
  TFlatHintUnit, AdvMetroButton;

type
  TImpressora = (SemImpressora, NaoFiscal, Fiscal);
  TGaveta = (SemGaveta, GavImpNaoFiscal, GavImpFiscal);

type
  TfrmPrincipal = class(TForm)
    Bevel1: TBevel;
    pstatus: TAdvOfficeStatusBar;
    dxTile: TdxTileControl;
    dxTiledxTileControlGroup1: TdxTileControlGroup;
    tlPhotos: TdxTileControlItem;
    tlUserManagement: TdxTileControlItem;
    tlSystemInformation: TdxTileControlItem;
    tlAgents: TdxTileControlItem;
    tlResearch: TdxTileControlItem;
    tlLoanCalculator: TdxTileControlItem;
    dxTileItem1: TdxTileControlItem;
    dxTileItem2: TdxTileControlItem;
    RzPanel1: TRzPanel;
    Panel1: TPanel;
    AdvMetroToolButton3: TAdvMetroToolButton;
    AdvMetroToolButton4: TAdvMetroToolButton;
    XPManifest1: TXPManifest;
    IBCDataSource1: TIBCDataSource;
    query2: TIBCQuery;
    query3: TIBCQuery;
    query: TIBCQuery;
    qrForma: TIBCQuery;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    FlatHint1: TFlatHint;
    pop1: TPopupMenu;
    V1: TMenuItem;
    S1: TMenuItem;
    M1: TMenuItem;
    C1: TMenuItem;
    E1: TMenuItem;
    B1: TMenuItem;
    dxTiledxTileControlActionBarItem1: TdxTileControlActionBarItem;
    dxTiledxTileControlActionBarItem2: TdxTileControlActionBarItem;
    dxTiledxTileControlActionBarItem3: TdxTileControlActionBarItem;
  //  Protect1: TProtect;
    AdvReflectionImage1: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ECF1Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure NotaFiscalMod2SerieD1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Balana1Click(Sender: TObject);
    procedure Geral1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton175Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure CarregaSistemaVenda;
    procedure VendasPDV1Click(Sender: TObject);
    procedure tlResearchClick(Sender: TdxTileControlItem);
    procedure tlPhotosClick(Sender: TdxTileControlItem);
    procedure tlAgentsClick(Sender: TdxTileControlItem);
    procedure dxtlcntrltmTileItem1Click(Sender: TdxTileControlItem);
    procedure tlUserManagementClick(Sender: TdxTileControlItem);
    procedure tlSystemInformationClick(Sender: TdxTileControlItem);
    procedure dxTileItem1Click(Sender: TdxTileControlItem);
    procedure V1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure E1Click(Sender: TObject);
    procedure B1Click(Sender: TObject);
  private
    iImpressora, iGaveta: Integer;
    { Private declarations }
    function LerFormasPagto: Boolean;

  public
    { Public declarations }
    TipoImpressora: TImpressora;
    GavetaImpressora: TGaveta;

    procedure GravaIni(sArquivo, Secao, Linha, Valor: string);
    function LerIni(sArquivo, Secao, Linha: string; Def: string): string;

    function ApenasNumerosStr(pStr: string): string;

    function IsInteger(s: string): integer;


    // Funcoes Siscom 7
//    procedure Atualizar_servidor();
    function codifica(Tabela: string; qtde_digitos: integer): string;
    // Final funcoes siscom 7

  end;

type
  Tbandeira_tef = (Tef_Redecard, Tef_Visanet, Tef_Amex, Tef_TecBan,
    Tef_Hipercard, Tef_Tribanco); // tipo de bandeira tef

var
  frmPrincipal: TfrmPrincipal;

  // configura��es

  bPermite_DAV_ECF, // ativa/desativa impressao do dav no ECF
    bPermite_DAV_NF, // ativa/desativa impressao do dav em equipamento nao fiscal
    bPermite_Prevenda, // ativa/desativa fechamento de pre-venda
    bPermite_OS // ativa/desativa ordem de servico
    : boolean;

  // retorno da busca de produtos
  sProd_nome,
    sProd_barra,
    sProd_unidade,
    sProd_CST: string;
  iProd_codigo: integer;
  rProd_aliquota,
    rProd_Estoque,
    rProd_preco,
    rProd_qtde,
    rProd_total,
    rProd_desconto_maximo: real; // armazenar o desconto maximo permitido por produto
  rProd_desconto, rProd_acrescimo: real; // armazenar o desconto e acrescimo no item
  bProd_promocao: boolean; // armazenar se o produto estah em promocao
  sProd_Tamanho: string;
  sProd_Cor: string;

  (* Retorno do ECF *)
  sMsg: string;

  (*Lista de aliquotas*)
  laliquota: TstringList;
  (* Lista de Formas de Pagamento que exigem tratamento especial no fechamento da venda*)
  lForma_Cheque, lForma_Crediario,
    lForma_Cartao, lForma_dinheiro,
    lForma_Convenio: TStringList;
  (* Dados do ECF *)
  sECF_Serial: string; // numero de serie do ECF registrado no sistema
  sECF_Caixa: string; // numero do caixa do ECF
  sECF_Operador: string; // numero do operadoro do ECF
  iECF_Modelo: integer; // modelo do ECF - 1 Bema / 2 Daruma / 3 Sweda
  sECF_Codigo_Sefa: string; // Cod do ECf na Sefa - Ver sistema VALIDADOR ECF
  sECF_MF_Adicional: string; // Letra indicativa da MF adicional do ECF (geralmente em branco)
  sECF_Tipo: string; // tipo do ecf ECF-IF ou ECF-PDV
  sECF_Marca: string; // Marcao do Ecf
  sECF_Modelo: string; // Modelo do ECF
  sECF_Versao_SB: string; // Versao do Software Basico do ECF
  sECF_Data_SB: string; // data de instalacao do Software basico do ecf
  sECF_Hora_SB: string; // hora de instalacao do software basico
  sECF_Porta: string;
  sECF_usuario: string;
  sECF_Desconto_Iss: string;
  sECF_Diretorio_MFD: string; // diretorio onde serah gravado o arquivo mdf feito por sistema
                                 // externo
  (* Informacoes temporarias do ECF *)
  dData_Sistema: Tdatetime;
  dData_Movimento: Tdatetime;
  hHora_Cupom: TDateTime;
  sNumero_Cupom: string; // numero do coo atual
  sNumero_Venda: string; // Numero do cupom fiscal atual
  sNumero_contador_cupom: string; // numero de contador do cupom fiscal atual
  sCOO, sGNF, sGRG, sCDC, sCER: string; // outros contadores do ecf
  (* Display do Teclado *)
  men: array[0..40] of byte; // armazenar dados para impressao no display do teclado
  (* Dados da empresa *)
  sEmpresa_CNPJ, sEmpresa_Nome, sEmpresa_IE, sEmpresa_IM,
    sEmpresa_Endereco, sempresa_Rua, sempresa_Numero, sempresa_Bairro,
    sEmpresa_Cidade, sempresa_complemento, sempresa_CEP,
    sempresa_telefone, sempresa_fax, sempresa_email,
    sEmpresa_UF, sempresa_Codigo, sempresa_ibge: string;
  (* Dados da Sistema / Empresa Desenvolvedora *)
  sPAF_Nome: string;
  sPAF_Versao: string;
  sPAF_Executavel: string;
  sPAF_Empresa: string;
  sPAF_CNPJ: string;
  sPAF_IE: string;
  sPAF_IM: string;
  sPAF_Endereco: string;
  sPAF_Telefone: string;
  sPAF_Contato: string;
  sPAF_Laudo: string;
  sPAF_MD5: string;
  (* Classificar o tipo de venda do sistema*)
  iTipo_Venda: integer; // 1 Super 2 Prevenda 3 Posto
  (* Configura�oes do Banco de Dados *)
  iTamanho_codigo_balanca: integer; // tamanho do codigo da balaca 4 ou 5
  bTruncar_valor: boolean; // config para nao permitir arredondamento do valor total do item
  bMuda_qtde: boolean; // configuracao para permitir a edicao da qtde
  bMuda_unitario: boolean; // configuracao para permitir a edicao do preco unitario
  bMuda_total: boolean; // config para permitir a edicao do valor total (POSTO DE COMBUSTIVEL)
  bSenha_Cancel_Item: boolean; // exigir senha no cancelamento do item
  bSenha_Cancel_Cupom: boolean; // exigir senha no cancelamento do cupom

  iBal_time: integer; // configuracao de time out da balanca
  sBal_Resposta: string; // resposta da balanca
  rBal_peso: real; // peso lido na balanca

  iTeclado_Modelo: integer; // modelo do teclado
  sTeclado_porta: string; // porta do teclado
  sPasta_foto_produto: string; // pasta onde estao as fotos dos produtos
  sPasta_config: string;
  sArquivo_config: string;
  sPasta_sistema: string;

  bHabLogoMarca: Boolean; // Logo Marca PDV
  sLogoMarca: string; // Caminho Logo marca

  bBusca_foto_produto: boolean; // buscar foto do produto
  iPesquisa_produto: integer; // listar no grid do form produto_consulta os itens filtrados
                                 // 0 - pesquisa feita no form de pesquisa
                                 // 1 - pesquisa feita na venda
                                 // 2 - pesquisa feita no form de consulta de preco



  SDAV_ATUALIZADO: string;

  (* Dados do Consumidor *)
  sCli_Nome, sCli_Endereco, sCli_CPF, sCli_Cidade, sCli_Placa, sCli_Km,
    sCli_uf, sCli_codigo, scli_cep, scli_vendedor: string;

  (* Controles de venda *)
  bVenda_Cartao, bVenda_Crediario,
    bVenda_Cheque, bVenda_dinheiro,
    bVenda_Convenio: boolean; // verificar se foi vendido nas formas de pagamento que exigem
                               // tratamento especial
  bConsulta_crediario: boolean; // verificar se a consulta na tela de clientes eh para o
                                   // crediario;
  iCrediario_prestacao: integer; // armazenar a qtde de prestacoes no crediario
  sCrediario_Nome: string; // nome da forma de pagamento de creadiario

  bCadastra_Cheque, bCadastra_Placa,
    bCadastra_Convenio, bCadastra_Crediario: boolean; // verificar cadastramentos no final da venda

  sTotalizador_Crediario,
    sNome_Totalizador_Crediario: string; // nome do totalizador gravado no ecf para emissao de compro-
                                     // vante nao fiscal no final da venda em crediario.

  sTotalizador_Recebimento,
    sNome_Totalizador_Recebimento: string; // nome do totalizador gravado no ecf para emissao de compro-
                                     // vante nao fiscal no final da venda em crediario.


  sIndice_Sangria, sIndice_Suprimento: string; // numero do indice gravado na impressora da
                                           // sangria e do suprimento
  iComprovente_Crediario,
    iComprovante_Crediario_produto: integer; // Imprimir comprovante nao fiscal do crediairo

  (* T E F *)
  bTEF, // verificar se utiliza TEF
    bTEF_Cheque, // Utiliza Consulta de Cheque por TEF
    bTEF_TecBan: boolean; // Utiliza bandeira TECBAN
  sForma_Temp: string; // armezar temporariamente a forma de pagamento a ser lancada no tef
  // armazenar bandeira escolhida do tef
  Tef_Bandeira_escolhida: Tbandeira_tef;


  (* Outras*)
  bContinua: boolean; // Continuar ou nao um procedimento/funcao
  bSair_campo: boolean; // for�ar a edicao do campo
  bSupervisor_autenticado: boolean; // verifiar se o supervisor foi logado

  (* Usuario e Senha *)
  sFuncao_Senha: string; // determinar a funcao para a tela de senha
  busuario_autenticado: boolean; // verificar se o usuario foi autenticado
  icodigo_Usuario: integer; // codigo do usuario logado
  sNome_Operador: string; // nome do operador
  iNumCaixa: integer; // Identifica��o do caixa

  (* Identificacao do consumidor no inicio da venda --> CAt52 *)
  bIdentifica_consumidor: boolean;
  sConsumidor_CPF, sConsumidor_Nome, sConsumidor_Endereco: string;

  (* variaveis de comunicao com o servidor *)
  sServidor_host, sServidor_Base: string;
  bServidor_Conexao: boolean;

  (* Pre venda *)
  bLanca_pre_venda: boolean; // flag para fazer o fechamento da pre-venda
  sPre_Venda_Numero: string; // armazenar o numero da prevenda para ser impresso no final do cupom
  iPre_venda_codigo, iPre_Venda_Vendedor, iPre_venda_cliente: integer; // codigo do vendedor e do cliente
  rPre_venda_desconto, rPre_venda_acrescimo: real; // acrescimo e desconto no fechamento


  (* OS *)
  bLanca_OS: boolean; // flag para fazer o fechamento da OS
  sOS_Numero: string; // armazenar o numero da prevenda para ser impresso no final do cupom
  iOS_codigo, iOS_Vendedor, iOS_cliente: integer; // codigo do vendedor e do cliente
  rOS_desconto, rOS_acrescimo: real; // acrescimo e desconto no fechamento


  (* Abasteciento *)
  bLanca_Abastecimento: boolean; // flag para fazer o fechamento do abastecimento

  (* Mesas *)
  bLanca_Mesa: boolean; // flag para fazer o fechamento da Mesa
  bLanca_Comanda: boolean; // flag para fazer o fechamento da Comanda/Mesa
  sMesa_Numero: string; // armazenar o numero da mesa para ser impresso no final do cupom
  iMesa_codigo: integer; // codigo da Mesa


  (* dav *)
  sDav_numero: string; // armazenar o numero do dav caso for ser impresso no final do cupom
  iDav_Os_tipo: integer; // tipo de os 0 -> Comum, 1 -> Mecanica

  (* atualizacao de dados *)
  sCarga_data, scarga_hora: string; // data e hora da ultima atualizacao de dados
  Arquivo_ini: TIniFile; // nome do arquivo .ini

  (*flag de retorno da situacao do caixa e da venda*)
  bCaixa_aberto: boolean;
  bativa_venda: boolean;

  // ramo de atividade
  sRamo_Tipo: string;

  // posto - rodape do cupom fiscal
  sPosto_rodape: string;
  iCodigo_abastecimento, ilinha_abastecimento: integer;

  // posto - porta de comunicacao com Concentrador
  iPosto_porta: integer;

  // habilitar mensagem de apuracao de erro no tef
  bHabilita_msg: boolean;

  // verificar se o cupom estah aberto, caso o comando direto da ecf falhe
  bcupom_aberto: boolean;

  // verificar se pede senha ao dar desconto
  isenha_desconto: integer;
  rDesconto_maximo: real;

  // GUIO: Identifica o �ndice de Substitui��o, Isento e N�o Incid�ncia
  // de acordo com o ECF
  sFF: string; // Substituicao
  sNN: string; // N�o Incid�ncia
  sII: string; // Isento

  // GUIO: Verificar se vai pedir para identificar o vendedor no fechamento
  // da venda ou n�o
  bIdentificarVendedor: Boolean;

  // GUIO: Identifica qual o campo ser� mostrado na coluna onde �tem o c�digo
  // de barras na consulta do produto
  // 0 - C�digo de Barras, 1 - Refer�ncia, 2 - Refer�ncia+Tamanho+Cor
  iColunaCOnsultaProdutos: Integer;

  sPortaNaoFiscal, sPortaGaveta: string; // Porta de Impressora e gaveta nao Fiscal
  iQtdLinhasFinal: Integer; // quantidade de linhas no final da nota 40c

implementation

uses modulo, funcoes, venda, senha, unECF, msg_Operador, config_ecf, unTEF,
  TEF_Cancelamento, Orcamento, produto_consulta, Orcamento_Abrir, Math,
  caixa_abertura, menu_fiscal, notafiscal_menu, config_balanca, Config,
  UtiSplash, UFuncoes, GerarNotaFiscalPaulista;


{$R *.dfm}
(*
procedure TfrmPrincipal.Atualizar_servidor();
var atualiza_serv : boolean;
i, iprest : integer;
bachou : boolean;
scod_venda, scod_cupom : string;
rPercentual : real;
begin
  // transmitir os dados para o servidor


    frmMsg_Operador.lb_msg.caption := 'Aguarde! Atualizando Servidor!';
    frmMsg_Operador.show;
    frmMsg_Operador.Refresh;

          atualiza_serv := false;

          try
            if frmmodulo.Conexao_servidor.Connected = false then
            begin
              if application.messagebox('Falha ao conectar ao servidor! Deseja tentar novamente?','Transimiss�o de Dados',mb_yesno+mb_iconerror) = idyes then
              begin
                frmmodulo.Conexao_servidor.Connected := true;
                if frmmodulo.Conexao_servidor.Connected  THEN ATUALIZA_SERV := true;
              end;
            end
            else
              atualiza_serv := true;





            if atualiza_serv then
            begin
              // atualizando as vendas
              query.close;
              query.sql.clear;
              query.sql.add('select * from cupom where ex = 0');
              query.open;
              query.first;
              while not query.eof do
              begin

                scod_cupom := query.fieldbyname('codigo').asstring;
                scod_venda := frmprincipal.codifica('000048',7);

                frmmodulo.query_servidor.close;
                frmmodulo.query_servidor.sql.clear;
                frmmodulo.query_servidor.sql.add('insert into c000048');
                frmmodulo.query_servidor.sql.add('(codigo,data,codcliente,codvendedor,');
                frmmodulo.query_servidor.sql.add('codcaixa,total,subtotal,meio_dinheiro,');
                frmmodulo.query_servidor.sql.add('meio_chequeav, meio_chequeap,meio_cartaocred,');
                frmmodulo.query_servidor.SQL.add('meio_cartaodeb,meio_crediario,meio_convenio, desconto,acrescimo,');
                frmmodulo.query_servidor.sql.add('cupom_fiscal,numero_cupom_fiscal, ECF_SERIAL, situacao)');
                frmmodulo.query_servidor.sql.add('values');
                frmmodulo.query_servidor.sql.add('(:codigo,:datax,:codcliente,:codvendedor,');
                frmmodulo.query_servidor.sql.add(':codcaixa,:TOTAL,:SUBTOTAL,:DINHEIRO,');
                frmmodulo.query_servidor.sql.add(':CHEQUEAV,:CHEQUEAP,:CARTAOCRED,');
                frmmodulo.query_servidor.SQL.add(':CARTAODEB,:CREDIARIO,:CONVENIO,:DESCONTO,:ACRESCIMO,');
                frmmodulo.query_servidor.sql.add(':cupom_fiscal,:numero_cupom_fiscal, :ECF_SERIAL, :situacao)');

                frmmodulo.query_servidor.Params.ParamByName('codigo').asstring    := scod_venda;
                frmmodulo.query_servidor.Params.ParamByName('codcliente').asstring:= Zerar(query.fieldbyname('cod_cliente').asstring,6);
                frmmodulo.query_servidor.Params.ParamByName('codCAIXA').asstring  := zerar(query.fieldbyname('cod_caixa').asstring,6);
                frmmodulo.query_servidor.Params.ParamByName('numero_cupom_fiscal').asstring := query.fieldbyname('numero').asstring;
                frmmodulo.query_servidor.Params.ParamByName('codvendedor').asstring         := zerar(query.fieldbyname('cod_vendedor').asstring,6);
                frmmodulo.query_servidor.Params.ParamByName('cupom_fiscal').asINTEGER       := 1;
                frmmodulo.query_servidor.params.parambyname('ecf_serial').asstring := sECF_Serial;

                frmmodulo.query_servidor.Params.ParamByName('datax').asdatetime   := query.fieldbyname('data').asdatetime;
                frmmodulo.query_servidor.Params.ParamByName('TOTAL').asFLOAT      := query.fieldbyname('valor_total').asfloat;
                frmmodulo.query_servidor.Params.ParamByName('SUBTOTAL').asFLOAT   := query.fieldbyname('valor_produto').asfloat;
                frmmodulo.query_servidor.Params.ParamByName('DESCONTO').asFLOAT   := query.fieldbyname('valor_desconto').asfloat;
                frmmodulo.query_servidor.Params.ParamByName('ACRESCIMO').asFLOAT  := query.fieldbyname('valor_acrescimo').asfloat;

                frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT   := 0;
                frmmodulo.query_servidor.Params.ParamByName('CHEQUEAV').asFLOAT   := 0;
                frmmodulo.query_servidor.Params.ParamByName('CHEQUEAP').asFLOAT   := 0;
                frmmodulo.query_servidor.Params.ParamByName('CARTAODEB').asFLOAT  := 0;
                frmmodulo.query_servidor.Params.ParamByName('CARTAOCRED').asFLOAT := 0;
                frmmodulo.query_servidor.Params.ParamByName('CREDIARIO').asFLOAT  := 0;
                frmmodulo.query_servidor.Params.ParamByName('CONVENIO').asFLOAT   := 0;
                frmmodulo.query_servidor.params.parambyname('situacao').asinteger := query.fieldbyname('cancelado').asinteger + 1;

                qrForma.close;
                qrForma.sql.clear;
                qrForma.sql.add('select * from cupom_forma');
                qrforma.sql.add('where cod_cupom = '''+scod_cupom+'''');
                qrforma.Open;
                qrforma.first;
                bachou := false;
                while not qrforma.eof do
                begin
                  if not bachou then
                  begin
                    for i := 0 to lForma_dinheiro.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_dinheiro[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('DINHEIRO').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_cheque.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_cheque[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('chequeav').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('chequeav').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_cartao.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_cartao[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('cartaocred').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('cartaocred').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_crediario.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_crediario[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('crediario').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('crediario').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  if not bachou then
                  begin
                    for i := 0 to lForma_convenio.Count - 1 do
                    begin
                      if AnsiUpperCase(qrforma.fieldbyname('forma').asstring) =
                         AnsiUpperCase(lForma_convenio[i]) then
                      begin
                        frmmodulo.query_servidor.Params.ParamByName('convenio').asFLOAT :=
                          frmmodulo.query_servidor.Params.ParamByName('convenio').asFLOAT+
                          qrforma.fieldbyname('valor').asfloat;
                          bachou := true;
                          break;
                      end;
                    end;
                  end;
                  qrforma.next;
                end;
                frmmodulo.query_servidor.ExecSQL;


                if query.fieldbyname('cancelado').asinteger = 0 then
                begin
                  // contas a receber
                  query2.close;
                  query2.sql.clear;
                  query2.sql.add('select * from cupom_crediario');
                  query2.sql.add('where cod_cupom = '''+scod_cupom+'''');
                  query2.open;
                  query2.first;
                  iprest := 1;
                  while not query2.eof do
                  begin
                    frmmodulo.query_servidor.Close;
                    frmmodulo.query_servidor.SQL.clear;
                    frmmodulo.query_servidor.SQL.add('insert into c000049');
                    frmmodulo.query_servidor.SQL.add('(codigo,codvenda,codcliente,codvendedor,codcaixa,data_emissao,data_vencimento,valor_original,');
                    frmmodulo.query_servidor.SQL.add('valor_atual,documento,tipo,situacao,filtro)');
                    frmmodulo.query_servidor.SQL.add('values');
                    frmmodulo.query_servidor.SQL.add('(:codigo,:codvenda,:codcliente,:codvendedor,:codcaixa,:data_emissao,:data_vencimento,:valor_original,');
                    frmmodulo.query_servidor.SQL.add(':valor_atual,:documento,:tipo,:situacao,:filtro)');

                    frmmodulo.query_servidor.Params.ParamByName('codigo').asstring := Scod_venda+'/'+zerar(inttostr(iprest),2);
                    frmmodulo.query_servidor.Params.ParamByName('codvenda').asstring := scod_venda;
                    frmmodulo.query_servidor.Params.ParamByName('codcliente').asstring := zerar(query2.fieldbyname('cod_cliente').asstring,6);
                    frmmodulo.query_servidor.Params.ParamByName('codvendedor').asstring := zerar(query.FIELDBYNAME('cod_vendedor').ASstring,6);
                    frmmodulo.query_servidor.Params.ParamByName('codcaixa').asstring := Zerar(IntToStr(icodigo_Usuario),6);
                    frmmodulo.query_servidor.Params.ParamByName('documento').asstring := scod_venda+'/'+zerar(inttostr(iprest),2);
                    frmmodulo.query_servidor.Params.ParamByName('tipo').asstring := COPY(query2.fieldbyname('descricao').asstring,1,20);
                    frmmodulo.query_servidor.Params.ParamByName('filtro').asinteger := 0;
                    frmmodulo.query_servidor.Params.ParamByName('situacao').asinteger := 1;
                    frmmodulo.query_servidor.Params.ParamByName('data_vencimento').asdatetime := query2.FIELDBYNAME('vencimento').ASDATETIME;
                    frmmodulo.query_servidor.Params.ParamByName('data_emissao').asdatetime := query.fieldbyname('data').asfloat;
                    frmmodulo.query_servidor.PARAMS.ParamByName('valor_atual').ASFLOAT := query2.fieldbyname('valor').asfloat;
                    frmmodulo.query_servidor.PARAMS.ParamByName('valor_original').ASFLOAT := query2.fieldbyname('valor').asfloat;
                    frmmodulo.query_servidor.ExecSQL;
                    inc(iprest);
                    query2.next;
                  END;
                end;
                // produtos
                query3.close;
                query3.sql.clear;
                query3.sql.add('select * from CUPOM_ITEM');
                query3.sql.add('where cod_cupom = '''+scod_cupom+'''');
                query3.sql.add('and cancelado = 0');
                query3.open;
                query3.first;
                while not query3.eof do
                begin
                  frmmodulo.query_servidor.CLOSE;
                  frmmodulo.query_servidor.SQL.CLEAR;
                  frmmodulo.query_servidor.SQL.Add('insert into c000032');
                  frmmodulo.query_servidor.SQL.add('(codigo,codnota,serial,numeronota,');
                  frmmodulo.query_servidor.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,');
                  frmmodulo.query_servidor.SQL.add('total,unidade,aliquota,');
                  frmmodulo.query_servidor.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
                  frmmodulo.query_servidor.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
                  frmmodulo.query_servidor.sql.add('base_calculo, valor_icms)');
                  frmmodulo.query_servidor.SQL.add('values');

                  frmmodulo.query_servidor.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
                  frmmodulo.query_servidor.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,');
                  frmmodulo.query_servidor.SQL.add(':total,:unidade,:aliquota,');
                  frmmodulo.query_servidor.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
                  frmmodulo.query_servidor.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
                  frmmodulo.query_servidor.sql.add(':base_calculo, :valor_icms)');

                  frmmodulo.query_servidor.Params.ParamByName('CODIGO').ASSTRING      := frmPrincipal.codifica('000032',10);
                  frmmodulo.query_servidor.Params.ParamByName('CODNOTA').ASSTRING     := scod_venda;
                  frmmodulo.query_servidor.Params.ParamByName('SERIAL').ASSTRING      := '';
                  frmmodulo.query_servidor.Params.ParamByName('NUMERONOTA').ASSTRING  := query.fieldbyname('numero').asstring;
                  frmmodulo.query_servidor.Params.ParamByName('CODPRODUTO').ASSTRING  := zerar(query3.fieldbyname('cod_produto').asstring,6);
                  frmmodulo.query_servidor.Params.ParamByName('CODCLIENTE').ASSTRING  := zerar(query.FIELDBYNAME('COD_CLIENTE').ASSTRING,6);
                  frmmodulo.query_servidor.Params.ParamByName('CODVENDEDOR').ASSTRING := zerar(query.FIELDBYNAME('COD_VENDEDOR').ASSTRING,6);

                  frmmodulo.query_servidor.Params.ParamByName('QTDE').ASFLOAT := query3.FIELDBYNAME('QTDE').ASFLOAT;
                  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -query3.FIELDBYNAME('QTDE').ASFLOAT;
                  frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA').ASFLOAT := query3.FIELDBYNAME('ALIQUOTA').ASFLOAT;

                  frmmodulo.query_servidor.Params.ParamByName('UNIDADE').ASSTRING  := query3.FIELDBYNAME('UNIDADE').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('CST').ASSTRING  := query3.FIELDBYNAME('CST').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO').ASINTEGER  := 2;
                  frmmodulo.query_servidor.Params.ParamByName('DATA').ASDATETIME  := query.FIELDBYNAME('DATA').ASDATETIME;
                  frmmodulo.query_servidor.Params.ParamByName('ECF_CAIXA').ASSTRING  := sECF_Caixa;
                  frmmodulo.query_servidor.Params.ParamByName('ECF_SERIE').ASSTRING  := query.FIELDBYNAME('ECF').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := query.FIELDBYNAME('NUMERO').ASSTRING;
                  frmmodulo.query_servidor.Params.ParamByName('CUPOM_ITEM').ASSTRING  := zerar(query3.FIELDBYNAME('ITEM').ASSTRING,3);
                  frmmodulo.query_servidor.Params.ParamByName('CUPOM_MODELO').ASSTRING  := '2D';

                  if query.fieldbyname('valor_desconto').asfloat > 0 then
                  begin
                    rPercentual := query.fieldbyname('valor_desconto').asfloat /query.fieldbyname('valor_produto').asfloat;

                    frmmodulo.query_servidor.params.parambyname('desconto').asfloat := query3.fieldbyname('valor_desconto').asfloat +
                                                                                       (query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);
                    frmmodulo.query_servidor.Params.ParamByName('UNITARIO').ASFLOAT := query3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;

                    frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT -
                                                                                    (query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * rPercentual);

                    if (query3.fieldbyname('aliquota').asfloat > 0) and
                       (query3.fieldbyname('cst').asstring = '000') then
                    begin
                      frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT;
                      frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT* query3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                    end
                    else
                    begin
                      frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                      frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                    end;
                  end
                  else
                  begin
                    frmmodulo.query_servidor.params.parambyname('desconto').asfloat := query3.fieldbyname('valor_desconto').asfloat;
                    frmmodulo.query_servidor.Params.ParamByName('UNITARIO').ASFLOAT := query3.FIELDBYNAME('VALOR_UNITARIO').ASFLOAT;
                    frmmodulo.query_servidor.Params.ParamByName('TOTAL').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                    if (query3.fieldbyname('aliquota').asfloat > 0) and
                       (query3.fieldbyname('cst').asstring = '000') then
                    begin
                      frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT;
                      frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := query3.FIELDBYNAME('VALOR_TOTAL').ASFLOAT * query3.FIELDBYNAME('aliquota').ASFLOAT / 100;
                    end
                    else
                    begin
                      frmmodulo.query_servidor.Params.ParamByName('base_calculo').ASFLOAT := 0;
                      frmmodulo.query_servidor.Params.ParamByName('valor_icms').ASFLOAT := 0;
                    end;
                  end;
                  frmmodulo.query_servidor.ExecSQL;
                  query3.next;
                END;


                query.Next;
              end;

              try
              // Atualizacao das reducoes z

              frmmodulo.query.close;
              frmmodulo.query.sql.clear;
              frmmodulo.query.sql.add('select * from config');
              frmmodulo.query.open;


              query.close;
              query.sql.clear;
              query.sql.add('select * from reducaoz where ex = 0');
              query.open;
              query.first;
              while not query.eof do
              begin
                  query3.close;
                  query3.sql.clear;
                  query3.sql.add('select * from reducaoz_total_parcial');
                  query3.sql.add('where cod_reducaoz = '''+query.fieldbyname('codigo').asstring+'''');
                  query3.open;

                  frmmodulo.query_servidor.CLOSE;
                  frmmodulo.query_servidor.SQL.CLEAR;
                  frmmodulo.query_servidor.sql.add('insert into SINTEGRA_REG60');
                  frmmodulo.query_servidor.SQL.Add('(id, MOVIMENTO,');
                  frmmodulo.query_servidor.SQL.Add('CODIGO_EMPRESA,');
                  frmmodulo.query_servidor.SQL.Add('CNPJ,');
                  frmmodulo.query_servidor.SQL.Add('IE,');
                  frmmodulo.query_servidor.SQL.Add('UF,');
                  frmmodulo.query_servidor.SQL.Add('DATA_EMISSAO,');
                  frmmodulo.query_servidor.SQL.Add('NRO_SERIE_EQP,');
                  frmmodulo.query_servidor.SQL.Add('NRO_ORDEM_EQP,');
                  frmmodulo.query_servidor.SQL.Add('MODELO_DOC,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_INICIO,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_FIM,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_Z,');
                  frmmodulo.query_servidor.SQL.Add('CONTADOR_REINICIO,');
                  frmmodulo.query_servidor.SQL.Add('VALOR_VENDA_BRUTA,');
                  frmmodulo.query_servidor.SQL.Add('VALOR_TOTAL_GERAL,');
                  frmmodulo.query_servidor.SQL.Add('CANCELAMENTO,');
                  frmmodulo.query_servidor.SQL.Add('DESCONTO,');
                  frmmodulo.query_servidor.SQL.Add('ISSQN,');
                  frmmodulo.query_servidor.SQL.Add('SUBSTITUICAO_TRIBUTARIA,');
                  frmmodulo.query_servidor.SQL.Add('ISENTO,');
                  frmmodulo.query_servidor.SQL.Add('NAO_INCIDENCIA,');

                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA01,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA02,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA03,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA04,');
                  frmmodulo.query_servidor.SQL.Add('ALIQUOTA05,');
                  frmmodulo.query_servidor.SQL.Add('BASE01,');
                  frmmodulo.query_servidor.SQL.Add('BASE02,');
                  frmmodulo.query_servidor.SQL.Add('BASE03,');
                  frmmodulo.query_servidor.SQL.Add('BASE04,');
                  frmmodulo.query_servidor.SQL.Add('BASE05,');
                  frmmodulo.query_servidor.SQL.Add('VALOR_VENDA_LIQUIDA,');
                  frmmodulo.query_servidor.SQL.Add('NRO_CONTADOR_CANCELAMENTO)');

                  frmmodulo.query_servidor.sql.add('values');

                  frmmodulo.query_servidor.SQL.Add('(:id, :MOVIMENTO,');
                  frmmodulo.query_servidor.SQL.Add(':CODIGO_EMPRESA,');
                  frmmodulo.query_servidor.SQL.Add(':CNPJ,');
                  frmmodulo.query_servidor.SQL.Add(':IE,');
                  frmmodulo.query_servidor.SQL.Add(':UF,');
                  frmmodulo.query_servidor.SQL.Add(':DATA_EMISSAO,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_SERIE_EQP,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_ORDEM_EQP,');
                  frmmodulo.query_servidor.SQL.Add(':MODELO_DOC,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_INICIO,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_FIM,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_Z,');
                  frmmodulo.query_servidor.SQL.Add(':CONTADOR_REINICIO,');
                  frmmodulo.query_servidor.SQL.Add(':VALOR_VENDA_BRUTA,');
                  frmmodulo.query_servidor.SQL.Add(':VALOR_TOTAL_GERAL,');
                  frmmodulo.query_servidor.SQL.Add(':CANCELAMENTO,');
                  frmmodulo.query_servidor.SQL.Add(':DESCONTO,');
                  frmmodulo.query_servidor.SQL.Add(':ISSQN,');
                  frmmodulo.query_servidor.SQL.Add(':SUBSTITUICAO_TRIBUTARIA,');
                  frmmodulo.query_servidor.SQL.Add(':ISENTO,');
                  frmmodulo.query_servidor.SQL.Add(':NAO_INCIDENCIA,');

                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA01,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA02,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA03,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA04,');
                  frmmodulo.query_servidor.SQL.Add(':ALIQUOTA05,');
                  frmmodulo.query_servidor.SQL.Add(':BASE01,');
                  frmmodulo.query_servidor.SQL.Add(':BASE02,');
                  frmmodulo.query_servidor.SQL.Add(':BASE03,');
                  frmmodulo.query_servidor.SQL.Add(':BASE04,');
                  frmmodulo.query_servidor.SQL.Add(':BASE05,');
                  frmmodulo.query_servidor.SQL.Add(':VALOR_VENDA_LIQUIDA,');
                  frmmodulo.query_servidor.SQL.Add(':NRO_CONTADOR_CANCELAMENTO)');



                  frmmodulo.query_servidor.Params.ParamByName('id').ASSTRING      := frmPrincipal.codifica('000032',6);
                  frmmodulo.query_servidor.Params.ParamByName('MOVIMENTO').asinteger := 1;
                  frmmodulo.query_servidor.Params.ParamByName('CODIGO_EMPRESA').asinteger := 1;
                  frmmodulo.query_servidor.Params.ParamByName('CNPJ').asstring := sEmpresa_CNPJ;
                  frmmodulo.query_servidor.Params.ParamByName('IE').asstring := sEmpresa_IE;
                  frmmodulo.query_servidor.Params.ParamByName('UF').asstring := sempresa_UF;
                  frmmodulo.query_servidor.Params.ParamByName('DATA_EMISSAO').asdatetime := query.fieldbyname('data_movimento').asdatetime;
                  frmmodulo.query_servidor.Params.ParamByName('NRO_SERIE_EQP').asstring := query.fieldbyname('ecf').asstring;
                  frmmodulo.query_servidor.Params.ParamByName('NRO_ORDEM_EQP').asinteger := strtoint(sECF_Caixa);
                  frmmodulo.query_servidor.Params.ParamByName('MODELO_DOC').asstring := '2D';

                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_INICIO').asinteger := strtoint(frmmodulo.query.fieldbyname('CAIXA_COO_INICIAL').asstring);
                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_FIM').asInteger := strtoint(query.fieldbyname('coo').asstring);
                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_Z').asinteger := strtoint(query.fieldbyname('crz').asstring);
                  frmmodulo.query_servidor.Params.ParamByName('CONTADOR_REINICIO').asinteger := strtoint(query.fieldbyname('cro').asstring);

                  frmmodulo.query_servidor.Params.ParamByName('VALOR_VENDA_BRUTA').asfloat :=  query.fieldbyname('venda_bruta').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('VALOR_TOTAL_GERAL').asfloat := query.fieldbyname('totalizador_geral').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('CANCELAMENTO').asfloat := query.fieldbyname('cancelamento_icms').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('DESCONTO').asfloat := query.fieldbyname('desconto_icms').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('ISSQN').asfloat := query.fieldbyname('total_iss').asfloat;

                  I := 1;
                  query3.first;
                  while not query3.eof do
                  begin
                    // substituicao tributaria
                    if query3.FieldByName('totalizador').asstring = 'F1' then
                       frmmodulo.query_servidor.Params.ParamByName('SUBSTITUICAO_TRIBUTARIA').asfloat :=
                         query3.fieldbyname('valor').asfloat;

                    // isento
                    if query3.FieldByName('totalizador').asstring = 'I1' then
                       frmmodulo.query_servidor.Params.ParamByName('ISENTO').asfloat :=
                         query3.fieldbyname('valor').asfloat;

                    // NAO TRIBUTADO
                    if query3.FieldByName('totalizador').asstring = 'N1' then
                       frmmodulo.query_servidor.Params.ParamByName('NAO_INCIDENCIA').asfloat :=
                         query3.fieldbyname('valor').asfloat;

                    // TRIBUTADOS
                    IF (COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,6,2) = '00') and
                       (query3.fieldbyname('valor').asfloat > 0) THEN
                    BEGIN
                      CASE I OF
                      1 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA01').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE01').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      2 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA02').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE02').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      3 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA03').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE03').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      4 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA04').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE04').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      5 : BEGIN
                            frmmodulo.query_servidor.Params.ParamByName('ALIQUOTA05').asfloat :=
                              strtofloat(COPY(QUERY3.FieldByName('TOTALIZADOR').ASSTRING,4,4))/100;
                            frmmodulo.query_servidor.Params.ParamByName('BASE05').asfloat :=
                              query3.fieldbyname('valor').asfloat;
                              inc(i);
                          END;
                      end;
                    END;
                    query3.next;
                  end;
                  frmmodulo.query_servidor.Params.ParamByName('VALOR_VENDA_LIQUIDA').asfloat := query.fieldbyname('venda_liquida').asfloat;
                  frmmodulo.query_servidor.Params.ParamByName('NRO_CONTADOR_CANCELAMENTO').asfloat := 0;
                  frmmodulo.query_servidor.execsql;
                query.next;
              end;



              query.close;
              query.sql.clear;
              query.sql.add('update reducaoz set ex = 1 where ex = 0');
              query.ExecSQL;


            except

            end;






{
              query.close;
              query.sql.clear;
              query.sql.add('select * from c000044');
              query.open;
              query.first;
              while not query.eof do
              begin
                frmmodulo.query_servidor.close;
                frmmodulo.query_servidor.sql.clear;
                frmmodulo.query_servidor.sql.add('insert into c000044');
                frmmodulo.query_servidor.sql.add('(codigo,codcaixa,codoperador,data,entrada,SAIDA,valor,codconta,movimento,historico)');
                frmmodulo.query_servidor.sql.add('values');
                frmmodulo.query_servidor.sql.add('(:codigo,:codcaixa,:codoperador,:data,:entrada,:SAIDA,:valor,:codconta,:movimento,:historico)');
                frmmodulo.query_servidor.params.ParamByName('codigo').asstring := query.fieldbyname('codigo').asstring;
                frmmodulo.query_servidor.params.ParamByName('codcaixa').asstring := query.fieldbyname('codcaixa').asstring;
                frmmodulo.query_servidor.params.ParamByName('codoperador').asstring := query.fieldbyname('codoperador').asstring;
                frmmodulo.query_servidor.params.ParamByName('data').asdatetime := query.fieldbyname('data').asdatetime;
                frmmodulo.query_servidor.params.ParamByName('codconta').asstring := query.fieldbyname('codconta').asstring;
                frmmodulo.query_servidor.params.ParamByName('historico').asstring := query.fieldbyname('historico').asstring;
                frmmodulo.query_servidor.params.ParamByName('MOVIMENTO').asINTEGER := query.fieldbyname('MOVIMENTO').asINTEGER;
                frmmodulo.query_servidor.params.ParamByName('ENTRADA').asFLOAT := query.fieldbyname('ENTRADA').asFLOAT;
                frmmodulo.query_servidor.params.ParamByName('SAIDA').asFLOAT := query.fieldbyname('SAIDA').asFLOAT;
                frmmodulo.query_servidor.params.ParamByName('VALOR').asFLOAT := query.fieldbyname('VALOR').asFLOAT;
                frmmodulo.query_servidor.ExecSQL;
                query.NEXT;

              END;

              query.close;
              query.sql.clear;
              query.sql.add('select * from c000040');
              query.open;
              query.first;
              while not query.eof do
              begin
                frmmodulo.query_servidor.close;
                frmmodulo.query_servidor.sql.clear;
                frmmodulo.query_servidor.sql.add('insert into c000040');
                frmmodulo.query_servidor.SQL.ADD('(CODIGO,EMISSAO,VENCIMENTO,SITUACAO, CODCLIENTE,TITULAR,CODBANCO, AGENCIA,');
                frmmodulo.query_servidor.SQL.ADD(' CONTA,DATA_CONTA,NUMERO,VALOR,DESCONTO,LIQUIDO,CODVENDA,OBS1,OBS2,DESTINO, CODCONTA_CORRENTE,CODCONTA)');
                frmmodulo.query_servidor.SQL.ADD('VALUES');
                frmmodulo.query_servidor.SQL.ADD('(:CODIGO,:EMISSAO,:VENCIMENTO,:SITUACAO, :CODCLIENTE,:TITULAR,:CODBANCO, :AGENCIA,');
                frmmodulo.query_servidor.SQL.ADD(' :CONTA,:DATA_CONTA,:NUMERO,:VALOR,:DESCONTO,:LIQUIDO,:CODVENDA,:OBS1,:OBS2,:DESTINO, :CODCONTA_CORRENTE,:CODCONTA)');
                frmmodulo.query_servidor.PARAMS.ParamByName('CODIGO').ASSTRING := query.FIELDBYNAME('CODIGO').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('EMISSAO').ASDATETIME := query.FIELDBYNAME('EMISSAO').ASDATETIME;
                frmmodulo.query_servidor.PARAMS.ParamByName('VENCIMENTO').ASDATETIME := query.FIELDBYNAME('VENCIMENTO').ASDATETIME;
                frmmodulo.query_servidor.PARAMS.ParamByName('DATA_CONTA').ASDATETIME := query.FIELDBYNAME('DATA_CONTA').ASDATETIME;
                frmmodulo.query_servidor.PARAMS.ParamByName('SITUACAO').ASINTEGER := query.FIELDBYNAME('SITUACAO').ASINTEGER;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODCLIENTE').ASSTRING := query.FIELDBYNAME('CODCLIENTE').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('TITULAR').ASSTRING := query.FIELDBYNAME('TITULAR').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODBANCO').ASSTRING := query.FIELDBYNAME('CODBANCO').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('AGENCIA').ASSTRING := query.FIELDBYNAME('AGENCIA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CONTA').ASSTRING := query.FIELDBYNAME('CONTA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODVENDA').ASSTRING := query.FIELDBYNAME('CODVENDA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('OBS1').ASSTRING := query.FIELDBYNAME('OBS1').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('OBS2').ASSTRING := query.FIELDBYNAME('OBS2').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('DESTINO').ASSTRING := query.FIELDBYNAME('DESTINO').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODCONTA_CORRENTE').ASSTRING := query.FIELDBYNAME('CODCONTA_CORRENTE').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('CODCONTA').ASSTRING := query.FIELDBYNAME('CODCONTA').ASSTRING;
                frmmodulo.query_servidor.PARAMS.ParamByName('valor').asfloat := query.FIELDBYNAME('valor').asfloat;
                frmmodulo.query_servidor.PARAMS.ParamByName('desconto').asfloat := query.FIELDBYNAME('desconto').asfloat;
                frmmodulo.query_servidor.PARAMS.ParamByName('liquido').asfloat := query.FIELDBYNAME('liquido').asfloat;
                frmmodulo.query_servidor.ExecSQL;
                query.NEXT;
              END;




              //********* APAGAR OS DADOS LOCAIS


              }


              query.close;
              query.sql.clear;
              query.sql.add('update cupom set ex = 1');
              query.ExecSQL;





            end; // atualiza_serv


          except
            APPLICATION.MESSAGEBOX('Erro na atualiza��o do Servidor!','Erro',mb_ok+mb_iconerror);
          end;
          ///


    frmMsg_Operador.hide;




  //
end;


*)

// -------------------------------------------------------------------------- //

function tfrmprincipal.codifica(tabela: string; qtde_digitos: integer): string;
begin
  frmmodulo.qrmestre.close;
  frmmodulo.qrmestre.sql.Clear;
  frmmodulo.qrmestre.sql.add('select * from c000000 where codigo = ''' + tabela + '''');
  frmmodulo.qrMestre.Open;
  if frmmodulo.qrmestre.RecNo = 1 then
  begin
    if frmmodulo.qrmestre.FieldByName('sequencia').asinteger < 1 then
    begin
      result := '0000000001';
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qrMestre.Post;

    end
    else
    begin
      result := zerar(inttostr(frmmodulo.qrMestre.fieldbyname('sequencia').asinteger), qtde_digitos);
      frmmodulo.qrMestre.Edit;
      frmmodulo.qrMestre.fieldbyname('sequencia').asinteger := frmmodulo.qrMestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qrMestre.Post;
    end;
  end
  else
  begin
    Showmessage('N�o foi poss�vel concluir com a opera��o!' + #13 + 'Erro: C�digo de sequ�ncia n�o encontrado na tabela de c�digos.');
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if Application.MessageBox('Confirma o encerramento do sistema?', 'Aviso',
    mb_yesno + MB_ICONWARNING) = idNo then
  begin
    abort;
  end
  else
  begin
  // liberar array da memoria
    Finalize(men);
    Finalize(tbTotalizador);

  // liberar sistema da memoria
    action := cafree;
  end;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var Registro: TRegistry;
begin
  // Configura��es para gaveta e tipo de impressora - nao remover o extractfilepath
  iImpressora := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'IMPRESSORA', 'TIPO', '0'));
  iGaveta := StrToInt(frmPrincipal.LerINi(ExtractFilePath(Application.ExeName) + 'CFG\cfg.ini', 'GAVETA', 'LOCAL', '0'));


  case iImpressora of
    0: begin // Sem Impressora
        TipoImpressora := SemImpressora;
      end;
    1: begin // Nao Fiscal
        TipoImpressora := NaoFiscal;
      end;
    2: begin // Fiscal
        TipoImpressora := Fiscal;
      end;

  end;

  case iGaveta of
    0: begin // Sem Gaveta
        GavetaImpressora := SemGaveta;
      end;
    1: begin // Gaveta Impressora Nao Fiscal
        GavetaImpressora := GavImpNaoFiscal;
      end;
    2: begin // Gaveta Impressora Fiscal
        GavetaImpressora := GavImpFiscal;
      end;

  end;


  Top := 0;
  Left := 0;

//  bHabilita_msg := true;

  try
    AcertaPadraoData;
  except
  end;
  // Abrindo Registro do Windows para buscar configuracoes
  Registro := TRegistry.Create;
  Registro.RootKey := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE', false) then
  begin
    if Registro.OpenKey('S7', false) then
    begin
      if Registro.openkey('PDV', false) then
      begin
         (************** BANCO DE DADOS *************)
        if Registro.OpenKey('Dados', false) then
        begin
            // criando o forumulario de dados
          frmModulo := TfrmModulo.create(self);

          try
            frmModulo.conexao.Connected := false;
            frmModulo.conexao.Database := Registro.ReadString('Local_Base');
            frmModulo.conexao.Connected := true;

            try
              if Registro.ReadString('Servidor_Ativo') = 'SIM' then
              begin
                frmModulo.Conexao_Servidor.Connected := false;
                frmModulo.Conexao_Servidor.Server := Registro.ReadString('Servidor_Host');
                frmModulo.Conexao_Servidor.Database := Registro.ReadString('Servidor_Base');
                frmModulo.Conexao_Servidor.Connected := true;
                bServidor_Conexao := true;

              end
              else
              begin
                bServidor_Conexao := false;
              end;
            except
              bServidor_Conexao := false;
            end;
          except
            application.messagebox(pansichar('N�o foi poss�vel conectar ao banco de dados local!' + #13 +
              'Caminho: ' + Registro.ReadString('Local_Base') + #13 +
              ' O sistema ser� finalizado!'), 'Erro', mb_ok + mb_iconerror);
            Application.Terminate;
            exit;
          end;


        end
        else
        begin
          application.messagebox('Houve falha na leitura do resgistro do banco de dados!' +
            ' O sistema ser� finalizado!', 'Erro', mb_ok + mb_iconerror);
          Application.Terminate;
          exit;
        end;
        Registro.CloseKey;
        Registro.OpenKey('SOFTWARE', false);
        Registro.OpenKey('S7', false);
        Registro.OpenKey('PDV', false);
         (*************** BALANCA ******************)
        if Registro.OpenKey('Balanca', false) then
        begin
          frmModulo.Balanca.Desativar;
           // Modelos --> 0 --> Nenhum , 1 --> Filizola, 2 --> Toledo
          if strtoint(Registro.ReadString('Modelo')) <> 0 then
          begin
            frmmodulo.balanca.Modelo := TACBrBALModelo(strtoint(Registro.ReadString('Modelo')));
             //frmmodulo.balanca.Device.HandShake :=
               //TACBrHandShake( strtoint(Registro.ReadString('Handshaking')) );
            // frmmodulo.balanca.Device.Parity :=
               //TACBrSerialParity( strtoint(Registro.ReadString('Parity')) );
            // frmmodulo.balanca.Device.Stop :=
              // TACBrSerialStop( strtoint(Registro.ReadString('Stopbits')) );
            frmmodulo.balanca.Device.Porta := Registro.ReadString('Porta');
             //frmmodulo.balanca.Device.Data := strtoint(Registro.ReadString('Databits'));
             //frmmodulo.balanca.Device.Baud :=  strtoint(Registro.ReadString('Baudrate'));
            ibal_time := strtoint(Registro.ReadString('Timeout'));
          end;
        end
        else
        begin
          application.messagebox('Houve falha na leitura do registro da Balan�a!' +
            ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
        end;
        Registro.CloseKey;
         (************* Final balanca ************)

         (********* TECLADO *************)
        Registro.OpenKey('SOFTWARE', false);
        Registro.OpenKey('S7', false);
        Registro.OpenKey('PDV', false);
        if Registro.OpenKey('Teclado', false) then
        begin
          iteclado_modelo := strtoint(Registro.ReadString('Modelo'));
          steclado_porta := Registro.ReadString('Porta');
        end
        else
        begin
          application.messagebox('Houve falha na leitura do registro do teclado! ' +
            'Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
        end;
        Registro.CloseKey;
         (********* Final do TECLADO *************)

         (********* ECF *************)
        Registro.OpenKey('SOFTWARE', false);
        Registro.OpenKey('S7', false);
        Registro.OpenKey('PDV', false);
        if Registro.OpenKey('ECF', false) then
        begin
          sECF_Porta := Registro.ReadString('Porta');
        end
        else
        begin
          application.messagebox('Houve falha na leitura do registro do ECF! ' +
            'Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
        end;
        Registro.CloseKey;
      end
      else
      begin
        application.messagebox('Houve falha na leitura do registro do PDV!' +
          ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
      end;
    end
    else
    begin
      application.messagebox('Houve falha na leitura do registro de configura��es!' +
        ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
      application.Terminate;
    end;
  end
  else
  begin
    application.messagebox('Houve falha na leitura do registro de configura��es!' +
      ' Favor contactar o suporte!', 'Erro', mb_ok + mb_iconerror);
    application.Terminate;
  end;

  // abrir arquivo .ini


  // Buscar dados na tabela PAF


  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('.\cfg\Paf.ini');

  //[PAF]
  //NOME
  sPAF_Nome := Cript('D', Arquivo_ini.ReadString('D37DEB63', 'C84EC847C0', ''));
  //VERSAO
  sPAF_Versao := Cript('D', Arquivo_ini.ReadString('D37DEB63', '49C659FA0271F3', ''));
  //MD5
  sPAF_MD5 := Cript('D', Arquivo_ini.ReadString('D37DEB63', '2329383C', ''));
  //LAUDO
  sPAF_LAUDO := Cript('D', Arquivo_ini.ReadString('D37DEB63', '2329383D', ''));

  pStatus.Panels[1].Text := sPAF_Nome + ' - ' + sPAF_Versao;
  pStatus.Panels[2].Text := 'Laudo PAF-ECF: ' + sPAF_Laudo;

  //EXECUTAVEL
  sPaf_Executavel := Cript('D', Arquivo_ini.ReadString('D37DEB63', '75E369FF0F569991D64CD1', ''));


  //[EMPRESA DESENVOLVEDORA]
  //NOME
  sPAF_Empresa := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '61F613313A', ''));
  //CNPJ
  sPAF_CNPJ := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '031F38D968', ''));
  //IE
  sPAF_IE := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '75E778', ''));
  //IM
  sPAF_IM := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8696B6', ''));
  //TELEFONE
  sPAF_Telefone := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8FBA55F07AF271F40B', ''));
  //ENDERECO
  SPAF_Endereco := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8FBA55F07AF271F40c', ''));
  //CONTATO
  sPAF_Contato := Cript('D', Arquivo_ini.ReadString('F764E464FA72F673A2B6B253DE145AE870948F9DA2B9B1', '8FBA55F07AF271F40D', ''));


  //[ECF]
  //MARCA
  sECF_Marca := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '13392FD058AB', ''));
  // COD DO ECF
  iECF_Modelo := strtoint(Cript('D', Arquivo_ini.ReadString('B9A7BF57', '13392FD058AC', '0')));
  //MODELO
  sECF_Modelo := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'A4A8A2B7B0CE2D', ''));
  //TIPO
  sECF_Tipo := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '6E9BB153EE', ''));
  //SERIAL
  sECF_Serial := Trim(TrimLeft(TrimRight(Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'D875EF1310639C', '')))));
  //NUMERO
  sECF_Caixa := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '7299BB58D11656', ''));
  //CNIF
  sECF_Codigo_Sefa := Cript('D', Arquivo_ini.ReadString('B9A7BF57', '5CC640D853', ''));
  //USUARIO
  sECF_Usuario := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'B655FD020F53AFB5', ''));
  //PERMITE_ISSQN
  sECF_Desconto_Iss := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'B058C84ADB1758D607001A38CF27', ''));
  //DIRETORIO_:= Cript('D',Arquivo_FISCAL
  sECF_Diretorio_MFD := Cript('D', Arquivo_ini.ReadString('B9A7BF57', 'BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C', ''));


  //[USUARIO]

  //NOME
  sEmpresa_Nome := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '5EF5100C1D', ''));
  //CNPJ
  sEmpresa_CNPJ := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', 'C855F6162C', ''));
  //IE
  sEmpresa_IE := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '292B25', ''));
  //IM
  sEmpresa_IM := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7D', ''));
  //ENDERECO
  sEmpresa_Endereco := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7E', '')) + ' ' +
  {BAIRRO}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7F', '')) + ' ' +
  {CIDADE}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7G', '')) + ' ' +
  {UF}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7H', '')) + ' ' +
  {CEP}Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7I', ''));
  // UF
  sEmpresa_UF := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA7H', ''));

  // TIPO DE ATIVIDADE
  // 1 NORMAL, 2 AUTOPECAS , 3 POSTO , 4 RESTAURANTE
  sRamo_Tipo := Cript('D', Arquivo_ini.ReadString('4CF8193FCC2D45DF', '3ADA80', ''));

  //[OUTRAS OPCOES]
  //PRE-VENDA
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6', 'D67E859B84E81D2055C6', '')) = 'ATIVADO' then
    bPermite_Prevenda := true
  else
    bPermite_Prevenda := false;

  //DAV_ECF
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6', '78E57299B4CB3CC9', '')) = 'ATIVADO' then
    bPermite_DAV_ECF := true
  else
    bPermite_DAV_ECF := false;

  //DAV_NF
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6', '6AF76C93BE3FB6', '')) = 'ATIVADO' then
    bPermite_DAV_NF := true
  else
    bPermite_DAV_NF := false;

  //OS
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6', '6AF76C93BE3FB7', '')) = 'ATIVADO' then
    bPermite_OS := true
  else
    bPermite_OS := false;

  //OS  - tipo de dav
  if Cript('D', Arquivo_ini.ReadString('43CB7499A7DA1D76F41511353CB6', '6AF76C93BE3FC8', '')) = 'ATIVADO' then
    iDav_Os_tipo := 1
  else
    iDav_Os_tipo := 0;
{
    bPermite_DAV_NF := true;
    bPermite_OS := true;
    iDav_Os_tipo := 1;
    bPermite_DAV_ECF := true;
}

  // liberar arquivo ini da memoria
  Arquivo_ini.Free;

  // codigo da empresa
  if bServidor_Conexao then
  begin
    frmmodulo.qrfilial.open;
    sempresa_Codigo := frmModulo.qrfilial.fieldbyname('codigo').asstring;
    sempresa_ibge := frmModulo.qrfilial.fieldbyname('COD_MUNICIPIO_IBGE').asstring;
    sempresa_Rua := frmModulo.qrfilial.fieldbyname('endereco').asstring;
    sempresa_Numero := frmModulo.qrfilial.fieldbyname('numero').asstring;
    sempresa_Bairro := frmModulo.qrfilial.fieldbyname('bairro').asstring;
    sEmpresa_Cidade := frmModulo.qrfilial.fieldbyname('cidade').asstring;
    sempresa_complemento := frmModulo.qrfilial.fieldbyname('complemento').asstring;
    sempresa_CEP := frmModulo.qrfilial.fieldbyname('Cep').asstring;
    sempresa_telefone := frmModulo.qrfilial.fieldbyname('telefone').asstring;
    sempresa_fax := frmModulo.qrfilial.fieldbyname('fax').asstring;
    sempresa_email := frmModulo.qrfilial.fieldbyname('email').asstring;
  end
  else
  begin
    sempresa_Codigo := '';
    sempresa_ibge := '';
    sempresa_Rua := '';
    sempresa_Numero := '';
    sempresa_Bairro := '';
    sEmpresa_Cidade := '';
    sempresa_complemento := '';
    sempresa_CEP := '';
    sempresa_telefone := '';
    sempresa_fax := '';
    sempresa_email := '';
  end;

  // abrir banco de dados de configuracoes local
  frmmodulo.query.close;
  frmmodulo.query.sql.clear;
  frmmodulo.query.sql.add('select * from config');
  frmmodulo.query.open;

  isenha_desconto := frmModulo.query.fieldbyname('senha_desconto').AsInteger;
  rDesconto_maximo := frmmodulo.query.fieldbyname('desconto_maximo').asfloat;


  iComprovente_Crediario := frmModulo.query.fieldbyname('COMPROVANTE_CREDIARIO').asinteger;
  iComprovante_Crediario_produto := frmmodulo.query.fieldbyname('COMPROVANTE_CREDIARIO_PRODUTO').asinteger;


  sTotalizador_Crediario := frmmodulo.query.fieldbyname('TOTALIZADOR_NF_CREDIARIO').asstring;
  sNome_Totalizador_Crediario :=
    frmmodulo.query.fieldbyname('Nome_TOTALIZADOR_NF_CREDIARIO').asstring;

  sTotalizador_Recebimento := frmmodulo.query.fieldbyname('TOTALIZADOR_NF_RECEBIMENTO').asstring;
  sNome_Totalizador_Recebimento :=
    frmmodulo.query.fieldbyname('Nome_TOTALIZADOR_NF_RECEBIMENTO').asstring;


  sIndice_Sangria := frmModulo.query.fieldbyname('totalizador_sangria').asstring;
  sIndice_Suprimento := frmModulo.query.fieldbyname('totalizador_suprimento').asstring;


  // alimentar as variaveis com as formas de pagamentos pre-definidas que exigem tratamentos
  // especiais no fechamento da venda
  if frmmodulo.query.RecordCount > 0 then
  begin
    lForma_Cheque := TStringList.Create;
    lForma_Cheque.CommaText := frmmodulo.query.fieldbyname('forma_cheque').asstring;

    lForma_Cartao := TStringList.Create;
    lForma_Cartao.CommaText := frmmodulo.query.fieldbyname('forma_cartao').asstring;

    lForma_Crediario := TstringList.Create;
    lForma_Crediario.CommaText := frmmodulo.query.fieldbyname('forma_crediario').asstring;

    lForma_Convenio := TStringList.Create;
    lForma_Convenio.CommaText := frmmodulo.query.fieldbyname('forma_convenio').asstring;

    lForma_Dinheiro := TStringList.Create;
    lForma_Dinheiro.CommaText := frmmodulo.query.fieldbyname('forma_dinheiro').asstring;
  end;

  LerFormasPagto;

  // alimentando as variaveis globais do sistema


  bTruncar_valor := True;

  if frmmodulo.query.fieldbyname('muda_qtde').asinteger = 1 then
    bMuda_qtde := true else bMuda_qtde := false;

  if frmmodulo.query.fieldbyname('muda_unitario').asinteger = 1 then
    bMuda_unitario := true else bMuda_unitario := false;
  if frmModulo.query.fieldbyname('muda_total').asinteger = 1 then
    bMuda_total := true else bmuda_total := false; // somente qdo for posto de combustivel

  bSenha_Cancel_Item := true;
  bSenha_Cancel_Cupom := true;

  bCadastra_cheque := true;

  bCadastra_Crediario := true;

  sPasta_config := ExtractFilePath(Application.ExeName) + '\cfg';
  sArquivo_config := 'cfg.ini';
  sConfiguracoes := sPasta_config + '\' + sArquivo_config;


  iTamanho_codigo_balanca := StrToInt(LerIni(sConfiguracoes, 'BALANCA', 'NDIGITOS', '5'));


  bBusca_foto_produto := StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_IMG', BoolToStr(false)));
  sPasta_foto_produto := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_IMG', ExtractFilePath(Application.ExeName) + '\img\produtos\');

  bHabLogoMarca := StrToBool(LerINI(sConfiguracoes, 'PDV', 'HAB_LOGO', BoolToStr(false)));
  sLogoMarca := LerINI(sConfiguracoes, 'PDV', 'CAMINHO_LOGO', '');

  sPasta_sistema := ExtractFilePath(Application.ExeName);

  // TEF
  if frmmodulo.query.FieldByName('usa_tef').asinteger = 1 then
  begin
    bTEF := true;
    if frmModulo.query.fieldbyname('usa_tef_tecban').asinteger = 1 then
      bTEF_TecBan := true else
      bTEF_TecBan := false;
  end
  else
  begin
    bTEF := false;
    bTEF_TecBan := false;
  end;


  // alimentacao das variaveis de identificaco de consumidor para atender
  // CAT52 - Nf paulista

  if frmmodulo.query.fieldbyname('nf_paulista').asinteger = 1 then
    bIdentifica_consumidor := true
  else
    bIdentifica_consumidor := false;
//  iTeclado_Modelo := 0;

{
0 NENHUM
1 BEMATECH
2 DARUMA
3 SWEDA
4 EPSON
}


  // tipo da venda
  // 1 - VENDA DE SUPERMERCADO
  // 2 - PREVENDA
  // 3 - MECANICA
  // 4 - POSTO DE COMBUSTIVEL
  // 5 - RESTAURANTE

  iTipo_Venda := 1;

{
  Registro1.Empresa.CNPJ :=  ApenasNumerosStr(emitente_cnpj);
  Registro1.Empresa.NomeFantasia := emitente_fantasia;
  Registro1.BancoDados.Banco := frmModulo.Conexao_Servidor.Server + ':' + frmModulo.Conexao_Servidor.Database;
  Registro1.Executar;

  Registro2.Visible := (Registro1.Licenca.TipoLicenca = LicTrial) or
  (DaysBetween(Date, Registro1.Licenca.DataValidade) <= Registro1.Licenca.AvisarFaltanto );
}

end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin

end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.ECF1Click(Sender: TObject);
begin
  frmConfig_ecf := tfrmConfig_ECF.create(self);
  frmconfig_ecf.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.FormDestroy(Sender: TObject);
begin
  // encerrrar comunicacao com o ecf
  cECF_Fecha(iECF_Modelo);
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Sair1Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.NotaFiscalMod2SerieD1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.create(self);
  frmNotafiscal_menu.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Balana1Click(Sender: TObject);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.Geral1Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
  frmconfig.free;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  frmConfig_ecf := tfrmConfig_ECF.create(self);
  frmconfig_ecf.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton175Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
  frmNotafiscal_menu := tfrmNotaFiscal_menu.create(self);
  frmNotafiscal_menu.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmPrincipal.CarregaSistemaVenda;
var
  sForma: string;
  i, x: integer;
// variaveis para acertar a data e hora
  dDataHora: TSystemTime;
  Ano, Mes, Dia,
    H, M, S, Mil: word;
  sLinha: string;
  txt: textFile;

begin
  bAtiva_Venda := true;
  sPortaNaoFiscal := LerIni(sConfiguracoes, 'IMPRESSORA', 'impnaof', 'LPT1');
  sPortaGaveta := LerIni(sConfiguracoes, 'GAVETA', 'gavnaof', 'LPT1');
  iQtdLinhasFinal := IsInteger(LerIni(sConfiguracoes, 'IMPRESSORA', 'qtdlfin', '8'));
  sFuncao_Senha := '001';
  frmSenha := tfrmSenha.create(self);
  frmSenha.showmodal;
//  if Length(LerIni(sConfiguracoes, 'LOGIN', 'USUARIO', '')) = 0 then

//  else
//    frmSenha.LogarAutomaticamente;


  if busuario_Autenticado then
    frmSenha.Free
  else
    Exit;

  //busuario_Autenticado := True;

  iNumCaixa := IsInteger(LerIni(sConfiguracoes, 'CAIXA', 'NUMERO', '99'));

  if iNumCaixa = 0 then
  begin
    Application.MessageBox('N�mero do caixa nao definido, favor verificar', 'Mensagem');
    exit;
  end;

  try
    Application.CreateForm(TFrmUtiSplash, frmUtiSplash);
    frmUtiSplash.Show;

      // TEF
      // tem que ser verificado antes da ecf

    if bTEF then
    begin
      frmUtiSplash.lb_msg.caption := 'Aguarde! Preparando ambiente TEF...';
      frmUtiSplash.p.Percent := 9;
      frmUtiSplash.show;
      frmUtiSplash.Refresh;

      sLinha := '';
      if FileExists(sTEFTemp_Path + 'gp.tmp') then
      begin
        begin
          assignfile(txt, sTEFTemp_Path + 'gp.tmp');
          reset(txt);
          readln(txt, slinha);
          closefile(txt);
        end;
      end;

      if slinha = 'TECBAN' then
      begin
        itefTecban := 1;
        sTEFPath := SystemDrive + '\TEF_DISC\'
      end
      else
      begin
        if slinha = 'HIPERCARD' then
        begin
          itefTecban := 2;
          sTEFPath := SystemDrive + '\HiperTEF\HiperLINK\'
        end
        else
        begin
          sTEFPath := SystemDrive + '\TEF_DIAL\';
          itefTecban := 0;
        end;
      end;

      TEFVerificaGerenciadorAtivo;
      TEFVerificaArquivosPendentes;
      TEFVerificaOperacaoPendente;
    //    frmUtiSplash.Hide;
    end;

    if busuario_Autenticado then
    begin
          // antes de iniciar a tela venda, verificar as configuracoes necessarias

      if TipoImpressora = Fiscal then
      begin
        frmUtiSplash.Hide;
        frmUtiSplash.Show;
        frmUtiSplash.lb_msg.caption := 'Carregando o sistema....';
        frmUtiSplash.Refresh;
          // VERIFICAR ECF
          // abrir porta serial
        repeat
          sMsg := cECF_Abre(iECF_Modelo, sECF_Porta);
          if sMsg <> 'OK' then
          begin
            frmUtiSplash.Hide;

            if application.messagebox(pansichar('Erro ao tentar abrir a porta - ' + sECF_Porta +
              #13 + 'Deseja tentar outra vez?'), 'ECF', mb_yesno +
              mb_iconerror) = idno then
            begin
              Application.Terminate;
              exit;
            end;

            frmUtiSplash.Show;
            frmUtiSplash.Refresh;
          end;
        until
          sMsg = 'OK';

        frmUtiSplash.hide;

        frmUtiSplash.lb_msg.caption := 'Aguarde! Localizando o ECF...';
        frmUtiSplash.p.Percent := 9 * 2;
        frmUtiSplash.show;
        frmUtiSplash.Refresh;

        bAtiva_venda := true;


              // liberar/bloquear porta caso o ecf seja daruma
        if iECF_Modelo = 2 then
          cECF_Daruma_Libera_Porta('NAO')
        else
          cECF_Daruma_Libera_Porta('SIM');


        bcupom_aberto := false;

         // verificando se o ECF esta ligado
        repeat
          sMsg := cECF_Ligada(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            if sMsg <> ' Cupom Aberto' then
            begin
              frmUtiSplash.hide;
              if application.messagebox(pansichar('ECF desligado ou n�o conectado!' + #13 +
                'Mensagem: ' + sMsg + #13 +
                'Deseja tentar outra vez?'),
                'ECF', mb_yesno +
                mb_iconerror) = idno then
              begin
                break;
              end
              else
              begin
                frmUtiSplash.show;
                frmUtiSplash.Refresh;
              end;
            end
            else
            begin
              bcupom_aberto := true;
              sMsg := 'OK';
            end;
          end;
        until
          sMsg = 'OK';


        if sMsg = 'OK' then
        begin
                 // desligar as janelas da sweda
          sMsg := cECF_Desliga_Janelas(iECF_Modelo);

          frmUtiSplash.lb_msg.caption := 'Aguarde! Veficando n�mero de s�rie do ECF...';
          frmUtiSplash.p.Percent := 9 * 3;
          frmUtiSplash.show;
          frmUtiSplash.Refresh;
                // Numero de Serie do ECF
          repeat
            sMsg := Trim(TrimLeft(TrimRight(cECF_Numero_Serie(iECF_Modelo))));
            if sMsg = 'ERRO' then
            begin
              frmUtiSplash.hide;
              if application.messagebox('Erro ao tentar obter o n�mero de s�rie do ECF!' + #13 +
                'Deseja tentar outra vez?',
                'ECF', mb_yesno +
                mb_iconerror) = idno then
              begin
                bAtiva_venda := false;
                break;
              end
              else
              begin
                frmUtiSplash.show;
                frmUtiSplash.Refresh;
              end;
            end
            else
            begin
              if sMSG <> sECF_Serial then
              begin
                frmUtiSplash.Hide;

                Application.messagebox(pansichar(
                  'O n�mero de s�rie da ECF n�o confere com o registrado no PAF-ECF!' + #13 +
                  'ECF: ' + sMSG + #13 +
                  'PAF: ' + sECF_Serial + #13 +
                  'As fun��es de venda ser�o bloqueadas!'), 'Erro', MB_OK +
                  MB_ICONERROR);
                bativa_venda := false;
                break;
              end;

              frmUtiSplash.Show;
              frmUtiSplash.Refresh;
            end;
          until
            sMsg <> 'ERRO';


          // Numero do caixa do ECF
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo n�mero do caixa do ECF...';
            frmUtiSplash.p.Percent := 9 * 4;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;
            repeat
              sMsg := cECF_Numero_Caixa(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter o n�mero do caixa do ECF!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin
                if sMSG <> sECF_Caixa then
                begin
                  frmUtiSplash.Hide;

                  application.messagebox(pansichar(
                    'O n�mero do ECF n�o confere com o registrado no PAF-ECF!' + #13 +
                    'ECF: ' + sMSG +
                    'PAF: ' + sECF_Caixa + #13 +
                    'O sistema ser� finalizado!'), 'Erro', MB_OK +
                    MB_ICONERROR);


                  bAtiva_venda := false;
                  break;

                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            until
              sMsg <> 'ERRO';
          end;


                //  verificar a data e hora do ecf
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo data e hora do ECF...';
            frmUtiSplash.p.Percent := 9 * 5;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;
            repeat
              sMsg := cECF_Data_Hora(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter a data e hora do ECF!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin
                try
                  dData_Sistema := strtodate(copy(smsg, 1, 10));
                except
                  on E: exception do
                  begin
                    frmUtiSplash.Hide;

                    application.messagebox(pansichar('Erro ao extrair data do ecf!' + #13 +
                      'Mensagem:' + E.Message + #13 +
                      'O sistema bloquear� as fun��es de venda!'),
                      'Erro', mb_ok + mb_iconerror);
                    bativa_venda := false;
                    exit;

                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end;
                end;

                if dData_Sistema <> Date then
                begin

                  frmUtiSplash.Hide;

                  if application.messagebox(pansichar(
                    'A data do computador est� diferente da data do ECF!' + #13 +
                    'ECF: ' + DateToStr(dData_sistema) + #13 +
                    'Computador: ' + DateToStr(Date) + #13 +
                    'Deseja corrigir a data computador'), 'Erro', mb_yesno +
                    MB_ICONWARNING) = idYes then
                  begin
                    DecodeDate(dData_Sistema, Ano, Mes, Dia);
                    DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8)), H, M, S, Mil);
                    with dDataHora do
                    begin
                      wYear := Ano;
                      wMonth := Mes;
                      wDay := Dia;
                      wHour := H;
                      wMinute := M;
                      wSecond := S;
                      wMilliseconds := Mil;
                    end;
                    SetLocalTime(dDataHora);
                  end
                  else
                  begin
                    application.MessageBox('O sistema ser� finalizado!', 'Erro', mb_ok +
                      mb_iconerror);
                    BATIVA_VENDA := FALSE;
                    exit;
                  end;

                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end
                else
                begin
                        // verificar se a hora tem diferenca de 15 minutos p/merc.sousa
                  if ((time - strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8))) >
                    strtotime('00:59:59'))
                    or
                    ((strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8)) - time) >
                    strtotime('00:59:59')) then
                  begin
                    frmUtiSplash.Hide;

                    if application.messagebox(pansichar(
                      'A hora do computador est� diferente da hora do ECF!' + #13 +
                      'ECF: ' + copy(cECF_Data_Hora(iECF_Modelo), 12, 8) + #13 +
                      'Computador: ' + timetostr(time) + #13 +
                      'Deseja corrigir a hora do computador'), 'Erro', mb_yesno +
                      MB_ICONWARNING) = idYes then
                    begin



                      DecodeDate(dData_Sistema, Ano, Mes, Dia);
                      DecodeTime(strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8)), H, M, S, Mil);
                      with dDataHora do
                      begin
                        wYear := Ano;
                        wMonth := Mes;
                        wDay := Dia;
                        wHour := H;
                        wMinute := M;
                        wSecond := S;
                        wMilliseconds := Mil;
                      end;
                      SetLocalTime(dDataHora);
                    end
                    else
                    begin
                            // verificar se a diferenca eh maior q 59 minutos (permitido)
                      if (time - strtotime(copy(cECF_Data_Hora(iECF_Modelo), 12, 8)) >
                        strtotime('00:59:59')) then
                      begin
                        application.MessageBox('O sistema ser� finalizado!', 'Erro', mb_ok +
                          mb_iconerror);
                        bativa_venda := FALSE;
                        exit;
                      end;
                    end;

                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end;
                end;
              end;
            until sMsg <> 'ERRO';
          end;

                // verificar se a data do movimento eh igual ao do sistema
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Extraindo data do Movimento...';
            frmUtiSplash.p.Percent := 9 * 6;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Data_Movimento(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter a data do movimento do ECF!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin

                if sMsg = '00/00/2000' then
                begin
                        // sem movimento no dia
                  dData_Movimento := dData_Sistema;
                end
                else
                begin
                  try
                    dData_Movimento := StrToDate(sMsg);
                  except
                    on E: exception do
                    begin
                      frmUtiSplash.Hide;

                      application.messagebox(pansichar('Erro ao tentar obter a data do movimento do ECF!' + #13 +
                        'Mensagem retornada: ' + E.Message + #13 +
                        'As fun��es de venda ser�o bloqueadas!'), 'Erro',
                        mb_ok + mb_iconerror);
                      bativa_venda := false;
                      sMsg := 'ERRO';

                      frmUtiSplash.Show;
                      frmUtiSplash.Refresh;
                    end;
                  end;
                end;
              end;
            until smsg <> 'ERRO';
          end;

                // formas de pagamento do ECF
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo as formas de Pagamento do ECF...';
            frmUtiSplash.p.Percent := 9 * 7;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Le_Formas_Pgto(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter as formas de pagamento do ECF!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end;
            until
              sMsg <> 'ERRO';
          end;



          //Verificar o status do caixa
          bcaixa_aberto := true;

          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Extraindo data do movimento da Redu��o Z...';
            frmUtiSplash.p.Percent := 9 * 8;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_ReducaoZ_Data_Movimento(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter a data do movimento ' +
                  'da �ltima Redu��o Z!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
              begin //**
                insert('/', sMsg, 3);
                insert('/', sMsg, 6);
                frmmodulo.query.close;
                frmmodulo.query.sql.clear;
                frmmodulo.query.sql.add('select * from config');
                frmmodulo.query.open;
                //se ja foi emitido reducao z do dia
                if (StrToDate(sMsg) = dData_Sistema) and
                  (StrToDate(sMsg) = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
                  (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO') then
                begin
                  frmUtiSplash.Hide;

                  Application.MessageBox(pansichar(
                    'ECF j� foi emitido a Redu��o Z!' + #13 +
                    'Data do Movimento: ' + datetostr(dData_sistema) + #13 +
                    'Data da Redu��o Z: ' + sMsg + #13 +
                    'As fun��es de venda ser�o bloqueadas!'),
                    'Aten��o', mb_ok + mb_iconWarning);

                  bativa_venda := false;

                  frmUtiSplash.Show;
                  frmUtiSplash.Refresh;
                end
                else
                begin
                  frmUtiSplash.Hide;
                  try
                    //mizael (DATE = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
                    if frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO' then
                    begin

                      if application.MessageBox(pansichar('C A I X A   F E C H A D O!' + #13 + 'Deseja realizar a sua abertura?'), 'Aviso', mb_yesno + MB_ICONQUESTION) = idYes then
                      begin
                        bcaixa_aberto := false;
                        bAtiva_Venda := true;
                      end
                      else
                      begin
                        Application.MessageBox(pansichar('As fun��es de venda ser�o bloqueadas!'), 'Aten��o', mb_ok + mb_iconWarning);
                        bAtiva_Venda := false;
                      end;

                    end;
                  finally
                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end;
                  {try
                    if (StrToDate(sMsg) < dData_Sistema) and
                      (StrToDate(sMsg) = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and
                      (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO') then
                    begin
                      if application.MessageBox(pansichar('C A I X A   F E C H A D O!' + #13 +
                        'Deseja realizar a sua abertura?'), 'Aviso', mb_yesno +
                        MB_ICONQUESTION) = idYes then
                      begin
                        bcaixa_aberto := false;

                      end
                      else
                      begin
                        Application.MessageBox(pansichar(
                          'As fun��es de venda ser�o bloqueadas!'),
                          'Aten��o', mb_ok + mb_iconWarning);
                        bAtiva_Venda := false;
                      end;
                    end;
                  finally
                    frmUtiSplash.Show;
                    frmUtiSplash.Refresh;
                  end; }


                end;
              end;
            until sMsg <> 'ERRO';
          end;

                 // Verificar dos do Cadastros do sistema se eh igual ao do ecf
          sECF_Operador := Zerar(inttostr(icodigo_Usuario), 6);

          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Montando tabela de al�quotas...';
            frmUtiSplash.p.Percent := 9 * 9;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;
            repeat
              sMsg := cECF_Verifica_Aliquotas(iECF_Modelo);

              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;

                if application.messagebox(pansichar('Erro ao extrair al�quotas do ECF!' + #13 +
                  'Deseja tentar outra vez?'), 'Erro', mb_yesno + mb_iconerror) =
                  idno then
                begin
                  bativa_venda := false;
                  break;
                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end
              else
              begin
                frmmodulo.tbAliquota.Open;
                frmModulo.tbAliquota.Refresh;
                laliquota := TStringList.Create;
                laliquota.CommaText := sMsg;
                for i := 0 to laliquota.Count - 1 do
                begin
                  frmmodulo.tbAliquota.Insert;
                  frmmodulo.tbAliquota.fieldbyname('codigo').asstring := Zerar(inttostr(i + 1), 2) + 'T' + laliquota[i];
                  frmmodulo.tbAliquota.FieldByName('aliquota').asfloat := strtofloat(laliquota[i]) / 100;
                  frmmodulo.tbAliquota.Post;
                end;
                frmUtiSplash.Hide;
              end;
            until sMsg <> 'ERRO';
          end;

                 // versao do software basico
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo dados do Software B�sico do ECF...';
            frmUtiSplash.p.Percent := 9 * 10;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Versao_SB(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter vers�o do software b�sico!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end
              else
                sECF_Versao_SB := sMsg;
            until
              sMsg <> 'ERRO';
          end;
                 // versao do software basico
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Lendo dados do Software B�sico do ECF...';
            frmUtiSplash.p.Percent := 9 * 11;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_Data_Hora_SB(iECF_Modelo);
              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.hide;
                if application.messagebox('Erro ao tentar obter data e hora do software b�sico!' + #13 +
                  'Deseja tentar outra vez?',
                  'ECF', mb_yesno +
                  mb_iconerror) = idno then
                begin
                  bAtiva_venda := false;
                  break;
                end
                else
                begin
                  frmUtiSplash.show;
                  frmUtiSplash.Refresh;
                end;
              end
              else //25072008081622
              begin
                sECF_Data_SB := copy(smsg, 5, 4) + copy(smsg, 3, 2) + copy(smsg, 1, 2);
                sECF_Hora_SB := copy(smsg, 9, 6);
              end;
            until
              sMsg <> 'ERRO';
          end;

                 // GUIO: Extrai e armazena em buffer os nomes dos relat�rios gerenciais
          if sMsg <> 'ERRO' then
          begin
            frmUtiSplash.lb_msg.caption := 'Aguarde! Montando tabela de Relat�rios Gerenciais...';
            frmUtiSplash.p.Percent := 100;
            frmUtiSplash.show;
            frmUtiSplash.Refresh;

            repeat
              sMsg := cECF_VerificarRelatoriosGerenciais(iECF_Modelo);

              if sMsg = 'ERRO' then
              begin
                frmUtiSplash.Hide;

                if application.messagebox(pansichar('Erro ao verificar relat�rios gerenciais cadastrados no ECF!' + #13 +
                  'Deseja tentar outra vez?'), 'Erro', mb_yesno + mb_iconerror) =
                  idno then
                begin
                  bativa_venda := false;
                  break;
                end;

                frmUtiSplash.Show;
                frmUtiSplash.Refresh;
              end;
            until sMsg <> 'ERRO';
          end;

                 // GUIO: Oculta o Splash caso ainda esteja visivel
          frmUtiSplash.hide;

        end
        else
        begin
          bativa_venda := false;
        end;

        // verificar nas configuracoes qual o tipo de venda
        if iTipo_venda = 1 then // venda PDV SUPERMERCADO
        begin
          if bativa_venda then
          begin
            if not bcupom_aberto then
            begin
              sMsg := cECF_Cupom_Fiscal_Aberto(iECF_Modelo);

              if (sMsg <> 'SIM') then
              begin
                if not compara_totalizador then
                begin
                  application.messagebox('N�o foi poss�vel recompor o totalizador do PAF ECF!' + #13 +
                    'As fun��es de vendas ser�o bloqueadas!' + #13 +
                    'Favor entrar em contato com o suporte t�cnico para ' +
                    'resolver esta situa��o!', 'Erro', mb_ok + mb_iconerror);

                  exit;
                end;
              end;
            end;

            FRMVENDA := TFRMVENDA.CREATE(SELF);
            FRMVENDA.lb_numero_serie.Caption := sECF_Serial;
            frmvenda.lb_ecf_caixa.Caption := sECF_Caixa;
            frmvenda.lb_operador.caption := copy(sNome_Operador, 1, 10);
            FRMVENDA.SHOWMODAL;
          end
          else
          begin
            application.messagebox('ECF n�o est� pronto! As fun��es de venda ser�o bloqueadas!',
              'Aten��o', mb_ok + MB_ICONWARNING);

          end;
        end;

        //emitir leitura x



      end
      else
      begin // � nao fiscal ou sem impressora impressora

        dData_Sistema := Date;
        dData_Movimento := dData_Sistema;
        frmmodulo.query.close;
        frmmodulo.query.sql.clear;
        frmmodulo.query.sql.add('select * from config');
        frmmodulo.query.open;
        bcaixa_aberto := True;

        try
         // if (DATE = frmmodulo.query.fieldbyname('caixa_data_movto').asdatetime) and (frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO') then
          if frmmodulo.query.fieldbyname('caixa_situacao').asstring = 'FECHADO' then
          begin

            if application.MessageBox(pansichar('C A I X A   F E C H A D O!' + #13 + 'Deseja realizar a sua abertura?'), 'Aviso', mb_yesno + MB_ICONQUESTION) = idYes then
            begin
              bcaixa_aberto := false;
              bAtiva_Venda := true;
            end
            else
            begin
              Application.MessageBox(pansichar('As fun��es de venda ser�o bloqueadas!'), 'Aten��o', mb_ok + mb_iconWarning);
              bAtiva_Venda := false;
            end;

          end;
        finally
          frmUtiSplash.Show;
          frmUtiSplash.Refresh;
        end;


        if bAtiva_Venda then
        begin
          frmvenda := Tfrmvenda.CREATE(SELF);
          frmvenda.lb_numero_serie.Caption := sECF_Serial;
          frmvenda.lb_ecf_caixa.Caption := sECF_Caixa;
          frmvenda.lb_operador.caption := copy(sNome_Operador, 1, 10);
          frmvenda.SHOWMODAL;
        end;
      end;

    end
    else
    begin //Se o Usuario nao foi altenticado Finaliza
      Application.Terminate;
    end;


  finally
    FreeAndNil(frmUtiSplash);
  end;

end;

procedure TfrmPrincipal.VendasPDV1Click(Sender: TObject);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.GravaIni(sArquivo, Secao, Linha, Valor: string);
var
  Ini: TIniFile;
  Arquivo: string;
begin

  Arquivo := sArquivo;
  Ini := TIniFile.Create(Arquivo);
  Ini.WriteString(Secao, Linha, Valor);
  Ini.Free;

end;

function TfrmPrincipal.LerIni(sArquivo, Secao, Linha, Def: string): string;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(sArquivo);
  Result := Ini.ReadString(Secao, Linha, Def);
  Ini.Free;

end;



function TfrmPrincipal.LerFormasPagto: Boolean;
var
  formas: string;
begin
  try
    Result := False;
    frmModulo.tbForma_pgto.Close;
    frmModulo.tbForma_pgto.Open;

    if frmModulo.tbForma_pgto.RecordCount > 0 then
      frmModulo.tbForma_pgto.Delete;


     //Dinheiro
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := 1;
    if Pos(',', lForma_dinheiro.CommaText) > 0 then
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_dinheiro.CommaText, 1, Pos(',', lForma_dinheiro.CommaText) - 1)
    else
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_dinheiro.CommaText, 1, Length(lForma_dinheiro.CommaText));
    frmModulo.tbForma_pgto.Post;

     //Cheque
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := 2;
    if Pos(',', lForma_Cheque.CommaText) > 0 then
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Cheque.CommaText, 1, Pos(',', lForma_Cheque.CommaText) - 1)
    else
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Cheque.CommaText, 1, Length(lForma_Cheque.CommaText));
    frmModulo.tbForma_pgto.Post;

     //Cartao
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := 3;
    if Pos(',', lForma_Cartao.CommaText) > 0 then
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Cartao.CommaText, 1, Pos(',', lForma_Cartao.CommaText) - 1)
    else
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Cartao.CommaText, 1, Length(lForma_Cartao.CommaText));
    frmModulo.tbForma_pgto.Post;


     //Crediario
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := 4;
    if Pos(',', lForma_Crediario.CommaText) > 0 then
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Crediario.CommaText, 1, Pos(',', lForma_Crediario.CommaText) - 1)
    else
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Crediario.CommaText, 1, Length(lForma_Crediario.CommaText));
    frmModulo.tbForma_pgto.Post;


     //Convenio
    frmModulo.tbForma_pgto.Insert;
    frmModulo.tbForma_Pgtoid.Value := 5;
    if Pos(',', lForma_Convenio.CommaText) > 0 then
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Convenio.CommaText, 1, Pos(',', lForma_Convenio.CommaText) - 1)
    else
      frmModulo.tbForma_PgtoNome.Value := Copy(lForma_Convenio.CommaText, 1, Length(lForma_Convenio.CommaText));
    frmModulo.tbForma_pgto.Post;

    Result := True;
  except
    Result := False;
    ShowMessage('Erro ao carregar formas de pagamento');

  end;


{

    for i := 1 to 919 do Formas := Formas + ' ';
    iRetorno := Bematech_FI_VerificaFormasPagamentoMFD( Formas );

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin
          // limpar a tabela de forma de pagamento
          Y := 0;

          for i := 1 to length(Formas) do
          begin
            if Y > 30 then break;
            if i = 1 then // inicio da variavel
              x := 1
            else
              if i >= length(Formas) then // final da variavel
              begin
                frmModulo.tbForma_Pgto.Insert;
                frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                svalor := copy(Formas,x+16,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';

                frmModulo.tbForma_pgto.fieldbyname('Valor_Acumulado').asfloat
                   := strtofloat(svalor);

                svalor := copy(Formas,x+26,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';

                frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                   := strtofloat(svalor);
                frmModulo.tbForma_Pgto.Post;
                INC(Y);
              end
              else
              begin
                if Formas[i] = ',' then
                begin
                  frmModulo.tbForma_Pgto.Insert;
                  frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                  frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                  svalor := copy(Formas,x+16,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat
                     := strtofloat(svalor);
                  svalor := copy(Formas,x+26,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                     := strtofloat(svalor);
                  INC(Y);
                  x := i + 1;
                end;
              end;
          end;
        Result := OK;
      end

}

end;

function TfrmPrincipal.ApenasNumerosStr(pStr: string): string;
var
  I: Integer;
begin

  Result := '';

  for I := 1 to Length(pStr) do
    if pStr[I] in ['1', '2', '3', '4', '5', '6', '7', '8', '9', '0'] then
      Result := Result + pStr[I];

end;


function TfrmPrincipal.IsInteger(s: string): integer;
begin
  try
    Result := strtoint(s);

  except
    Result := 0;
  end;
end;

procedure TfrmPrincipal.tlResearchClick(Sender: TdxTileControlItem);
begin
  frmConfig_ecf := tfrmConfig_ECF.create(self);
  frmconfig_ecf.showmodal;
end;

procedure TfrmPrincipal.tlPhotosClick(Sender: TdxTileControlItem);
begin
  CarregaSistemaVenda;
end;

procedure TfrmPrincipal.tlAgentsClick(Sender: TdxTileControlItem);
begin
  Close;
end;

procedure TfrmPrincipal.dxtlcntrltmTileItem1Click(
  Sender: TdxTileControlItem);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;

end;

procedure TfrmPrincipal.tlUserManagementClick(Sender: TdxTileControlItem);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmPrincipal.tlSystemInformationClick(
  Sender: TdxTileControlItem);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

procedure TfrmPrincipal.dxTileItem1Click(Sender: TdxTileControlItem);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

procedure TfrmPrincipal.V1Click(Sender: TObject);
begin
  CarregaSistemaVenda
end;

procedure TfrmPrincipal.S1Click(Sender: TObject);
begin
  Close
end;

procedure TfrmPrincipal.M1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmPrincipal.C1Click(Sender: TObject);
begin
  frmconfig := tfrmconfig.create(self);
  frmconfig.showmodal;
end;

procedure TfrmPrincipal.E1Click(Sender: TObject);
begin
  frmConfig_ecf := tfrmConfig_ECF.create(self);
  frmconfig_ecf.showmodal;
end;

procedure TfrmPrincipal.B1Click(Sender: TObject);
begin
  frmconfig_balanca := tfrmconfig_balanca.create(self);
  frmconfig_balanca.showmodal;
end;

end.

