class CreateProfiles < ActiveRecord::Migration[5.1]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :middle_name
      t.string :last_name
      t.string :position
      t.text :address
      t.string :mobile
      t.string :phone
      t.string :email
      t.string :website

      t.timestamps
    end
  end
end
