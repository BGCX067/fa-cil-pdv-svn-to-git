program Facil_Update;

uses
  Forms,
  untfrmproutupdate in 'untfrmproutupdate.pas' {frmproutupdate},
  untthreadupdate in 'untthreadupdate.pas',
  untfrmconfigurar in 'untfrmconfigurar.pas' {frmconfigurar};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Athenas Updater';
  Application.CreateForm(Tfrmproutupdate, frmproutupdate);
  Application.Run;
end.

