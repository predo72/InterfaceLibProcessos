unit uIBloqueio.CadastroItem;

interface

uses
  uIBloqueio.CadastroItem.Exclusao;

type
  IBloqueioCadastroItem = interface
    ['{0065FAEF-18F5-45E2-902A-B4B5BEDD82C9}']
    function Exclusao: IBloqueioCadastroItemExclusao;
  end;

implementation

end.
