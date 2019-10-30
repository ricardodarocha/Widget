unit uFloatButton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, GDIPAPI, GDIPOBJ, GDIPUTIL ;

type
  TFloatButton = class(TForm)
    SpeedButton1: TSpeedButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Show(widget: TWinControl; Acao: TNotifyEvent = Nil); reintroduce;
  end;

var
  FloatButton: TFloatButton;

implementation

{$R *.dfm}

procedure TFloatButton.FormCreate(Sender: TObject);

 var
  graphics: TGPGraphics;
  SolidPen: TGPPen;
begin
  graphics := TGPGraphics.Create(canvas.Handle);
  graphics.SetSmoothingMode(SmoothingModeAntiAlias);
  SolidPen := TGPPen.Create($FFFFFFFF, 31);
  graphics.DrawEllipse(SolidPen, 0,0,height,width);
  graphics.Free;
  SolidPen.Free;
end;

procedure TFloatButton.Show(widget: TWinControl; Acao: TNotifyEvent = Nil);
begin
  inherited Show();
  self.left := Widget.width - (self.width) -10+ widget.Left;
  self.top := Widget.Height - (self.Height) - 10+ widget.Top;
  self.Visible := true;

  if Assigned(acao) then
    SpeedButton1.OnClick := Acao;
end;

end.
