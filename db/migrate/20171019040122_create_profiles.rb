class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.text :blurb
      t.text :profile_image_data
      t.string :gender
      t.string :city
      t.string :country_code
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
