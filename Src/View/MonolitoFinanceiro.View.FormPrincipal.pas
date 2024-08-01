unit MonolitoFinanceiro.View.FormPrincipal;

interface

  uses Winapi.Windows,
       Winapi.Messages,
       System.SysUtils,
       System.Variants,
       System.Classes,
       Vcl.Graphics,
       Vcl.Controls,
       Vcl.Forms,
       Vcl.Dialogs,
       Vcl.Menus;

  type TFrmPrincipal = class(TForm)
         MmOperacoes:      TMainMenu;
         MiCadastros:      TMenuItem;
         MiRelatorios:     TMenuItem;
         MiAjuda:          TMenuItem;
         MiCadastroPadrao: TMenuItem;
         procedure MiCadastroPadraoClick(Sender: TObject);
         procedure FormCreate(Sender: TObject);
  end;

  var FrmPrincipal: TFrmPrincipal;

implementation

  uses
    MonolitoFinanceiro.View.FormCadastroPadrao,
    MonolitoFinanceiro.View.FormSplash;


  {$R *.dfm}

  procedure TFrmPrincipal.FormCreate(Sender: TObject);
  begin
    FrmSplash := TFrmSplash.Create(nil);
    try
      FrmSplash.ShowModal;
    finally
      FreeAndNil(FrmSplash);
    end;
  end;

  procedure TFrmPrincipal.MiCadastroPadraoClick(Sender: TObject);
  begin
    FrmPadraoCadastro.Show;
  end;

end.
