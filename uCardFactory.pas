unit uCardFactory;



interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.ExtCtrls,
  Vcl.ComCtrls, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls, Vcl.Buttons;


type

  TCleaner = class helper for tpanel
    procedure Clean;
  end;

  TCard = class
    fInstance: TPanel;
  private
    FSubtitulo: String;
    FTitulo: String;
    FLabelSubTitulo: TLabel;
    FLabelTitulo: TLabel;
    FBotao2: TSpeedButton;
    FBarraColorida: TPanel;
    FLabelValor: TLabel;
    FBotao1: TSpeedButton;
    FCorBarraColorida: TColor;
    FBotao_Icon2: TSpeedButton;
    FBotao_Icon3: TSpeedButton;
    FBotao_Icon1: TSpeedButton;
    FValue: String;
    FMemoMensagem: TMemo;
    FMensagem: String;
    FIcone: widestring;
    FMainPanel: TPanel;
    FBotao_IconePrincipal: TSpeedButton;
    FTop: Integer;
    FLeft: Integer;
    FAlign: TAlign;
    FHint: String;
    FCorPrimaria: TColor;
    FWidth: Integer;
    FColor: TColor;
    FCaption: String;
    FHeight: Integer;
    procedure SetBarraColorida(const Value: TPanel);
    procedure SetBotao_Icon1(const Value: TSpeedButton);
    procedure SetBotao_Icon2(const Value: TSpeedButton);
    procedure SetBotao_Icon3(const Value: TSpeedButton);
    procedure SetBotao1(const Value: TSpeedButton);
    procedure SetBotao2(const Value: TSpeedButton);
    procedure SetCorBarraColorida(const Value: TColor);
    procedure SetIcone(const Value: widestring);
    procedure SetLabelSubTitulo(const Value: TLabel);
    procedure SetLabelTitulo(const Value: TLabel);
    procedure SetLabelValor(const Value: TLabel);
    procedure SetMemoMensagem(const Value: TMemo);
    procedure SetMensagem(const Value: String);
    procedure SetSubtitulo(const Value: String);
    procedure SetTitulo(const Value: String);
    procedure SetValue(const Value: String);
    procedure SetMainPanel(const Value: TPanel);
    procedure SetBotao_IconePrincipal(const Value: TSpeedButton);
    procedure SetLeft(const Value: Integer);
    procedure SetTop(const Value: Integer);
    procedure SetAlign(const Value: TAlign);
    procedure SetCaption(const Value: String);
    procedure SetColor(const Value: TColor);
    procedure SetCorPrimaria(const Value: TColor);
    procedure SetHeight(const Value: Integer);
    procedure SetHint(const Value: String);
    procedure SetWidth(const Value: Integer);
    function GetCorPrimaria: TColor;
  private
    procedure AcaoFavoritar(Sender: TObject);
  public
    class function Build(aOwner: TWinControl; const aTitulo: widestring = ''; const aSubtitulo: widestring = ''; const
  aMensagem: widestring = '';const aIcone: widestring = '';const acao1: widestring = '';const acao2: widestring = ''; BotaoIcone1: WideString = '💛'; BotaoIcone2: WideString = '🕗'; BotaoIcone3: WideString= '⋮'): TCard;

    class function Setup(Panel: TPanel; aLabelTitulo: TLabel = nil; aLabelSubtitulo: TLabel  = nil; aLabelValor: TLabel  = nil; aMemo: TMemo = nil; aBotaoIconePrincipal: TSpeedButton = nil;
    aBotaoAcao1: TSpeedButton = nil; aBotaoAcao2: TSpeedButton = nil;
    aBotaoIcone1: TSpeedButton = Nil; aBotaoIcone2: TSpeedButton = Nil; aBotaoIcone3: TSpeedButton = Nil): TCard; overload;

    function Setup(Panel: TPanel;const aTitulo: widestring = ''; const aSubtitulo: widestring = ''; const
    aMensagem: widestring = '';const aIcone: widestring = '';const acao1: widestring = '';const acao2: widestring = ''; BotaoIcone1: WideString = '💛'; BotaoIcone2: WideString = '🕗'; BotaoIcone3: WideString = '⋮';
    aLabelTitulo: TLabel = nil; aLabelSubtitulo: TLabel  = nil; aLabelValor: TLabel  = nil; aMemo: TMemo = nil; aBotaoIconePrincipal: TSpeedButton = nil;
    aBotaoAcao1: TSpeedButton = nil; aBotaoAcao2: TSpeedButton = nil;
    aBotaoIcone1: TSpeedButton = Nil; aBotaoIcone2: TSpeedButton = Nil; aBotaoIcone3: TSpeedButton = Nil): TCard; Overload;

    procedure DistribuirIcones;

    property MainPanel: TPanel read FMainPanel write SetMainPanel;
    property LabelTitulo: TLabel read FLabelTitulo write SetLabelTitulo;
    property LabelSubTitulo: TLabel read FLabelSubTitulo write SetLabelSubTitulo;
    property MemoMensagem: TMemo read FMemoMensagem write SetMemoMensagem;
    property LabelValor: TLabel read FLabelValor write SetLabelValor;

    property Botao_IconePrincipal: TSpeedButton read FBotao_IconePrincipal write SetBotao_IconePrincipal;
    property Botao1: TSpeedButton read FBotao1 write SetBotao1;
    property Botao2: TSpeedButton read FBotao2 write SetBotao2;

    property Botao_Icon1: TSpeedButton read FBotao_Icon1 write SetBotao_Icon1;
    property Botao_Icon2: TSpeedButton read FBotao_Icon2 write SetBotao_Icon2;
    property Botao_Icon3: TSpeedButton read FBotao_Icon3 write SetBotao_Icon3;

    property BarraColorida: TPanel read FBarraColorida write SetBarraColorida;

    property Titulo: String read FTitulo write SetTitulo;
    property Subtitulo: String read FSubtitulo write SetSubtitulo;
    property Mensagem: String read FMensagem write SetMensagem;
    property Icone: widestring read FIcone write SetIcone;
    property Value: String read FValue write SetValue;

    property CorBarraColorida: TColor read FCorBarraColorida write SetCorBarraColorida;

    //
    property Left: Integer read FLeft write SetLeft;
    property Top : Integer read FTop write SetTop;
    property Color: TColor read FColor write SetColor;
    property Caption : String read FCaption write SetCaption;
    property Width : Integer read FWidth write SetWidth;
    property Height: Integer read FHeight write SetHeight;
    property Align: TAlign read FAlign write SetAlign;
    property Hint: String read FHint write SetHint;
    property CorPrimaria: TColor read GetCorPrimaria write SetCorPrimaria;

