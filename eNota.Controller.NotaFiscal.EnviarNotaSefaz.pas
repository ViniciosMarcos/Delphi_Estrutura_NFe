unit eNota.Controller.NotaFiscal.EnviarNotaSefaz;

interface

uses
  eNota.Controller.NotaFiscal.Interfaces;

type

  TControllerNotaFiscalEnviarNotaSefaz = class(TInterfacedObject, iCommand)
    private
      FParent: iNotaFiscal;
    public
      constructor Create(Parent: iNotaFiscal);
      destructor Destroy; override;
      class function New(Parent: iNotaFiscal) : iCommand;
      function Execute: iCommand;
  end;

implementation

{ TControllerNotaFiscalEnviarNotaSefaz }

constructor TControllerNotaFiscalEnviarNotaSefaz.Create(Parent: iNotaFiscal);
begin
  FParent := Parent;
end;

destructor TControllerNotaFiscalEnviarNotaSefaz.Destroy;
begin

  inherited;
end;

function TControllerNotaFiscalEnviarNotaSefaz.Execute: iCommand;
begin
  Result := Self;
  FParent.EnviarNotaSefaz;
end;

class function TControllerNotaFiscalEnviarNotaSefaz.New(Parent: iNotaFiscal) : iCommand;
begin
  Result := Self.Create(Parent);
end;

end.
