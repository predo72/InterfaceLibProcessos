unit uIBloqueio;

interface

uses
  uIBloqueio.PedidoVenda, uIBloqueio.CadastroItem;

type
  IBloqueio = interface
    ['{1B9B807F-1CAB-4CBD-8A18-388E59535054}']
      function PedidoVenda: IBloqueioPedidoVenda;
      function CadastroItem: IBloqueioCadastroItem;
  end;

implementation

end.
