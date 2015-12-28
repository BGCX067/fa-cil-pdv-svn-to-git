program Facil_configurador;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  funcoes in 'funcoes.pas',
  cnif in 'cnif.pas' {frmCNIF},
  unECF in 'unECF.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Configurações do Sistema';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
