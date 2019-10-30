unit uTestFloatButton;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    FlowPanel6: TFlowPanel;
    Panel36: TPanel;
    Shape66: TShape;
    Label145: TLabel;
    Shape67: TShape;
    Label146: TLabel;
    Label147: TLabel;
    Label148: TLabel;
    Panel37: TPanel;
    Label149: TLabel;
    Shape68: TShape;
    Label150: TLabel;
    Shape69: TShape;
    Label151: TLabel;
    Label152: TLabel;
    Panel38: TPanel;
    Label153: TLabel;
    Shape70: TShape;
    Label154: TLabel;
    Shape71: TShape;
    Label155: TLabel;
    Label156: TLabel;
    Panel39: TPanel;
    Label157: TLabel;
    Shape72: TShape;
    Label158: TLabel;
    Shape73: TShape;
    Label172: TLabel;
    Panel40: TPanel;
    Label159: TLabel;
    Shape74: TShape;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label164: TLabel;
    Label165: TLabel;
    Panel41: TPanel;
    Label166: TLabel;
    Shape75: TShape;
    Label167: TLabel;
    Shape76: TShape;
    Label173: TLabel;
    Label174: TLabel;
    Panel42: TPanel;
    Label168: TLabel;
    Shape77: TShape;
    Label169: TLabel;
    Label170: TLabel;
    Shape78: TShape;
    Label171: TLabel;
    procedure FormShow(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure FormAlignPosition(Sender: TWinControl; Control: TControl; var NewLeft, NewTop, NewWidth, NewHeight: Integer; var AlignRect: TRect; AlignInfo: TAlignInfo);
    procedure AcaoCriarMenu(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uFloatButton, uMenuFactory;

procedure TForm1.FormAlignPosition(Sender: TWinControl; Control: TControl; var NewLeft, NewTop, NewWidth, NewHeight: Integer; var AlignRect: TRect; AlignInfo: TAlignInfo);
begin

  FloatButton.show(self)
end;

procedure TForm1.AcaoCriarMenu(Sender: TObject);
begin
  
  TMaterialMenu.Build(self)
    .ChangeColor(clWhite)
    .AddItem('Holder')
    .AddItem('Incrível')                .Icon('😍')
    .AddItem('Documento')               .Icon('🔏') .Acao(TMaterialMenu.MetodoAutoExpandir)

       .AddItem('Etiqueta', +1)         .Icon('🔐')
        .AddItem('Volume')              .Icon('📚')
       .AddItem('Peça')                 .Icon('📖') .Acao(TMaterialMenu.MetodoAutoExpandir)

            .AddItem('Peça A', + 1)     .Icon('🔖')
            .AddItem('Peça B')          .Icon('🔖')
            .AddItem('Peça C')          .Icon('🔖')
            .AddItem('Peça D')          .Icon('🔖')
            .AddItem('Peça E')          .Icon('🔖')
            .AddItem('Peça F')          .Icon('🔖')

       .AddItem('Produção', -1)         .Icon('🔖')
       .AddItem('Produtos')             .Icon('🔖')

    .AddItem('Clientes',  -1)           .Icon('🤓')
    .AddItem('Fornecedores')            .Icon('📕')
    .AddItem('Anexo')                   .Icon('🖍')
    .AddItem('Sair')                    .Icon
    .Resizewidth(350)
    .Renderizar;
//
//    ;
end;

procedure TForm1.FormResize(Sender: TObject);
begin

  FloatButton.show(self)
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  FloatButton.show(self, AcaoCriarMenu)
end;

end.
