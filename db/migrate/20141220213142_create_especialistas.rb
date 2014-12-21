class CreateEspecialistas < ActiveRecord::Migration
  def change
    create_table :especialistas do |t|
      t.integer :especialidad_id
      t.string :cedula
      t.string :nombres
      t.string :apellidos
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
