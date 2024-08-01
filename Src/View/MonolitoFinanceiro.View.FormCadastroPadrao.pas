unit MonolitoFinanceiro.View.FormCadastroPadrao;

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
       Vcl.ExtCtrls,
       Vcl.WinXPanels,
       Data.DB,
       Vcl.StdCtrls,
       Vcl.Grids,
       Vcl.DBGrids,
       System.ImageList,
       Vcl.ImgList;

  type TFrmPadraoCadastro = class(TForm)
         CPnlPrincipal:       TCardPanel;
         CCadastro:           TCard;
         CPesquisa:           TCard;
         PnlPesquisaTopo:     TPanel;
         PnlPesquisaRodape:   TPanel;
         PnlPesquisaCentral:  TPanel;
         PnlCadastroRodape:   TPanel;
         DgdDadosCadastrados: TDBGrid;
         EdtPesquisa:         TEdit;
         LblPesquisar:        TLabel;
         ImgListaIcones:      TImageList;
         BtnPesquisar:        TButton;
         BtnFechar:           TButton;
         BtnIncluir:          TButton;
         BtnEditar:           TButton;
         BtnExcluir:          TButton;
         BtnImprimir:         TButton;
         BtnCancelar:         TButton;
         BtnSalvar:           TButton;
         procedure BtnIncluirClick(Sender: TObject);
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnFecharClick(Sender: TObject);
    procedure BtnCancelarClick(Sender: TObject);
       end;

  var
    FrmPadraoCadastro: TFrmPadraoCadastro;

implementation

  {$R *.dfm}

  procedure TFrmPadraoCadastro.BtnCancelarClick(Sender: TObject);
  begin
    CPnlPrincipal.ActiveCard := CPesquisa;
  end;

procedure TFrmPadraoCadastro.BtnEditarClick(Sender: TObject);
  begin
    CPnlPrincipal.ActiveCard := CCadastro;
  end;

  procedure TFrmPadraoCadastro.BtnFecharClick(Sender: TObject);
  begin
    Close;
  end;

procedure TFrmPadraoCadastro.BtnIncluirClick(Sender: TObject);
  begin
    CPnlPrincipal.ActiveCard := CCadastro;
  end;

end.
