object DmConexao: TDmConexao
  OnCreate = DataModuleCreate
  Height = 178
  Width = 359
  PixelsPerInch = 120
  object FdConsulta: TFDQuery
    Connection = FdConexao
    SQL.Strings = (
      'SELECT *'
      'FROM USUARIO;')
    Left = 200
    Top = 48
  end
  object FdConexao: TFDConnection
    Left = 64
    Top = 48
  end
end
