unit uIBloqueio.PedidoVenda.Exclusao;

interface

type
  IBloqueioPedidoVendaExclusao = interface
    ['{CB011042-7B94-4590-884F-361E995BF2A6}']
    function Bloquear(const ALiberar: Boolean): Boolean;
  end;

implementation

end.
