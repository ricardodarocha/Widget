unit uMaterialApp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Vcl.Buttons, dxGDIPlusClasses, Vcl.ComCtrls, VclTee.TeeGDIPlus, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs,
  VCLTee.Chart;

type

  TTopBar = class
    class function Build(AOwner: TComponent): TPanel;
  end;

   TArrayOfPixel = array[0..102400 * 33 -1] of TRGBTriple;
     PArrayOfPixel = ^TArrayOfPixel;

   THelpLineChart = class helper for tChart
    procedure Generate(const Inclinacao: Integer = 1);
   end;

  TMaterialApp = class(TForm)
    Panel1: TPanel;
    lbIcon: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ScrollBox1: TScrollBox;
    pCard: TPanel;
    Image1: TImage;
    Panel4: TPanel;
    Panel5: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton400: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    Memo1: TMemo;
    Panel2: TPanel;
    Image2: TImage;
    Panel3: TPanel;
    Panel6: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Memo2: TMemo;
    SpeedButton11: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton16: TSpeedButton;
    Panel7: TPanel;
    Image3: TImage;
    Label12: TLabel;
    Label13: TLabel;
    SpeedButton25: TSpeedButton;
    SpeedButton24: TSpeedButton;
    Label14: TLabel;
    Label15: TLabel;
    Panel9: TPanel;
    SpeedButton18: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    Memo3: TMemo;
    Panel8: TPanel;
    Image4: TImage;
    Label11: TLabel;
    Label16: TLabel;
    SpeedButton26: TSpeedButton;
    SpeedButton27: TSpeedButton;
    Panel10: TPanel;
    SpeedButton28: TSpeedButton;
    SpeedButton29: TSpeedButton;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    SpeedButton33: TSpeedButton;
    Memo4: TMemo;
    Label17: TLabel;
    Label18: TLabel;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    Panel14: TPanel;
    Image6: TImage;
    Label25: TLabel;
    Label26: TLabel;
    SpeedButton49: TSpeedButton;
    SpeedButton50: TSpeedButton;
    SpeedButton51: TSpeedButton;
    SpeedButton52: TSpeedButton;
    SpeedButton54: TSpeedButton;
    SpeedButton56: TSpeedButton;
    SpeedButton57: TSpeedButton;
    SpeedButton58: TSpeedButton;
    SpeedButton59: TSpeedButton;
    Panel15: TPanel;
    SpeedButton60: TSpeedButton;
    SpeedButton61: TSpeedButton;
    SpeedButton62: TSpeedButton;
    SpeedButton63: TSpeedButton;
    SpeedButton64: TSpeedButton;
    SpeedButton65: TSpeedButton;
    SpeedButton66: TSpeedButton;
    SpeedButton67: TSpeedButton;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    SpeedButton68: TSpeedButton;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Panel16: TPanel;
    Image7: TImage;
    Label36: TLabel;
    Label37: TLabel;
    SpeedButton76: TSpeedButton;
    SpeedButton77: TSpeedButton;
    Panel18: TPanel;
    SpeedButton81: TSpeedButton;
    SpeedButton83: TSpeedButton;
    Panel19: TPanel;
    SpeedButton78: TSpeedButton;
    Panel20: TPanel;
    SpeedButton69: TSpeedButton;
    Label38: TLabel;
    Label40: TLabel;
    Label42: TLabel;
    Panel22: TPanel;
    SpeedButton70: TSpeedButton;
    Label39: TLabel;
    Chart1: TChart;
    Series1: TLineSeries;
    SpeedButton71: TSpeedButton;
    SpeedButton75: TSpeedButton;
    Label45: TLabel;
    procedure Hover(Sender: TObject);
    procedure EndHover(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    function AverageColor(): TColor;
  public
  end;

var
  App: TMaterialApp;

implementation

{$R *.dfm}

procedure TMaterialApp.Hover(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clSilver;
end;

function TMaterialApp.AverageColor: TColor;
var BMP: TBitmap;  R,G,B: Byte;
  row : PArrayOfPixel;
begin
  bmp := TBitmap.Create;
  bmp.pixelformat := pf24bit;
  bmp.LoadFromFile('C:\Delphi\RDW Course\Images\banner-de-pizza-moderno_23-2147648317.jpg');
  try
    for var y := 0 to bmp.Height-1 do
    begin
      row := bmp.ScanLine[y];
      for var x := 0 to bmp.Width -1 do
      begin
        r := r + row[x].rgbtRed;
        g := g + row[x].rgbtGreen;
        b := b + row[x].rgbtBlue;
      end;
    end;
    r := r div (bmp.Height*bmp.Width);
    g := g div (bmp.Height*bmp.Width);
    b := b div (bmp.Height*bmp.Width);
    result := rgb(r,g,b);
  finally

  end;
end;

procedure TMaterialApp.EndHover(Sender: TObject);
begin
  TLabel(Sender).Font.Color := clWhite;
end;

procedure TMaterialApp.FormShow(Sender: TObject);
begin
  Chart1.Generate;
end;

{ TTopBar }

class function TTopBar.Build(AOwner: TComponent): TPanel;
begin
  result := TPanel.Create(AOwner);
  result.Padding.Left := 10;
  result.Padding.Right := 10;
  with TLabel.Create(result) do
  begin
    Parent := result;
    Align := alLeft;
    Alignment := taCenter;


  end;
end;

{ THelpLineChart }

procedure THelpLineChart.Generate(const Inclinacao: Integer);
begin
 randomize;
  /// Este método altera apenas a serie 1, que já pode estar formatada
  TChart(Self).Series[0].Clear;
    for var I  := 0 to 30  do
       TChart(Self).Series[0].add(random(60 + 2 * I * inclinacao))
end;

end.
