program MonolitoFinanceiro;

uses
  Vcl.Forms,
  MonolitoFinanceiro.View.FormPrincipal in
    'Src\View\MonolitoFinanceiro.View.FormPrincipal.pas',
  MonolitoFinanceiro.View.FormCadastroPadrao in
    'Src\View\MonolitoFinanceiro.View.FormCadastroPadrao.pas',
  MonolitoFinanceiro.View.FormSplash in
    'Src\View\MonolitoFinanceiro.View.FormSplash.pas',
  MonolitoFinanceiro.Model.DmConexao in
    'Src\Model\MonolitoFinanceiro.Model.DmConexao.pas',
  MonolitoFinanceiro.View.FormGerenciamentoUsuarios in
    'Src\View\MonolitoFinanceiro.View.FormGerenciamentoUsuarios.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDmConexao, DmConexaoBanco);
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPadraoCadastro, FrmPadraoCadastro);
  Application.CreateForm(TFrmGerenciamentoUsuario, FrmGerenciamentoUsuario);
  Application.Run;
end.