end;

TCardFactory = class (TCard)

end;

implementation

{ TCard }

uses utfSymbols.Button;

procedure TCard.AcaoFavoritar(Sender: TObject);
begin
  if Sender is TSpeedButton then
  begin
    if TSpeedButton(Sender).Caption = _iCoracao then
      TSpeedButton(Sender).Caption := _iCoracaoPreenchido
    else if TSpeedButton(Sender).Caption = _iCoracaoPreenchido then
      TSpeedButton(Sender).Caption := _iCoracao;

  end;
end;

class function TCard.Build(aOwner: TWinControl; const aTitulo: widestring = ''; const aSubtitulo: widestring = ''; const
  aMensagem: widestring = '';const aIcone: widestring = '';const acao1: widestring = '';const acao2: widestring = ''; BotaoIcone1: WideString = '💛'; BotaoIcone2: WideString = '🕗'; BotaoIcone3: WideString = '⋮'): TCard;

  var PanelCard: TPanel;
  begin
  Result := TCard.Create;

  PanelCard := TPanel.Create(aOwner);
  PanelCard.Parent := aOwner;
  PanelCard.Clean;
  PanelCard.Width := 343;
  PanelCard.Height := 227;

  With result do
  begin
    Setup(PanelCard, aTitulo, aSubtitulo, aMensagem, aIcone, Acao1, Acao2, BotaoIcone1, BotaoIcone2, BotaoIcone3);
    Titulo := aTitulo;
    Subtitulo := aSubtitulo;
    Mensagem := aMensagem;
    Icone := aIcone;
    CorPrimaria := $00FC0361; //Azul
    Color := clWhite;
  end;
end;

procedure TCard.DistribuirIcones;
begin
  Botao_Icon3.Left := 20;
  Botao_Icon2.Left := (Botao_Icon1.Left - Botao_Icon3.Left + Botao_Icon2.Width) div 2;
end;

