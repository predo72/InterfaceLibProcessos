unit FFormBloqueio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.pngimage,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    btnExcPedido: TButton;
    btnExcItem: TButton;
    imgLiberadoExcItem: TImage;
    imgBloqueadoExcItem: TImage;
    imgBloqueadoExcPedido: TImage;
    imgLiberadoExcPedido: TImage;
    chkLiberarExcPedido: TCheckBox;
    chkLiberarExcItem: TCheckBox;
    procedure btnExcPedidoClick(Sender: TObject);
    procedure btnExcItemClick(Sender: TObject);
  private
    { Private declarations }
    function TestarBloqueioExclusaoPedido: Boolean;
    function TestarBloqueioExclusaoItem: Boolean;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  uBloqueio;

{$R *.dfm}

procedure TForm1.btnExcPedidoClick(Sender: TObject);
begin
  imgLiberadoExcPedido.Visible := False;
  imgBloqueadoExcPedido.Visible := False;
  if TestarBloqueioExclusaoPedido then
    imgLiberadoExcPedido.Visible := True
  else
    imgBloqueadoExcPedido.Visible := True;
end;

procedure TForm1.btnExcItemClick(Sender: TObject);
begin
  imgLiberadoExcItem.Visible := False;
  imgBloqueadoExcItem.Visible := False;
  if TestarBloqueioExclusaoItem then
    imgLiberadoExcItem.Visible := True
  else
    imgBloqueadoExcItem.Visible := True;
end;

function TForm1.TestarBloqueioExclusaoItem: Boolean;
begin
  Result :=
    TBloqueio
      .New
      .CadastroItem
        .Exclusao
          .Bloquear(chkLiberarExcItem.Checked);
end;

function TForm1.TestarBloqueioExclusaoPedido: Boolean;
begin
  Result :=
    TBloqueio
      .New
      .PedidoVenda
        .Exclusao
          .Bloquear(chkLiberarExcPedido.Checked);
end;

end.
