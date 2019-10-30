unit uMenuFactory;

interface

uses  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
      Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, VclTee.TeeGDIPlus, Vcl.ExtCtrls,
      Vcl.ComCtrls, VCLTee.TeEngine, VCLTee.Series, VCLTee.TeeProcs, VCLTee.Chart, Vcl.StdCtrls,
      Vcl.Buttons;

const
  Niveis = 3;

type

  TPanelArray = array of TPanel;

  TPanelArrayActions = record helper for TPanelArray

    function Pop: TPanel; //Retorna o ultimo painel da lista, mas remove
    function Last: TPanel;  //Apenas retorna o ultimo
    function Add(Panel: TPanel): Integer;
  end;

  TMaterialMenu = class
    fInstance: TPanel;
    fItem: TPanel;
      fSubitemTitle: TLabel;
      fSubitemSubTitle: TLabel;
      FFaixa1: TShape;
      FFaixa2: TShape;
      LSurroundedIcon: TLabel;
      LIcon: TLabel;
      LRightIcon: TLabel;
      LExIcon: TLabel;
      fSpeedAction: TSpeedButton;
    fOwner: TWinControl;
  private
    FLabelSubTitulo: TLabel;
    FLabelTitulo: TLabel;
    FCorBarraColorida: TColor;

    FBotao_IconePrincipal: TSpeedButton;
    FBotao_Power: TSpeedButton;
    FTop: Integer;
    FLeft: Integer;
    FAlign: TAlign;
    FHint: String;
    FCorPrimaria: TColor;
    FCorSecundaria: TColor;
    FWidth: Integer;
    FColor: TColor;
    FCaption: String;
    FHeight: Integer;
    function GetCorPrimaria: TColor;
    procedure AcaoHideMenu(Sender: TObject);

  private
    FBotao2: TSpeedButton;
    FBarraColorida: TPanel;
    FLabelValor: TLabel;
    FMainPanel: TPanel;
    FBotao1: TSpeedButton;
    FBotao_Icon2: TSpeedButton;
    FBotao_Icon3: TSpeedButton;
    FBotao_Icon1: TSpeedButton;
    FValue: String;
    FMemoMensagem: TMemo;
    FMensagem: String;
    FIcone: widestring;
    fLevels: TPanelArray;
    procedure SetAlign(const Value: TAlign);
    procedure SetBarraColorida(const Value: TPanel);
    procedure SetBotao_Icon1(const Value: TSpeedButton);
    procedure SetBotao_Icon2(const Value: TSpeedButton);
    procedure SetBotao_Icon3(const Value: TSpeedButton);
    procedure SetBotao_IconePrincipal(const Value: TSpeedButton);
    procedure SetBotao1(const Value: TSpeedButton);
    procedure SetBotao2(const Value: TSpeedButton);
    procedure SetCaption(const Value: String);
    procedure SetColor(const Value: TColor);
    procedure SetCorBarraColorida(const Value: TColor);
    procedure SetCorPrimaria(const Value: TColor);
    procedure SetCorSecundaria(const Value: TColor);
    procedure SetHeight(const Value: Integer);
    procedure SetHint(const Value: String);
    procedure SetIcone(const Value: widestring);
    procedure SetLabelSubTitulo(const Value: TLabel);
    procedure SetLabelTitulo(const Value: TLabel);
    procedure SetLabelValor(const Value: TLabel);
    procedure SetLeft(const Value: Integer);
    procedure SetMainPanel(const Value: TPanel);
    procedure SetMemoMensagem(const Value: TMemo);
    procedure SetMensagem(const Value: String);
    procedure SetTop(const Value: Integer);
    procedure SetValue(const Value: String);
    procedure SetWidth(const Value: Integer);
    procedure SetInstance(const Value: TPanel);
    procedure SetOwner(const Value: TWinControl);
    procedure SetItem(const Value: TPanel);
    function getItem: TPanel;

  public
    class function Build(aOwner: TWinControl; const aTitulo: widestring = ''; const aSubtitulo: widestring = ''; const
  aMensagem: widestring = '';const aIcone: widestring = '';const acao1: widestring = '';const acao2: widestring = ''; BotaoIcone1: WideString = '💛'; BotaoIcone2: WideString = '🕗'; BotaoIcone3: WideString= '⋮'): TMaterialMenu;

    class function Setup(Panel: TPanel; aLabelTitulo: TLabel = nil; aLabelSubtitulo: TLabel  = nil; aLabelValor: TLabel  = nil; aMemo: TMemo = nil; aBotaoIconePrincipal: TSpeedButton = nil;
    aBotaoAcao1: TSpeedButton = nil; aBotaoAcao2: TSpeedButton = nil;
    aBotaoIcone1: TSpeedButton = Nil; aBotaoIcone2: TSpeedButton = Nil; aBotaoIcone3: TSpeedButton = Nil): TmaterialMenu; overload;

    class procedure MetodoAutoExpandir(sender: TObject);

    function Setup(Panel: TPanel;const aTitulo: widestring = ''; const aSubtitulo: widestring = ''; const
    aMensagem: widestring = '';const aIcone: widestring = '';const acao1: widestring = '';const acao2: widestring = ''; BotaoIcone1: WideString = '💛'; BotaoIcone2: WideString = '🕗'; BotaoIcone3: WideString = '⋮';
    aLabelTitulo: TLabel = nil; aLabelSubtitulo: TLabel  = nil; aLabelValor: TLabel  = nil; aMemo: TMemo = nil; aBotaoIconePrincipal: TSpeedButton = nil;
    aBotaoAcao1: TSpeedButton = nil; aBotaoAcao2: TSpeedButton = nil;
    aBotaoIcone1: TSpeedButton = Nil; aBotaoIcone2: TSpeedButton = Nil; aBotaoIcone3: TSpeedButton = Nil): TMaterialMenu; Overload;

    function AddItem(const Nome: String; aLevel: Integer = 0): TMaterialMenu;
    function Marcador1(Const Color: TColor = clNone): TMaterialMenu;
    function Marcador2(Const Color: TColor = clNone): TMaterialMenu;
    function Icon(const aIcon: String = '📄'): TMaterialMenu;

    function IconRight(const aIcon: String = '🤍'): TMaterialMenu;
    function IconEx(const aIcon: String = '⯈'): TMaterialMenu;

    function IconSurrounded(const aIcon: String = '🛡'; Color: TColor = ClNone): TMaterialMenu;
    function Titulo(const aTitulo: String): TMaterialMenu;
    function Subtitulo(const aSubtitulo: String): TMaterialMenu;
    function ResizeWidth(const aWidth: Integer): TMaterialMenu;
    function ChangeColor(const Color: TColor): TMaterialMenu;
    function Renderizar: TMaterialMenu;

    function Acao(Acao: TNotifyEvent): TMaterialMenu;


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

    property Mensagem: String read FMensagem write SetMensagem;
    property Icone: widestring read FIcone write SetIcone;
    property Value: String read FValue write SetValue;

    property CorBarraColorida: TColor read FCorBarraColorida write SetCorBarraColorida;
    //
    property Left: Integer read FLeft write SetLeft;
    property Top : Integer read FTop write SetTop;
    property Color: TColor read FColor write SetColor;
    property Caption: String read FCaption write SetCaption;
    property Width: Integer read FWidth write SetWidth;
    property Height: Integer read FHeight write SetHeight;
    property Align: TAlign read FAlign write SetAlign;
    property Hint: String read FHint write SetHint;
    property Instance : TPanel read FInstance write SetInstance;
    property Owner: TWinControl read FOwner write SetOwner;
    property CorPrimaria: TColor read FCorPrimaria write SetCorPrimaria;
    property CorSecundaria: TColor read FCorSecundaria write SetCorSecundaria;
    property Item: TPanel read getItem write SetItem;
