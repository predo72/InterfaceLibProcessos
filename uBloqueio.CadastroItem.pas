unit uBloqueio.CadastroItem;

interface

uses
  uIBloqueio.CadastroItem, uIBloqueio.CadastroItem.Exclusao;

type
  TBloqueioCadastroItem = class(TInterfacedObject, IBloqueioCadastroItem)
  private
    FExclusao: IBloqueioCadastroItemExclusao;

  public
    function Exclusao: IBloqueioCadastroItemExclusao;

    class function New: IBloqueioCadastroItem;
    constructor Create;
    destructor Destroy; override;
  end;

implementation

uses
  uBloqueio.CadastroItem.Exclusao;

{ TBloqueioCadastroItem }

constructor TBloqueioCadastroItem.Create;
begin
  FExclusao := TBloqueioCadastroItemExclusao.New;
end;

destructor TBloqueioCadastroItem.Destroy;
begin

  inherited;
end;

function TBloqueioCadastroItem.Exclusao: IBloqueioCadastroItemExclusao;
begin
  Result := FExclusao;
end;

class function TBloqueioCadastroItem.New: IBloqueioCadastroItem;
begin
  Result := Self.Create;
end;

end.
