unit uBloqueio.PedidoVenda.Exclusao;

interface

uses
  uIBloqueio.PedidoVenda.Exclusao;

type
  TBloqueioPedidoVendaExclusao = class(TInterfacedObject, IBloqueioPedidoVendaExclusao)
  private

  public
    function Bloquear(const ALiberar: Boolean): Boolean;

    class function New: IBloqueioPedidoVendaExclusao;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

{ TBloqueioPedidoVendaExclusao }

function TBloqueioPedidoVendaExclusao.Bloquear(const ALiberar: Boolean): Boolean;
begin
  Result := ALiberar;

end;

constructor TBloqueioPedidoVendaExclusao.Create;
begin

end;

destructor TBloqueioPedidoVendaExclusao.Destroy;
begin

  inherited;
end;

class function TBloqueioPedidoVendaExclusao.New: IBloqueioPedidoVendaExclusao;
begin
  Result := Self.Create;
end;

end.
