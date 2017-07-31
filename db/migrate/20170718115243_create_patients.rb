class CreatePatients < ActiveRecord::Migration[5.0]
  def change
    create_table :patients do |t|
      t.string :nom
      t.string :prenom
      t.string :adresse
      t.string :tel
      t.string :ordonnance
      t.boolean :archive, :default => false

      t.timestamps
    end
  end
end