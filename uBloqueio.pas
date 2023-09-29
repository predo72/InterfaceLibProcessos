unit uBloqueio;

interface

uses
  uIBloqueio, uIBloqueio.PedidoVenda, uIBloqueio.CadastroItem;

type
  TBloqueio = class(TInterfacedObject, IBloqueio)
  private
    FPedidoVenda: IBloqueioPedidoVenda;
    FCadastroItem: IBloqueioCadastroItem;

  public
    function PedidoVenda: IBloqueioPedidoVenda;
    function CadastroItem: IBloqueioCadastroItem;

    class function New: IBloqueio;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uBloqueio.PedidoVenda, uBloqueio.CadastroItem;

{ TBloqueio }

function TBloqueio.CadastroItem: IBloqueioCadastroItem;
begin
  Result := FCadastroItem;
end;

constructor TBloqueio.Create;
begin
  FPedidoVenda := TBloqueioPedidoVenda.New;
  FCadastroItem := TBloqueioCadastroItem.New;
end;

destructor TBloqueio.Destroy;
begin

  inherited;
end;

class function TBloqueio.New: IBloqueio;
begin
  Result := Self.Create;
end;

function TBloqueio.PedidoVenda: IBloqueioPedidoVenda;
begin
  Result := Self.FPedidoVenda;
end;

end.