function TCard.GetCorPrimaria: TColor;
begin
  result := FCorPrimaria;
  if (FCorPrimaria = clNone) or (FCorPrimaria = 0) then
  result := $00FC0361; //Backup azul
end;

procedure TCard.SetAlign(const Value: TAlign);
begin
FAlign := Value;
if assigned(MainPanel) then
   MainPanel.Align := Value;
end;

procedure TCard.SetBarraColorida(const Value: TPanel);
begin
  FBarraColorida := Value;
end;

procedure TCard.SetBotao1(const Value: TSpeedButton);
begin
  FBotao1 := Value;
end;

procedure TCard.SetBotao2(const Value: TSpeedButton);
begin
  FBotao2 := Value;
end;

procedure TCard.SetBotao_Icon1(const Value: TSpeedButton);
begin
  FBotao_Icon1 := Value;
end;

procedure TCard.SetBotao_Icon2(const Value: TSpeedButton);
begin
  FBotao_Icon2 := Value;
end;

procedure TCard.SetBotao_Icon3(const Value: TSpeedButton);
begin
  FBotao_Icon3 := Value;
end;

procedure TCard.SetBotao_IconePrincipal(const Value: TSpeedButton);
begin
  FBotao_IconePrincipal := Value;
end;

procedure TCard.SetCaption(const Value: String);
begin
  FCaption := Value;
  if assigned(LabelTitulo) then LabelTitulo.caption := Value;
end;

procedure TCard.SetColor(const Value: TColor);
begin
  FColor := Value;

  if assigned(MainPanel) then MainPanel.Color := Value;
end;

procedure TCard.SetCorBarraColorida(const Value: TColor);
begin
  FCorBarraColorida := Value;
end;

procedure TCard.SetCorPrimaria(const Value: TColor);
begin
  FCorPrimaria := Value;
end;

procedure TCard.SetHeight(const Value: Integer);
begin
  FHeight := Value;
  if assigned(MainPanel) then MainPanel.Height := Value;

end;

procedure TCard.SetHint(const Value: String);
begin
  FHint := Value;
  if assigned(Botao_IconePrincipal) then
  begin
    Botao_IconePrincipal.Hint := Hint;
    Botao_IconePrincipal.ShowHint := Value <> EmptyStr;
  end;

end;

procedure TCard.SetIcone(const Value: widestring);
begin
  FIcone := Value;
end;

procedure TCard.SetLabelSubTitulo(const Value: TLabel);
begin
  FLabelSubTitulo := Value;
end;

procedure TCard.SetLabelTitulo(const Value: TLabel);
begin
  FLabelTitulo := Value;
end;

procedure TCard.SetLabelValor(const Value: TLabel);
begin
  FLabelValor := Value;
end;

procedure TCard.SetLeft(const Value: Integer);
begin
  FLeft := Value;
  if assigned(MainPanel) then MainPanel.Left := Value;
end;

procedure TCard.SetMainPanel(const Value: TPanel);
begin
  FMainPanel := Value;
end;

procedure TCard.SetMemoMensagem(const Value: TMemo);
begin
  FMemoMensagem := Value;
end;

procedure TCard.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

procedure TCard.SetSubtitulo(const Value: String);
begin
  FSubtitulo := Value;
  LabelSubTitulo.Caption := Value;
end;

procedure TCard.SetTitulo(const Value: String);
begin
  FTitulo := Value;
  LabelTitulo.Caption := Value;
end;

procedure TCard.SetTop(const Value: Integer);
begin
  FTop := Value;
  if assigned(MainPanel) then MainPanel.Top := Value;
end;

class function TCard.Setup(Panel: TPanel; aLabelTitulo, aLabelSubtitulo, aLabelValor: TLabel; aMemo: TMemo; aBotaoIconePrincipal, aBotaoAcao1, aBotaoAcao2, aBotaoIcone1,
  aBotaoIcone2, aBotaoIcone3: TSpeedButton): TCard;
begin
  result := TCard.Create;
  result.CorPrimaria := $00FC0361; //'Azul
  result.Setup(Panel, '', '', '',  '',  '', '', '' , '', '', aLabelTitulo, aLabelSubtitulo, aLabelValor, aMemo, aBotaoIconePrincipal, aBotaoAcao1, aBotaoAcao2, aBotaoIcone1,
  aBotaoIcone2, aBotaoIcone3)
