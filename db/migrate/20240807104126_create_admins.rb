class CreateAdmins < ActiveRecord::Migration[7.0]
  def change
    create_table :admins do |t|
      t.string :email
      t.string :crypted_password
      t.string :salt

      t.timestamps
    end
  end
end
