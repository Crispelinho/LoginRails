class CreateAdjuntos < ActiveRecord::Migration[5.2]
  def change
    create_table :adjuntos do |t|
      t.string :nombre
      t.string :descripcion
      t.references :request, foreign_key: true

      t.timestamps
    end
  end
end
