class CreateResponsibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :responsibilities do |t|
      t.string :list_of_responsibility
      t.references :work_experience, foreign_key: true

      t.timestamps
    end
  end
end
