program fontBrowser;

uses
  Forms,
  UMain in 'UMain.pas' {frmFontBrowser};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'Keima''s System Font Browser';
  Application.CreateForm(TfrmFontBrowser, frmFontBrowser);
  Application.Run;
end.
