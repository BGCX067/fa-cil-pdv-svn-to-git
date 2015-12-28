unit untthreadupdate;

interface

uses
  Classes, sysutils, IniFiles;

type
  threadupdate = class(TThread)
  private

    { Private declarations }
  protected
    procedure Execute; override;
  public
    procedure conectar();
  end;


implementation

uses untfrmproutupdate;

{ retorna a versão do executavel }

procedure threadupdate.conectar;
var
  ServerIni, IniVersao: TIniFile;
  passivo, arquivo, diretorio, diretorio_ftp: string;
var datestr: string;
begin
  while not terminated do
  begin
    frmproutupdate.AdvGlowButton1.Enabled := False;
    frmproutupdate.AdvGlowButton2.Enabled := False;
    frmproutupdate.AdvGlowButton3.Enabled := False;
    ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'FTPConfig.ini');
    passivo := ServerIni.ReadString('CONEXAO', 'PASSIVO', '');
    with frmproutupdate do
    begin
      ftpupdate.Host := ServerIni.ReadString('CONEXAO', 'FTP', '');
      ftpupdate.port := StrToInt(ServerIni.ReadString('CONEXAO', 'PORTA', ''));
      ftpupdate.Username := ServerIni.ReadString('CONEXAO', 'USUARIO', '');
      ftpupdate.Password := ServerIni.ReadString('CONEXAO', 'PASSWD', '');
      arquivo := ServerIni.ReadString('CONEXAO', 'ARQUIVO', '');
      diretorio := ServerIni.ReadString('CONEXAO', 'SALVAR', '');
      diretorio_ftp := ServerIni.ReadString('CONEXAO', 'DIRFTP', '');
      if passivo = 'S' then
        ftpupdate.Passive := true
      else
        ftpupdate.passive := false;
      ServerIni.Free;
      ftpupdate.Connect();
      ftpupdate.get('Verifica_Versao.ini', ExtractFilePath(ParamStr(0)) + 'Verifica_Versao.ini', true);
      IniVersao := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Verifica_Versao.ini');
      ftpupdate.changedir(diretorio_ftp);
      ftpupdate.list(memo1.Lines);
      BytesToTransfer := ftpupdate.Size(arquivo);

      if not FileExists(diretorio + '\' + arquivo) then
      begin
        frmproutupdate.Panel3.Caption := 'Status: Descarregando arquivos,aguarde...';
        ftpupdate.get(arquivo, diretorio + '\' + arquivo, true);
        ftpupdate.Disconnect;
        frmproutupdate.AdvGlowButton1.Enabled := True;
        frmproutupdate.AdvGlowButton2.Enabled := True;
        frmproutupdate.AdvGlowButton3.Enabled := True;
        FileSetDate(diretorio + '\' + arquivo, DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));
        frmproutupdate.Panel3.Caption := 'Status: Arquivos descarregados com sucesso...';
        frmproutupdate.lblstatus.Caption := '.';
        frmproutupdate.lblrestante.Caption:='0'+ ' KBytes';
      end
      else
      begin

        prog1 := GetBuildInfo(diretorio + '\' + arquivo);
        prog2 := IniVersao.ReadString(arquivo, 'Versao', '');
        if (prog1 < prog2) then
        begin
          frmproutupdate.Panel3.Caption := 'Status: Descarregando arquivos,aguarde...';
          DeleteFile(Pchar(ExtractFilePath(ParamStr(0)) + arquivo + '.old'));
          RenameFile(ExtractFilePath(ParamStr(0)) + arquivo,
            ExtractFilePath(ParamStr(0)) + arquivo + '.old');
          ftpupdate.get(arquivo, diretorio + '\' + arquivo, true);
          FileSetDate(diretorio + '\' + arquivo, DateTimeToFileDate(ftpupdate.DirectoryListing.Items[0].ModifiedDate));
          ftpupdate.Disconnect;
          IniVersao.Free;
          frmproutupdate.Panel3.Caption := 'Status: Arquivos descarregados com sucesso...';
          frmproutupdate.lblstatus.Caption := '.';
          frmproutupdate.lblrestante.Caption:='0'+ ' KBytes';
        end
        else
        begin
          frmproutupdate.Panel3.Caption := 'Status: Voçe já possui a versão mais recente do arquivo...!';
          IniVersao.Free;
          frmproutupdate.lblstatus.Caption := '.';
          frmproutupdate.lblrestante.Caption:='0'+ ' KBytes';
        end;
      end;
      frmproutupdate.AdvGlowButton1.Enabled := True;
      frmproutupdate.AdvGlowButton2.Enabled := True;
      frmproutupdate.AdvGlowButton3.Enabled := True;
      frmproutupdate.ftpupdate.Disconnect;
      IniVersao.Free;
      frmproutupdate.Gauge1.Progress := 0;
      frmproutupdate.Repaint;
    end;

    terminate;

  end;
end;

procedure threadupdate.Execute;
begin
  conectar();
end;

end.

