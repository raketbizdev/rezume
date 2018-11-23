class CreateWorkExperiences < ActiveRecord::Migration[5.1]
  def change
    create_table :work_experiences do |t|
      t.string :start_year
      t.string :end_year
      t.string :work_position
      t.text :work_description
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
