json.extract! pagamento, :id, :mes, :pago, :inquilino_id, :created_at, :updated_at
json.url pagamento_url(pagamento, format: :json)
