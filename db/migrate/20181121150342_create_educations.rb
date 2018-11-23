class CreateEducations < ActiveRecord::Migration[5.1]
  def change
    create_table :educations do |t|
      t.string :start_study
      t.string :year_graduated
      t.string :course
      t.string :school
      t.text :course_description
      t.references :profile, foreign_key: true

      t.timestamps
    end
  end
end
