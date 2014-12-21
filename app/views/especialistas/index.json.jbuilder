json.array!(@especialistas) do |especialista|
  json.extract! especialista, :id, :especialidad_id, :cedula, :nombres, :apellidos, :correo, :telefono
  json.url especialista_url(especialista, format: :json)
end
