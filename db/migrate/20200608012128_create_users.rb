class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :email
      t.string :password_digest
      t.float :average_volunteer_rating
      t.integer :credit
      t.boolean :is_volunteer

      t.timestamps
    end
  end
end
