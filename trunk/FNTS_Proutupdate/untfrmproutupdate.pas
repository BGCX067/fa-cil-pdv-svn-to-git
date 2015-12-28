unit untfrmproutupdate;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, AdvGlowButton, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdFTP, StdCtrls, Gauges, ExtCtrls,
  IdTCPServer, IdFTPServer, WinInet, IniFiles,
  untthreadupdate, IdUDPBase, IdUDPClient, IdTrivialFTP, dateutils,
  sSkinManager, sSkinProvider, Menus, AdvMenus, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  dxSkinsDefaultPainters, cxLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel, Buttons, acPNG, dxSkinBlack,
  dxSkinBlue, dxSkinBlueprint, dxSkinCaramel, dxSkinCoffee, dxSkinDarkRoom,
  dxSkinDarkSide, dxSkinDevExpressDarkStyle, dxSkinDevExpressStyle,
  dxSkinFoggy, dxSkinGlassOceans, dxSkinHighContrast, dxSkiniMaginary,
  dxSkinLilian, dxSkinLiquidSky, dxSkinLondonLiquidSky, dxSkinMcSkin,
  dxSkinMoneyTwins, dxSkinOffice2007Black, dxSkinOffice2007Blue,
  dxSkinOffice2007Green, dxSkinOffice2007Pink, dxSkinOffice2007Silver,
  dxSkinOffice2010Black, dxSkinOffice2010Blue, dxSkinOffice2010Silver,
  dxSkinPumpkin, dxSkinSeven, dxSkinSevenClassic, dxSkinSharp,
  dxSkinSharpPlus, dxSkinSilver, dxSkinSpringTime, dxSkinStardust,
  dxSkinSummer2008, dxSkinTheAsphaltWorld, dxSkinValentine, dxSkinVS2010,
  dxSkinWhiteprint, dxSkinXmas2008Blue;