end;


implementation

{ TMaterialMenu }


{ TMaterialMenu }

function TMaterialMenu.Acao(Acao: TNotifyEvent): TMaterialMenu;
begin
  result := self;
  fSpeedAction.OnClick := Acao;
end;

procedure TMaterialMenu.AcaoHideMenu(Sender: TObject);
begin

end;

function TMaterialMenu.AddItem(const Nome: String; aLevel: Integer = 0): TMaterialMenu;
var Grupo: TPanel;
begin
  Result := self;
  if aLevel > 0 then
    fLevels.add(Item); // desce um nível. use fLevels.Pop para voltar de nivel :: if aLevel < 0  then fLevels.Pop;

  fItem := TPanel.Create(fOwner);
  if Length(fLevels) <= 1 then
  begin
    fItem.Parent := Instance;
    fItem.Align := alTop;
    fItem.Height := 64;
    fItem.Top := 19999;

    fItem.BevelKind := bkNone;
    fItem.BevelOuter := bvNone;
    fItem.BorderStyle := bsNone;
  end else
  begin
    fItem.Parent := fLevels.Last;
    if aLevel < 0 then
    begin
      fLevels.Pop ;
      end;

    for var tempPainel in fLevels do tempPainel.Height := tempPainel.Height + 64;
    fItem.Align := alnone;
    fItem.AlignWithMargins := true;
    fItem.Margins.Left := 40;
    fItem.Margins.Top := 0;
    fItem.Margins.Right := 0;
    fItem.Margins.Bottom := 0;
    fItem.Height := 63;
    fItem.Top := 99999;
    fItem.Width := fiTem.Parent.Width - fItem.Left;
    fItem.Anchors := [akTop, akLeft, akRight];
    fItem.Align := alTop;

    fItem.BevelKind := bkNone;
    fItem.BevelOuter := bvNone;
    fItem.BorderStyle := bsNone;
  end;
    Grupo := TPanel.Create(Owner);
    Grupo.Parent := fItem;
    Grupo.Align := alTop;
    Grupo.Top := 9000;
    Grupo.Align := alTop;
    Grupo.BevelKind := bkNone;
    Grupo.BevelOuter := bvNone;
    Grupo.BorderStyle := bsNone;

    fSubitemTitle:= TLabel.Create(fOwner);
    fSubitemSubTitle:= TLabel.Create(fOwner);
    FFaixa1:= TShape.Create(fOwner);
    FFaixa2:= TShape.Create(fOwner);
    LSurroundedIcon:= TLabel.Create(fOwner);
    LIcon:= TLabel.Create(fOwner);
    LRightIcon:= TLabel.Create(fOwner);
    LExIcon:= TLabel.Create(fOwner);
    fSpeedAction:= TSpeedButton.Create(fOwner);

    with fSubitemTitle do
    begin
      Caption := Nome;
      Layout := tlCenter;
      Font := fInstance.Font;
      Font.Size := 12;
      Font.Style := [fsBold];
      left := 52;
      Top := 14;
      Parent := Grupo;
      Autosize := false;
    end;

    with fSubitemSubTitle do
    begin
      Caption := '';
      Layout := tlCenter;
      Font := fInstance.Font;
      Font.Size := 10;
      Font.Style := [fsBold];
      left := 52;
      Top := 26;
      Parent := Grupo;
      Autosize := false;
    end;

    with fFaixa1 do
    begin
      Parent := Grupo;
      Color := Grupo.Color;
      width := 4;
      top := 0;
      left := 26;
      height := Grupo.Height div 2;
      pen.style := psClear;
    end;

    with fFaixa2 do
    begin
      Parent := Grupo;
      Color := Grupo.Color;
      width := 4;
      top := Grupo.Height div 2;
      left := 26;
      height := Grupo.Height div 2;
      pen.style := psClear;
      Anchors := [akTop, akLeft, akBottom];
    end;

    with LSurroundedIcon do
    begin
      font.Size := 36;
      caption := ' 🥅'; //Size calibration
      autosize := false;
      Left := 10;
      Height := Grupo.Height;
      top := 0;
      Alignment := taCenter;
      Layout := tlCenter;
      caption := '';
      Anchors := [akTop, akLeft];
      Parent := Grupo;
    end;

    with LIcon do
    begin
      font.Size := 14;
      caption := ' 🥅'; //Size calibration
      autosize := false;
      Left := 10;
      top := 0;
      Height := Grupo.Height - 10;
      Alignment := taCenter;
      Layout := tlCenter;
      caption := '';
      Anchors := [akTop, akLeft];
      Parent := Grupo;
    end;

    with LRightIcon do
    begin
      caption := '🤍'; //Size calibration
      autosize := false;
      Left := Grupo.Width - 50 - width;
      Alignment := taRightJustify;
      Layout := tlCenter;
      caption := '';
      Anchors := [akTop, akRight];
      Parent := Grupo;
    end;

    with LExIcon do
    begin
      caption := '⯈'; //Size calibration
      autosize := false;
      Left := Grupo.Width - 10 - width;
      Alignment := taRightJustify;
      Layout := tlCenter;
      caption := '';
      Anchors := [akTop, akRight];
      Parent := Grupo;
    end;

    with fSpeedAction do
    begin
      left := 0;
      top :=  0;
      caption := '';
      height := Grupo.Height;
      Width := Grupo.Width;
      Anchors := [akLeft, akTop, akRight];
      Parent := Grupo;
      Flat := True;
    end;

    Grupo.AutoSize := true;

