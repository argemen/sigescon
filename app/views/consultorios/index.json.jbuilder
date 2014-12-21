json.array!(@consultorios) do |consultorio|
  json.extract! consultorio, :id, :nombre, :direccion, :correo, :telefono
  json.url consultorio_url(consultorio, format: :json)
end
