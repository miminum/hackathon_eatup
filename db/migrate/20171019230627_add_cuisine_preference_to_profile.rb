class AddCuisinePreferenceToProfile < ActiveRecord::Migration[5.1]
  def change
    add_column :profiles, :cuisine_preference, :string
  end
end