end;

function TCard.Setup(Panel: TPanel;const aTitulo: widestring = ''; const aSubtitulo: widestring = ''; const
    aMensagem: widestring = '';const aIcone: widestring = '';const acao1: widestring = '';const acao2: widestring = ''; BotaoIcone1: WideString = '💛'; BotaoIcone2: WideString = '🕗'; BotaoIcone3: WideString = '⋮';
    aLabelTitulo: TLabel = nil; aLabelSubtitulo: TLabel  = nil; aLabelValor: TLabel  = nil; aMemo: TMemo = nil; aBotaoIconePrincipal: TSpeedButton = nil;
    aBotaoAcao1: TSpeedButton = nil; aBotaoAcao2: TSpeedButton = nil;
    aBotaoIcone1: TSpeedButton = Nil; aBotaoIcone2: TSpeedButton = Nil; aBotaoIcone3: TSpeedButton = Nil): TCard;
begin
  if Panel = Nil then
    Raise Exception.Create('Setup requer um Painel. Use a alternativa Build para Criar um Card Vazio');
    MainPanel := Panel;
    MainPanel.clean;
    {$REGION 'Criar controles'}
     if aBotaoIconePrincipal = Nil then Botao_IconePrincipal := TSpeedButton.Create(MainPanel)
     else Botao_IconePrincipal := aBotaoIconePrincipal;

     if aLabelTitulo = Nil then LabelTitulo:= TLabel.Create(MainPanel)
     else LabelTitulo := aLabelTitulo;

     if aLabelSubtitulo = Nil then LabelSubTitulo:= TLabel.Create(MainPanel)
     else LabelSubtitulo := aLabelSubtitulo;

     if aLabelValor = Nil then LabelValor:= TLabel.Create(MainPanel)
     else LabelValor := aLabelValor;

     if aBotaoAcao1 = Nil then Botao1 := TSpeedButton.Create(MainPanel)
     else Botao1 := aBotaoAcao1;

     if aBotaoAcao2 = Nil then Botao2 := TSpeedButton.Create(MainPanel)
     else Botao2 := aBotaoAcao1;

     if aBotaoIcone1 = Nil then Botao_Icon1 := TSpeedButton.Create(MainPanel)
     else Botao_Icon1 := aBotaoIcone1;

     if aBotaoIcone2 = Nil then Botao_Icon2 := TSpeedButton.Create(MainPanel)
     else Botao_Icon2 := aBotaoIcone2;

     if aBotaoIcone3 = Nil then Botao_Icon3 := TSpeedButton.Create(MainPanel)
     else Botao_Icon3 := aBotaoIcone3;

    {$ENDREGION}

    Botao_IconePrincipal.Parent := MainPanel;
    Botao_IconePrincipal.Flat := true;
    Botao_IconePrincipal.caption := aIcone;
    Botao_IconePrincipal.left := 280;
    Botao_IconePrincipal.top := 18;
    Botao_IconePrincipal.Width := 55;
    Botao_IconePrincipal.Height := 48;
    Botao_IconePrincipal.ParentFont := false;
    Botao_IconePrincipal.Font.Color := corPrimaria;
    Botao_IconePrincipal.Font.Size := 24;
    if aIcone = _iNotificacao then Botao_IconePrincipal.Font.Style := [fsBold];
    Botao_IconePrincipal.Anchors := [akTop, akRight];

    LabelTitulo.Parent := MainPanel;
    LabelTitulo.Caption := aTitulo;
//    LabelTitulo.Font.Name := 'Tahoma';
    LabelTitulo.Font.Size := 12;
//    LabelTitulo.Font.Style := [fsBold];
    LabelTitulo.Top := 19;
    LabelTitulo.Left := 24;

    LabelSubTitulo.Parent := MainPanel;
    LabelSubTitulo.Caption := aSubTitulo;
//    LabelSubTitulo.Font.Name := 'Tahoma';
    LabelSubTitulo.Font.Size := 12;
    LabelSubTitulo.Font.Color := clGrayText;
    LabelSubTitulo.Font.Style := [];
    LabelSubTitulo.Top := 44;
    LabelSubTitulo.Left := 24;


    LabelValor.Parent := MainPanel;
    LabelValor.Caption := '';
