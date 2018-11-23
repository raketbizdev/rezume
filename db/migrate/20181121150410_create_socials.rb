class CreateSocials < ActiveRecord::Migration[5.1]
  def change
    create_table :socials do |t|
      t.string :social_media_icon
      t.string :social_media_name
      t.string :social_media_url
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
