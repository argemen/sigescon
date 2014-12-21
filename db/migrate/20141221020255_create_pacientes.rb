class CreatePacientes < ActiveRecord::Migration
  def change
    create_table :pacientes do |t|
      t.string :cedula
      t.string :nombres
      t.string :apellidos
      t.text :direccion
      t.string :telefono

      t.timestamps
    end
  end
end
