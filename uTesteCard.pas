unit uTesteCard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Buttons, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.StorageBin, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmTestcard = class(TForm)
    SpeedButton1: TSpeedButton;
    Panel1: TPanel;
    SpeedButton2: TSpeedButton;
    FlowPanel1: TFlowPanel;
    Notificacoes: TFDMemTable;
    iCod: TIntegerField;
    NotificacoesNovo: TWideStringField;
    NotificacoesNome: TStringField;
    IDescricao: TStringField;
    iQuando: TStringField;
    procedure RenderizarCartao(Sender: TObject);
    procedure OnClickDoBotao(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTestcard: TfrmTestcard;

implementation

{$R *.dfm}

uses uCardFactory, uDataUtf, utfSymbols.Button, uPattern.Iterator;

procedure TfrmTestcard.RenderizarCartao(Sender: TObject);
begin
  with TCard.Build(FlowPanel1, Notificacoes.Fieldbyname('Nome').AsString,
                               Notificacoes.Fieldbyname('Descricao').AsString, '',
//                                                         _iAqua
//                                                      + _iAgricultor
//                                                      + _iGirassol
//                                                      + _iPorco
//                                                      + _iVaca
//                                                      + _iTrator
//                                                      + _iEspiga,
                                Notificacoes.Fieldbyname('Novo').AsString,
                                                       ' ', ' ') do
  begin
    Value := '6,1430 KG';
    Hint := 'Este card ficou legal';
    Color := clWhite;
    MainPanel.ParentColor := False;
    DistribuirIcones;
  end;
end;

procedure TfrmTestcard.OnClickDoBotao(Sender: TObject);
begin
  Notificacoes.Iterate(RenderizarCartao);
end;

end.