type
  Tfrmproutupdate = class(TForm)
    pnlconfig: TPanel;
    Panel1: TPanel;
    Panel6: TPanel;
    Gauge1: TGauge;
    Panel3: TPanel;
    Panel4: TPanel;
    lbltempo: TLabel;
    lblvelocidade: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Panel5: TPanel;
    lblcontador: TLabel;
    lblrestante: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ProgressBar1: TProgressBar;
    Panel7: TPanel;
    ltipo_conexao: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    memo1: TMemo;
    ftpupdate: TIdFTP;
    AdvPopupMenu1: TAdvPopupMenu;
    Sair1: TMenuItem;
    Configurar1: TMenuItem;
    Atualizar1: TMenuItem;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    Panel2: TPanel;
    lblstatus: TLabel;
    StatusBar1: TStatusBar;
    AdvPopupMenu2: TAdvPopupMenu;
    Sair2: TMenuItem;
    Label1: TLabel;
    lbtempores: TLabel;
    Panel8: TPanel;
    Image2: TImage;
    Image3: TImage;
    function Verifica_Conexao: Boolean;
    function GetBuildInfo(Prog: string): string;
    procedure bfecharClick(Sender: TObject);
    procedure batualizarClick(Sender: TObject);
    procedure ftpupdateWork(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCount: Integer);
    procedure ftpupdateWorkBegin(Sender: TObject; AWorkMode: TWorkMode;
      const AWorkCountMax: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ftpupdateStatus(ASender: TObject; const AStatus: TIdStatus;
      const AStatusText: string);
    procedure ftpupdateWorkEnd(Sender: TObject; AWorkMode: TWorkMode);
    procedure IdTCPClient1Connected(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bconfigurarClick(Sender: TObject);

  private
    STime: TDateTime;
    { Private declarations }
  public
    BytesToTransfer: longword;
   { Public declarations }
    prog1, prog2, acao: string;

  end;

var
  frmproutupdate: Tfrmproutupdate;
  threadftp: threadupdate;
  AverageSpeed: Double = 0;

implementation

uses untfrmconfigurar;

{$R *.dfm}

function Tfrmproutupdate.GetBuildInfo(Prog: string): string;
var
  VerInfoSize: DWORD;
  VerInfo: Pointer;
  VerValueSize: DWORD;
  VerValue: PVSFixedFileInfo;
  Dummy: DWORD;
  V1, V2, V3, V4: Word;
begin
  try
    VerInfoSize := GetFileVersionInfoSize(PChar(Prog), Dummy);
    GetMem(VerInfo, VerInfoSize);
    GetFileVersionInfo(PChar(prog), 0, VerInfoSize, VerInfo);
    VerQueryValue(VerInfo, '', Pointer(VerValue), VerValueSize);
    with (VerValue^) do
    begin
      V1 := dwFileVersionMS shr 16;
      V2 := dwFileVersionMS and $FFFF;
      V3 := dwFileVersionLS shr 16;
      V4 := dwFileVersionLS and $FFFF;
    end;
    FreeMem(VerInfo, VerInfoSize);
    Result := Format('%d.%d.%d.%d', [v1, v2, v3, v4]);
  except
    Result := '1.0.0.0';
  end;
end;

function Tfrmproutupdate.Verifica_Conexao: Boolean;
var
  flags: DWORD;
begin
  // verificando se ha conexao com a internet

  Result := InternetGetConnectedState(@flags, 0);
  if Result then
  begin
    if (flags and INTERNET_CONNECTION_MODEM) = INTERNET_CONNECTION_MODEM then
      ltipo_conexao.Caption := '[Modem]';
    if (flags and INTERNET_CONNECTION_LAN) = INTERNET_CONNECTION_LAN then
      ltipo_conexao.Caption := '[LAN]';
    if (flags and INTERNET_CONNECTION_PROXY) = INTERNET_CONNECTION_PROXY then
      ltipo_conexao.Caption := '[Proxy]';
    if (flags and INTERNET_CONNECTION_MODEM_BUSY) = INTERNET_CONNECTION_MODEM_BUSY then
      ltipo_conexao.Caption := '[Modem Busy]';
  end
  else
    ltipo_conexao.Caption := '[Sem Conexão]';
end;

procedure Tfrmproutupdate.bfecharClick(Sender: TObject);
begin
  if not ftpupdate.Connected then
  begin
    close;
  end
  else
  begin
    ftpupdate.Disconnect;
    close;
  end;
end;

procedure Tfrmproutupdate.batualizarClick(Sender: TObject);
var cancelar: boolean;
  ServerIni, IniVersao: TIniFile;
  passivo, arquivo, diretorio, diretorio_ftp: string;

begin

  cancelar := false;
  Panel3.Caption := '';
  Panel3.Caption := 'Status: Procurando atualizações...';
  repeat
    if Verifica_Conexao then
    begin
      application.ProcessMessages;

      // Iniciando conexao com o servidor....

      if not ftpupdate.Connected then
      begin
        threadftp := threadupdate.Create(true);
        threadftp.Resume;
      end
      else
        showmessage('Conectado no FTP');
    end
    else
    begin
      cancelar := true;
    end;
  until
    verifica_conexao or cancelar;

  if cancelar then Panel3.Caption := 'Status: Sem acesso a internet, verifique...'; //Application.MessageBox('Sem acesso a internet, verifique', 'Informação', MB_OK + MB_ICONINFORMATION);

end;

procedure Tfrmproutupdate.ftpupdateWork(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCount: Integer);
var contador, kbTotal, kbTransmitidos, kbFaltantes, Tamanho: Integer;
  media: real;
  S,R: string;
  TotalTime: TDateTime;
  H, M, Sec, MS: Word;
  DLTime: Double;
begin
  kbTotal := BytesToTransfer div 1024;
  TotalTime := Now - STime;
  DecodeTime(TotalTime, H, M, Sec, MS);
  Sec := Sec + M * 60 + H * 3600;
  DLTime := Sec + MS / 1000;
  //kbTotal := Tamanho div 1024;
  KbTransmitidos := AWorkCount div 1024;
  kbFaltantes := kbTotal - kbTransmitidos;
// Application.ProcessMessages;
  lblcontador.Caption := formatfloat('##,###,##0', kbTransmitidos) + ' KBytes'; // + formatfloat('##,###,##0', kbTotal) + ' Kb';
  lblrestante.Caption := formatfloat('##,###,##0', kbFaltantes) + ' KBytes';
//  ProgressBar1.Position:=Aworkcount;
  media := (100 / BytesToTransfer) * AWorkCount;
  if DLTime > 0 then
  begin
    //Sec := Trunc(((BytesToTransfer - AWorkCount) / 1024) / AverageSpeed);
    AverageSpeed := {(AverageSpeed + }(AWorkCount / 1024) / DLTime {) / 2};
    S := Format('%.2d:%.2d:%.2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);
    S := '' + S;
  end
  else S := '';

  if (AverageSpeed > 0) then
  begin
    Sec := Trunc(((BytesToTransfer - AWorkCount) / 1024) / AverageSpeed);
    r := Format('%.2d:%.2d:%.2d', [Sec div 3600, (Sec div 60) mod 60, Sec mod 60]);
    r := r;
  end
  else
    r := '';

  lbtempores.Caption:=r;
  lbltempo.Caption := s;
  S := 'Velocidade de download:    ' + FormatFloat('0.00 KB/s', AverageSpeed); // + '; ' + S;
  lblvelocidade.Caption := FormatFloat('0.00 KB/s', AverageSpeed);
  Application.ProcessMessages;
  contador := trunc(media);
  gauge1.Progress := (contador);

end;

procedure Tfrmproutupdate.ftpupdateWorkBegin(Sender: TObject;
  AWorkMode: TWorkMode; const AWorkCountMax: Integer);
begin
  STime := Now;
  AverageSpeed := 0;
end;

procedure Tfrmproutupdate.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  threadftp.Free;
end;

procedure Tfrmproutupdate.ftpupdateStatus(ASender: TObject;
  const AStatus: TIdStatus; const AStatusText: string);
begin
  case aStatus of
    hsResolving: statusbar1.Panels[0].text := 'Resolvendo..';
    hsConnecting: statusbar1.Panels[0].text := 'Conectando..';
    hsConnected: statusbar1.Panels[0].text := 'Conectado ao Servidor FTP! Aguarde..';
    hsDisconnecting: statusbar1.Panels[0].text := 'Desconectando..';
    hsDisconnected: begin
        statusbar1.Panels[0].text := 'Desconectado!';
        gauge1.Progress := 100;
      end;
    ftpTransfer: statusbar1.Panels[0].text := 'Transferindo..';
    ftpReady: statusbar1.Panels[0].text := 'Lendo...';
    ftpAborted: statusbar1.Panels[0].text := 'Abortado!';
  else
    statusbar1.Panels[0].text := AStatusText;
  end; //fim do case
end;

procedure Tfrmproutupdate.ftpupdateWorkEnd(Sender: TObject;
  AWorkMode: TWorkMode);
begin
  case AWorkMode of
    wmRead: lblstatus.Caption := 'Download!!';
    wmWrite: lblstatus.Caption := 'Upload!!';
  end;
 // lblcontador.Caption := 'Transferidos: ' + formatfloat('##,###,##0', BytesToTransfer div 1024) + ' Kb';
end;

procedure Tfrmproutupdate.IdTCPClient1Connected(Sender: TObject);
begin
  showmessage('conectado');
end;

procedure Tfrmproutupdate.FormShow(Sender: TObject);
begin
  BytesToTransfer := 0;
end;

procedure Tfrmproutupdate.bconfigurarClick(Sender: TObject);
begin
  frmconfigurar := tfrmconfigurar.create(self);
  frmconfigurar.showmodal;
  frmconfigurar.free;
end;

end.

