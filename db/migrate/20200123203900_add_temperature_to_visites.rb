class AddTemperatureToVisites < ActiveRecord::Migration[5.0]
  def change
    add_column :visites, :temperature, :string
    add_column :visites, :tension, :string
    add_column :visites, :pulsation, :string
  end
end
