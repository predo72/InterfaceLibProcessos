unit uBloqueio.CadastroItem.Exclusao;

interface

uses
  uIBloqueio.CadastroItem.Exclusao;

type
  TBloqueioCadastroItemExclusao = class(TInterfacedObject, IBloqueioCadastroItemExclusao)
  private

  public
    function Bloquear(const ALiberar: Boolean): Boolean;

    class function New: IBloqueioCadastroItemExclusao;
    constructor Create;
    destructor Destroy; override;
  end;


implementation

{ TBloqueioCadastroItemExclusao }

function TBloqueioCadastroItemExclusao.Bloquear(const ALiberar: Boolean): Boolean;
begin
  Result := ALiberar;
end;

constructor TBloqueioCadastroItemExclusao.Create;
begin

end;

destructor TBloqueioCadastroItemExclusao.Destroy;
begin

  inherited;
end;

class function TBloqueioCadastroItemExclusao.New: IBloqueioCadastroItemExclusao;
begin
  Result := Self.Create;

end;

end.
