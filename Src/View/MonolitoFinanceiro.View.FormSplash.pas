unit MonolitoFinanceiro.View.FormSplash;

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
    Vcl.Imaging.pngimage,
    Vcl.ExtCtrls,
    Vcl.ComCtrls,
    Vcl.StdCtrls;

  type
    TFrmSplash = class(TForm)
      PnlPrincipal:          TPanel;
      PnlStatusCarregamento: TPanel;
      ImgLogoEmpresa:        TImage;
      LblNomePrograma:       TLabel;
      LblStatusCarregamento: TLabel;
      ProgBarCarregamento:   TProgressBar;
      TmrTemporarizador:     TTimer;
      ImgDll:                TImage;
      ImgBancoDados:         TImage;
      ImgConfiguracoes:      TImage;
      ImgFoguete:            TImage;
      procedure TmrTemporarizadorTimer(Sender: TObject);
      private
        procedure AtualizarStatus(AMensagem: string; AImagem: TImage);
  end;

  var
    FrmSplash: TFrmSplash;

implementation

  {$R *.dfm}

  procedure TFrmSplash.AtualizarStatus(AMensagem: string; AImagem: TImage);
  begin
    LblStatusCarregamento.Caption := AMensagem;
    AImagem.Visible := True;
  end;

  procedure TFrmSplash.TmrTemporarizadorTimer(Sender: TObject);
  begin
    if ProgBarCarregamento.Position < 100 then
    begin
      ProgBarCarregamento.StepIt;
      case ProgBarCarregamento.Position of
        10: AtualizarStatus('Carregando Dependências...', ImgDll);
        25: AtualizarStatus('Conectando ao Banco de Dados...', ImgBancoDados);
        45: AtualizarStatus('Carregando Configurações...', ImgConfiguracoes);
        75: AtualizarStatus('Tudo pronto!', ImgFoguete);
      end;
    end
    else
      Close;
  end;

end.
