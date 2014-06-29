json.array!(@employees) do |employee|
  json.extract! employee, :id, :name, :password_digest, :post, :cname, :phone, :idcard, :comment
  json.url employee_url(employee, format: :json)
end
