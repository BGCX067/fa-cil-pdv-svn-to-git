program Facil_servidor;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := '..:: Fácil Empresarial - Servidor::..';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