end;

class function TMaterialMenu.Build(aOwner: TWinControl; const aTitulo, aSubtitulo, aMensagem, aIcone, acao1, acao2: widestring; BotaoIcone1, BotaoIcone2,
  BotaoIcone3: WideString): TMaterialMenu;
begin
  result := TMaterialMenu.Create;
  result.Owner := aOwner;
  result.Instance := TPanel.Create(aOwner);
  result.Instance.Visible := false;
  setLength(result.fLevels, 0);
  result.fLevels.Add(result.Instance);
  with result.Instance do
  begin
    Align := alLeft;
    parentColor := false;
    Color := clwhite;
    caption := '';
    BevelKind := bkNone;
    BevelOuter := bvNone;
    BorderStyle := bsNone;
    Parent := aOwner;
  end;

end;

function TMaterialMenu.ChangeColor(const Color: TColor): TMaterialMenu;
begin
  result := self;
  if assigned(Instance) then
   Instance.Color := color;
end;

procedure TMaterialMenu.DistribuirIcones;
begin

end;

function TMaterialMenu.GetCorPrimaria: TColor;
begin
  result := FCorPrimaria
end;

function TMaterialMenu.getItem: TPanel;
begin
  if Assigned (fItem) then
    result :=  fItem else
    result := Instance;
