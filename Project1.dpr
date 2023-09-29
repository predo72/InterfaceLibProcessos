program Project1;

uses
  Vcl.Forms,
  FFormBloqueio in 'FFormBloqueio.pas' {Form1},
  uIBloqueio in 'uIBloqueio.pas',
  uIBloqueio.PedidoVenda in 'uIBloqueio.PedidoVenda.pas',
  uIBloqueio.PedidoVenda.Exclusao in 'uIBloqueio.PedidoVenda.Exclusao.pas',
  uIBloqueio.CadastroItem in 'uIBloqueio.CadastroItem.pas',
  uIBloqueio.CadastroItem.Exclusao in 'uIBloqueio.CadastroItem.Exclusao.pas',
  uBloqueio in 'uBloqueio.pas',
  uBloqueio.PedidoVenda in 'uBloqueio.PedidoVenda.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
