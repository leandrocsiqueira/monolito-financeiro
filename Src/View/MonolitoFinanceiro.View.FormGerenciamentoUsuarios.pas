unit MonolitoFinanceiro.View.FormGerenciamentoUsuarios;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  MonolitoFinanceiro.View.FormCadastroPadrao,
  Data.DB,
  System.ImageList,
  Vcl.ImgList,
  Vcl.Grids,
  Vcl.DBGrids,
  Vcl.StdCtrls,
  Vcl.ExtCtrls,
  Vcl.WinXPanels,
  MonolitoFinanceiro.Model.DmConexao;

type
  TFrmGerenciamentoUsuario = class(TFrmPadraoCadastro)
    procedure BtnPesquisarClick(Sender: TObject);
  end;

var
  FrmGerenciamentoUsuario: TFrmGerenciamentoUsuario;

implementation

{$R *.dfm}

procedure TFrmGerenciamentoUsuario.BtnPesquisarClick(Sender: TObject);
begin
  inherited;
  DmConexaoBanco.FdConsulta.Close;
  DmConexaoBanco.FdConsulta.SQL.Clear;
  DmConexaoBanco.FdConsulta.SQL.Add('SELECT * FROM USUARIO');
  DmConexaoBanco.FdConsulta.Open;
end;

end.
