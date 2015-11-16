class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :username         
      t.string :password
      t.string :name 
      t.text   :secuirity_question
      t.text   :secuirity_answer
      t.string :email
      t.string :phone
      t.string :level

      t.timestamps null: false
    end
  end
end
