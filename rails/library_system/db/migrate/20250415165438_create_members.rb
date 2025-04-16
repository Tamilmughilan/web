class CreateMembers < ActiveRecord::Migration[8.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :email
      t.date :membership_data

      t.timestamps
    end
  end
end
