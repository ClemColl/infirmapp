class CreateVisites < ActiveRecord::Migration[5.0]
  def change
    create_table :visites do |t|
      t.string :date
      t.string :stade
      t.string :longeur
      t.string :largeur
      t.string :profondeur
      t.string :echelle
      t.string :images
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
