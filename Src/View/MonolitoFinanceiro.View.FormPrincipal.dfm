object FrmPrincipal: TFrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Monolito Financeiro'
  ClientHeight = 588
  ClientWidth = 1003
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -20
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MmOperacoes
  WindowState = wsMaximized
  OnCreate = FormCreate
  TextHeight = 28
  object MmOperacoes: TMainMenu
    Left = 944
    Top = 16
    object MiCadastros: TMenuItem
      Caption = 'Cadastros'
      object MiUsuarios: TMenuItem
        Caption = 'Usu'#225'rios'
        OnClick = MiUsuariosClick
      end
    end
    object MiRelatorios: TMenuItem
      Caption = 'Relat'#243'rios'
    end
    object MiAjuda: TMenuItem
      Caption = 'Ajuda'
    end
  end
end