//    LabelValor.Font.Name := 'Tahoma';
    LabelValor.Font.Size := 12;
    LabelValor.Font.Style := [fsBold];
    LabelValor.Top := 113;
    LabelValor.Left := 24;
//    MemoMensagem: TMemo re

    Botao1.Parent := MainPanel;
    Botao1.Flat := true;
    Botao1.caption := acao1;
    Botao1.left := 25;
    Botao1.width := 68;
    Botao1.Font.Color := corPrimaria;
    Botao1.Font.Size := 11;
    Botao1.Font.Style  := [fsBold];
    Botao1.Top := MainPanel.Height - 40;
    Botao1.Anchors := [akBottom, akLeft];

    Botao2.ParentFont := false;
    Botao2.Parent := MainPanel;
    Botao2.Flat := true;
    Botao2.caption := acao2;
    Botao2.left := 95;
    Botao2.width := 68;
    Botao2.Font.Color := clGrayText;
    Botao2.Font.Size := 11;
    Botao2.Font.Style  := [fsBold];
    Botao2.Top := MainPanel.Height - 40;
    Botao2.Anchors := [akBottom, akLeft];

    Botao_Icon1.ParentFont := false;
    Botao_Icon1.Parent := MainPanel;
    Botao_Icon1.Flat := true;
    Botao_Icon1.caption := BotaoIcone3;
    Botao_Icon1.Font.Size := 20;
    Botao_Icon1.Font.Color := clGrayText;
    Botao_Icon1.Width := 44;
    Botao_Icon1.Height := 48;
    Botao_Icon1.Top := MainPanel.Height - 51;
    Botao_Icon1.Left := MainPanel.Width - 47 - 48 * 0;
    Botao_Icon1.Anchors := [akBottom, akRight];
    if (Botao_Icon1.Caption = _iCoracao) or (Botao_Icon1.Caption = _iCoracaoPreenchido) then
      Botao_Icon1.OnClick := AcaoFavoritar;

    Botao_Icon2.ParentFont := false;
    Botao_Icon2.Parent := MainPanel;
    Botao_Icon2.Flat := true;
    Botao_Icon2.caption := BotaoIcone2;
    Botao_Icon2.Font.Size := 20;
    Botao_Icon2.Font.Color := clGrayText;
    Botao_Icon2.Width := 44;
    Botao_Icon2.Height := 48;
    Botao_Icon2.Top := MainPanel.Height - 51;
    Botao_Icon2.Left := MainPanel.Width - 47 - 48 * 1;
    Botao_Icon2.Anchors := [akBottom, akRight];
    if (Botao_Icon2.Caption = _iCoracao) or (Botao_Icon2.Caption = _iCoracaoPreenchido) then
      Botao_Icon2.OnClick := AcaoFavoritar;

    Botao_Icon3.ParentFont := false;
    Botao_Icon3.Parent := MainPanel;
    Botao_Icon3.Flat := true;
    Botao_Icon3.caption := BotaoIcone1;
    Botao_Icon3.Font.Size := 20;
    Botao_Icon3.Font.Color := clGrayText;
    Botao_Icon3.Width := 44;
    Botao_Icon3.Height := 48;
    Botao_Icon3.Top := MainPanel.Height - 51;
    Botao_Icon3.Left := MainPanel.Width - 47 - 48 * 2;
    Botao_Icon3.Anchors := [akBottom, akRight];
    if (Botao_Icon3.Caption = _iCoracao) or (Botao_Icon3.Caption = _iCoracaoPreenchido) then
      Botao_Icon3.OnClick := AcaoFavoritar;
end;


procedure TCard.SetValue(const Value: String);
begin
  FValue := Value;
  if assigned(LabelValor) then
    LabelValor.Caption := Value;
end;

procedure TCard.SetWidth(const Value: Integer);
begin
  FWidth := Value;
  if assigned(MainPanel) then MainPanel.Width := Value;
end;

{ TCleaner }

procedure TCleaner.Clean;
begin
  TPanel(Self).ParentColor := False;
  TPanel(Self).Color := clwhite;
  TPanel(Self).BevelInner := bvNone;
//  TPanel(Self).BevelKind := bkNone;
//  TPanel(Self).BevelOuter := bvNone;
//  TPanel(Self).BorderStyle := bsNone;
  TPanel(Self).caption := '';
end;

end.
