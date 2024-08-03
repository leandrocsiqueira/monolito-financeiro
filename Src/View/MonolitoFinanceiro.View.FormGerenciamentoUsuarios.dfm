inherited FrmGerenciamentoUsuario: TFrmGerenciamentoUsuario
  Caption = 'Gerenciamento de Uu'#225'rios'
  ExplicitLeft = 3
  ExplicitTop = 3
  TextHeight = 23
  inherited CPnlPrincipal: TCardPanel
    inherited CPesquisa: TCard
      inherited PnlPesquisaTopo: TPanel
        inherited BtnPesquisar: TButton
          OnClick = BtnPesquisarClick
        end
      end
      inherited PnlPesquisaCentral: TPanel
        inherited DgDados: TDBGrid
          DataSource = DsPadrao
        end
      end
    end
  end
  inherited ImgListaIcones: TImageList
    Left = 1024
    Top = 416
  end
  inherited DsPadrao: TDataSource
    DataSet = DmConexao.FdConsulta
    Left = 1024
    Top = 304
  end
end
