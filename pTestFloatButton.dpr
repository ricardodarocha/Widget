program pTestFloatButton;

uses
  Vcl.Forms,
  uTestFloatButton in 'uTestFloatButton.pas' {Form1},
  uFloatButton in 'uFloatButton.pas' {FloatButton},
  uMenuFactory in 'uMenuFactory.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TFloatButton, FloatButton);
  Application.Run;
end.
