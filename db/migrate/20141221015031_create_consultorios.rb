class CreateConsultorios < ActiveRecord::Migration
  def change
    create_table :consultorios do |t|
      t.string :nombre
      t.text :direccion
      t.string :correo
      t.string :telefono

      t.timestamps
    end
  end
end
