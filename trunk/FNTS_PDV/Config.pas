unit Config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBAccess, IBC, MemDS, Buttons,
  ExtCtrls, EditBtn, PageView, AdvEdit, AdvEdBtn, AdvDirectoryEdit, ExtDlgs,
  pngimage, Spin, wwdbedit, Wwdotdot, Wwdbcomb, XPMan, AdvReflectionImage,
  AdvGlowButton, acPNG;

type
  TfrmConfig = class(TForm)
    qrconfig: TIBCQuery;
    dsconfig: TIBCDataSource;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    GroupBox4: TGroupBox;
    chkVendedor: TCheckBox;
    GroupBox5: TGroupBox;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    GroupBox3: TGroupBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox6: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    CheckHabilitaFotoProduto: TCheckBox;
    Label5: TLabel;
    EditImgProdutos: TAdvDirectoryEdit;
    GroupBox6: TGroupBox;
    Label7: TLabel;
    CheckLogoMarca: TCheckBox;
    EditLogoMarca: TAdvEditBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    GroupBox7: TGroupBox;
    Combo_Usuario: TComboBox;
    Label8: TLabel;
    EditSenhaUsuario: TEdit;
    Label10: TLabel;
    pnTitulo: TPanel;
    Image5: TImage;
    GroupBox8: TGroupBox;
    Label11: TLabel;
    Label9: TLabel;
    Combo_Tesouraria: TComboBox;
    Combo_Caixa: TComboBox;
    XPManifest1: TXPManifest;
    btn1: TAdvGlowButton;
    btn2: TAdvGlowButton;
    AdvReflectionImage1: TAdvReflectionImage;
    img1: TAdvReflectionImage;
    img2: TAdvReflectionImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure CheckHabilitaFotoProdutoClick(Sender: TObject);
    procedure EditLogoMarcaClickBtn(Sender: TObject);
    procedure CheckLogoMarcaClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
  private
    { Private declarations }
    procedure GravaConfiguracoesLocais;
    procedure LerConfiguracoes;
    procedure LerCaixa;
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses modulo, Funcoes, UFuncoes, principal;

{$R *.dfm}

procedure TfrmConfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmConfig.BitBtn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then qrconfig.cancel;
  close;
end;

procedure TfrmConfig.FormShow(Sender: TObject);
begin
  chkVendedor.Checked := LerParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', False);
  qrconfig.open;

  LerConfiguracoes;
end;

procedure TfrmConfig.BitBtn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok+MB_ICONINFORMATION);

   GravaConfiguracoesLocais;

  Close;

end;

procedure TfrmConfig.CheckHabilitaFotoProdutoClick(Sender: TObject);
begin
  EditimgProdutos.Enabled := CheckHabilitaFotoProduto.Checked;
end;

procedure TfrmConfig.GravaConfiguracoesLocais;
begin
  {: FOTO PRODUTOS}
  GravaINI(sConfiguracoes,'PDV','HAB_IMG', BoolToStr(CheckHabilitaFotoProduto.Checked));
  GravaINI(sConfiguracoes,'PDV','CAMINHO_IMG', EditImgProdutos.Text);

  {: LOGO MARCA}
  GravaINI(sConfiguracoes,'PDV','HAB_LOGO', BoolToStr(CheckLogoMarca.Checked));
  GravaINI(sConfiguracoes,'PDV','CAMINHO_LOGO', EditLogoMarca.Text);

  {: USUARIO}
  GravaINI(sConfiguracoes,'LOGIN','USUARIO', Combo_Usuario.Text);
  GravaINI(sConfiguracoes,'LOGIN','SENHA', Cript('C',EditSenhaUsuario.Text));

  {: CAIXA}
  GravaINI(sConfiguracoes,'CAIXA','NUMERO', Combo_Caixa.Text);
  GravaINI(sConfiguracoes,'CAIXA','TESOURARIA', Combo_Tesouraria.Text);

end;

procedure TfrmConfig.LerConfiguracoes;
begin

  {: FOTO PRODUTOS}
  CheckHabilitaFotoProduto.Checked := StrToBool( LerINI(sConfiguracoes,'PDV','HAB_IMG', BoolToStr(false)) );
  EditImgProdutos.Text  := LerINI(sConfiguracoes,'PDV','CAMINHO_IMG',ExtractFilePath(Application.ExeName) + '\img\produtos\');

  {: LOGO MARCA}
  CheckLogoMarca.Checked := StrToBool( LerINI(sConfiguracoes,'PDV','HAB_LOGO', BoolToStr(false)) );
  EditLogoMarca.Text  := LerINI(sConfiguracoes,'PDV','CAMINHO_LOGO', '');

  LerCaixa;

end;

procedure TfrmConfig.EditLogoMarcaClickBtn(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    EditLogoMarca.Text := OpenPictureDialog1.FileName;
end;

procedure TfrmConfig.CheckLogoMarcaClick(Sender: TObject);
begin
  EditLogoMarca.Enabled := CheckLogoMarca.Checked;
end;

procedure TfrmConfig.LerCaixa;
begin

   frmmodulo.query.close;
   frmmodulo.query.sql.clear;
   frmmodulo.query.sql.add('select * from adm');
   frmmodulo.query.sql.add('where codigo < ' + QuotedStr('100'));
   frmmodulo.query.sql.add('order by codigo');
   frmmodulo.query.open;

   Combo_Usuario.Items.Clear;

   Combo_Caixa.Items.Clear;
   Combo_Tesouraria.Items.Clear;
   Combo_Tesouraria.Items.Add('DESATIVADO');

   while not frmmodulo.query.Eof do
   begin
     IF frmmodulo.query.Fieldbyname('INFO1').AsString <> 'DELPHOS_1' THEN
     Combo_Usuario.Items.Add(frmmodulo.query.Fieldbyname('INFO1').AsString);

     Combo_Caixa.Items.Add(frmmodulo.query.Fieldbyname('CODIGO').AsString);

     Combo_Tesouraria.Items.Add(frmmodulo.query.Fieldbyname('CODIGO').AsString);
     frmmodulo.query.Next;
     Application.ProcessMessages;
   end;

  Combo_Usuario.Text :=  LerIni(sConfiguracoes,'LOGIN','USUARIO', '');
  EditSenhaUsuario.Text := Cript('D',LerIni(sConfiguracoes,'LOGIN','SENHA', ''));

  Combo_Tesouraria.Text := LerIni(sConfiguracoes,'CAIXA','TESOURARIA', '');
  Combo_Caixa.Text := LerIni(sConfiguracoes,'CAIXA','NUMERO', '99') ;
  iNumCaixa := frmPrincipal.IsInteger(Combo_Caixa.Text);


end;

procedure TfrmConfig.btn1Click(Sender: TObject);
begin
  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);

  if qrconfig.state = dsedit then
    qrconfig.post;

  application.messagebox('É necessário reiniciar o sistema para atualizar as novas configurações!',
    'Aviso', mb_ok+MB_ICONINFORMATION);

   GravaConfiguracoesLocais;

  Close;

end;

procedure TfrmConfig.btn2Click(Sender: TObject);
begin
  if qrconfig.state = dsedit then qrconfig.cancel;
  close;

end;

end.