end;

function TMaterialMenu.Icon(const aIcon: String): TMaterialMenu;
begin
  result := Self;
  LIcon.caption := aIcon;
end;

function TMaterialMenu.IconEx(const aIcon: String): TMaterialMenu;
begin
  result := Self;
  LexIcon.caption := aIcon;
end;

function TMaterialMenu.IconRight(const aIcon: String): TMaterialMenu;
begin
  result := Self;
  LIcon.caption := aIcon;
end;

function TMaterialMenu.IconSurrounded(const aIcon: String; Color: TColor): TMaterialMenu;
begin
  result := Self;
  LSurroundedIcon.caption := '⬤';
  LSurroundedIcon.Font.color := Color;
  LIcon.Caption := aIcon;
end;

function TMaterialMenu.Marcador1(const Color: TColor): TMaterialMenu;
begin
  result := self;
  FFaixa1.brush.color := Color;
end;

function TMaterialMenu.Marcador2(const Color: TColor): TMaterialMenu;
begin
  result := self;
  FFaixa2.brush.color := Color;
end;

class procedure TMaterialMenu.MetodoAutoExpandir(sender: TObject);
begin
  if Sender is TSpeedButton then
  begin
    if TSpeedButton(Sender).Parent is TPanel then
      begin
         if TPanel(TSpeedButton(Sender).Parent).Parent is TPanel then
        begin
            if (Tpanel(TPanel( TSpeedButton(Sender).Parent ).Parent).Autosize) or (Tpanel(TPanel( TSpeedButton(Sender).Parent ).Parent).Height <> 64) then
            begin
              TPanel(TPanel( TSpeedButton(Sender).Parent ).Parent).AutoSize := false;
              TPanel(TPanel( TSpeedButton(Sender).Parent ).Parent).Height := 64;
            end else
            TPanel(TPanel(TSpeedButton(Sender).Parent ).Parent).AutoSize := true;
        end;
      end;
  end else if Sender is TPanel then
  begin
    if TPanel(Sender).AutoSize then
    begin
      TPanel(Sender).AutoSize := false;
      TPanel(Sender).Height := 64;
    end else
    TPanel(Sender).AutoSize := true;
  end;
end;

function TMaterialMenu.Renderizar: TMaterialMenu;
begin
  result := self;
  Instance.Visible := True;
end;

procedure TMaterialMenu.SetAlign(const Value: TAlign);
begin
  FAlign := Value;
end;

procedure TMaterialMenu.SetBarraColorida(const Value: TPanel);
begin
  FBarraColorida := Value;
end;

procedure TMaterialMenu.SetBotao1(const Value: TSpeedButton);
begin
  FBotao1 := Value;
end;

procedure TMaterialMenu.SetBotao2(const Value: TSpeedButton);
begin
  FBotao2 := Value;
end;

procedure TMaterialMenu.SetBotao_Icon1(const Value: TSpeedButton);
begin
  FBotao_Icon1 := Value;
end;

procedure TMaterialMenu.SetBotao_Icon2(const Value: TSpeedButton);
begin
  FBotao_Icon2 := Value;
end;

procedure TMaterialMenu.SetBotao_Icon3(const Value: TSpeedButton);
begin
  FBotao_Icon3 := Value;
end;

procedure TMaterialMenu.SetBotao_IconePrincipal(const Value: TSpeedButton);
begin
  FBotao_IconePrincipal := Value;
end;

