class CreateUserinfos < ActiveRecord::Migration
  def change
    create_table :userinfos do |t|
      t.string :firstname
      t.string :lastname
      t.string :school
      t.string :email
      t.string :password
      t.string :friends

      t.timestamps null: false
    end
  end
end
