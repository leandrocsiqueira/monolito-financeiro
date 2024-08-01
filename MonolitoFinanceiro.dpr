program MonolitoFinanceiro;

uses
  Vcl.Forms,
  MonolitoFinanceiro.View.FormPrincipal in 'Src\View\MonolitoFinanceiro.View.FormPrincipal.pas' {FrmPrincipal},
  MonolitoFinanceiro.View.FormCadastroPadrao in 'Src\View\MonolitoFinanceiro.View.FormCadastroPadrao.pas' {FrmPadraoCadastro},
  MonolitoFinanceiro.View.FormSplash in 'Src\View\MonolitoFinanceiro.View.FormSplash.pas' {FrmSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmPrincipal, FrmPrincipal);
  Application.CreateForm(TFrmPadraoCadastro, FrmPadraoCadastro);
  Application.Run;
end.
