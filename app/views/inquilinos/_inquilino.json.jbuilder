json.extract! inquilino, :id, :nome, :cpf, :rg, :telefone, :ap, :codigoEletrobras, :dataInicio, :dataFim, :dataVencimento, :pago, :created_at, :updated_at
json.url inquilino_url(inquilino, format: :json)
