class CreateParameters < ActiveRecord::Migration[5.2]
  def change
    create_table :parameters do |t|
      t.string :nombre
      t.string :descripcion
      t.string :tiempo_respuesta
      t.string :medio
      t.references :type_request, foreign_key: true

      t.timestamps
    end
  end
end
