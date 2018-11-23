class CreateAwards < ActiveRecord::Migration[5.1]
  def change
    create_table :awards do |t|
      t.string :award_name
      t.text :award_details
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
