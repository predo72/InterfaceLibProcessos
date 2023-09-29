unit uBloqueio.PedidoVenda;

interface

uses
  uIBloqueio.PedidoVenda, uIBloqueio.PedidoVenda.Exclusao;

type
  TBloqueioPedidoVenda = class(TInterfacedObject, IBloqueioPedidoVenda)
  private
    FBloqueioPedidoVendaExclusao: IBloqueioPedidoVendaExclusao;

  public
    function Exclusao: IBloqueioPedidoVendaExclusao;

    class function New: IBloqueioPedidoVenda;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uBloqueio.PedidoVenda.Exclusao;

{ TBloqueioPedidoVenda }

constructor TBloqueioPedidoVenda.Create;
begin
  FBloqueioPedidoVendaExclusao := TBloqueioPedidoVendaExclusao.New;
end;

destructor TBloqueioPedidoVenda.Destroy;
begin

  inherited;
end;

function TBloqueioPedidoVenda.Exclusao: IBloqueioPedidoVendaExclusao;
begin
  Result := FBloqueioPedidoVendaExclusao;
end;

class function TBloqueioPedidoVenda.New: IBloqueioPedidoVenda;
begin
  Result := Self.Create;
end;

end.
