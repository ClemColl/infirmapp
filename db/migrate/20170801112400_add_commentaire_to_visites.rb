class AddCommentaireToVisites < ActiveRecord::Migration[5.0]
  def change
    add_column :visites, :commentaire, :string
  end
end