procedure TMaterialMenu.SetCaption(const Value: String);
begin
  FCaption := Value;
end;

procedure TMaterialMenu.SetColor(const Value: TColor);
begin
  FColor := Value;
  if assigned(Instance) then
    Instance.Color := Value;
end;

procedure TMaterialMenu.SetCorBarraColorida(const Value: TColor);
begin
  FCorBarraColorida := Value;
end;

procedure TMaterialMenu.SetCorPrimaria(const Value: TColor);
begin
  FCorPrimaria := Value;
end;

procedure TMaterialMenu.SetCorSecundaria(const Value: TColor);
begin
  FCorSecundaria := Value;
end;

procedure TMaterialMenu.SetHeight(const Value: Integer);
begin
  FHeight := Value;
end;

procedure TMaterialMenu.SetHint(const Value: String);
begin
  FHint := Value;
end;

procedure TMaterialMenu.SetIcone(const Value: widestring);
begin
  FIcone := Value;
end;

procedure TMaterialMenu.SetInstance(const Value: TPanel);
begin
  FInstance := Value;
end;

procedure TMaterialMenu.SetItem(const Value: TPanel);
begin
  FItem := Value;
end;

procedure TMaterialMenu.SetLabelSubTitulo(const Value: TLabel);
begin
  FLabelSubTitulo := Value;
end;

procedure TMaterialMenu.SetLabelTitulo(const Value: TLabel);
begin
  FLabelTitulo := Value;
end;

procedure TMaterialMenu.SetLabelValor(const Value: TLabel);
begin
  FLabelValor := Value;
end;

procedure TMaterialMenu.SetLeft(const Value: Integer);
begin
  FLeft := Value;
end;

procedure TMaterialMenu.SetMainPanel(const Value: TPanel);
begin
  FMainPanel := Value;
end;

procedure TMaterialMenu.SetMemoMensagem(const Value: TMemo);
begin
  FMemoMensagem := Value;
end;

procedure TMaterialMenu.SetMensagem(const Value: String);
begin
  FMensagem := Value;
end;

procedure TMaterialMenu.SetOwner(const Value: TWinControl);
begin
  FOwner := Value;
end;

procedure TMaterialMenu.SetTop(const Value: Integer);
begin
  FTop := Value;
end;

function TMaterialMenu.Setup(Panel: TPanel; const aTitulo, aSubtitulo, aMensagem, aIcone, acao1, acao2: widestring; BotaoIcone1, BotaoIcone2, BotaoIcone3: WideString; aLabelTitulo,
  aLabelSubtitulo, aLabelValor: TLabel; aMemo: TMemo; aBotaoIconePrincipal, aBotaoAcao1, aBotaoAcao2, aBotaoIcone1, aBotaoIcone2, aBotaoIcone3: TSpeedButton): TMaterialMenu;
begin

end;

class function TMaterialMenu.Setup(Panel: TPanel; aLabelTitulo, aLabelSubtitulo, aLabelValor: TLabel; aMemo: TMemo; aBotaoIconePrincipal, aBotaoAcao1, aBotaoAcao2, aBotaoIcone1,
  aBotaoIcone2, aBotaoIcone3: TSpeedButton): TMaterialMenu;
begin

end;

procedure TMaterialMenu.SetValue(const Value: String);
begin
  FValue := Value;
end;

procedure TMaterialMenu.SetWidth(const Value: Integer);
begin
  FWidth := Value;
  if assigned(fInstance) then
    fInstance.Width := value;
end;

function TMaterialMenu.Subtitulo(const aSubtitulo: String): TMaterialMenu;
begin
  result := self;
  FLabelSubtitulo.caption := aSubtitulo;
end;

function TMaterialMenu.Titulo(const aTitulo: String): TMaterialMenu;
begin
  result := self;
  FLabelSubtitulo.caption := aTitulo;

end;

function TMaterialMenu.ResizeWidth(const aWidth: Integer): TMaterialMenu;
begin
  result := self;
  Instance.width := aWidth;
end;

{ TPanelArrayActions }

function TPanelArrayActions.Add(Panel: TPanel): Integer;
begin
  result := Length(self);
  SetLength(Self, result + 1);
  self[result] := Panel;
end;

function TPanelArrayActions.Last: TPanel;
begin
  if length(self) > 0 then
    result := self[Length(self) -1]
  else
    result := nil;
end;

function TPanelArrayActions.Pop: TPanel;
begin
  if length(self) > 0 then
  begin
    result := last;
    setLength(self, length(self) -1);
  end
  else result := Nil;
end;

end.
