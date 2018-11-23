class CreateSkills < ActiveRecord::Migration[5.1]
  def change
    create_table :skills do |t|
      t.string :skill_name
      t.string :skill_mastery
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
