unit MonolitoFinanceiro.Model.DmConexao;

interface

uses
  System.SysUtils,
  System.Classes,
  FireDAC.Stan.Intf,
  FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf,
  FireDAC.Phys.Intf,
  FireDAC.Stan.Def,
  FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys,
  FireDAC.VCLUI.Wait,
  Data.DB,
  FireDAC.Comp.Client,
  FireDAC.Phys.FB,
  FireDAC.Phys.FBDef,
  FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf,
  FireDAC.DApt,
  FireDAC.Comp.DataSet;

type
  TDmConexao = class(TDataModule)
    FdConsulta: TFDQuery;
    FdConexao: TFDConnection;
    procedure DataModuleCreate(Sender: TObject);
  public
    procedure CarregarConfiguracoes;
    procedure Conectar;
    procedure Desconectar;
  end;

var
  DmConexaoBanco: TDmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}
{$R *.dfm}

const
  ARQUIVOCONFIGURACAO = 'MonolitoFinanceiro.cfg';

procedure TDmConexao.CarregarConfiguracoes;
var
  LParametroNome: string;
  LParametroValor: string;
  LContador: Integer;
  LListaParametros: TStringList;
begin
  FdConexao.Params.Clear;

  if not FileExists(ARQUIVOCONFIGURACAO) then
    raise Exception.Create('Arquivo de configuração não encontrado...');

  LListaParametros := TStringList.Create;
  try
    LListaParametros.LoadFromFile(ARQUIVOCONFIGURACAO);
    for LContador := 0 to Pred(LListaParametros.Count) do
    begin
      if LListaParametros[LContador].IndexOf('=') > 0 then
      begin
        LParametroNome := LListaParametros[LContador].Split(['='])[0].Trim;
        LParametroValor := LListaParametros[LContador].Split(['='])[1].Trim;
        FdConexao.Params.Add(LParametroNome + '=' + LParametroValor);
      end;
    end;
  finally
    LListaParametros.Free;
  end;
end;

procedure TDmConexao.Conectar;
begin
  FdConexao.Connected;
end;

procedure TDmConexao.DataModuleCreate(Sender: TObject);
begin
  CarregarConfiguracoes;
  Conectar;
end;

procedure TDmConexao.Desconectar;
begin
  FdConexao.Connected := False;
end;

end.
