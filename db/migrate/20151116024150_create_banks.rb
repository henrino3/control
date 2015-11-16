class CreateBanks < ActiveRecord::Migration
  def change
    create_table :banks do |t|
      t.string   :name 
      t.string   :type
      t.string :reg_no
      t.date   :founded
      t.text   :headquarters
      t.string :ceo
      t.text   :services
      t.string :email
      t.string :website
      t.string :logo_url

      t.timestamps null: false
    end
  end
end
