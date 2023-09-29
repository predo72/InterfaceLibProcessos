unit uIBloqueio.PedidoVenda;

interface

uses
  uIBloqueio.PedidoVenda.Exclusao;

type
  IBloqueioPedidoVenda = interface
  ['{35D00F22-4644-4600-B5A8-DF22789B95FA}']
    function Exclusao: IBloqueioPedidoVendaExclusao;
  end;

implementation

end.
