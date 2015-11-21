class CreateCitizens < ActiveRecord::Migration
  def up
    create_table :citizens do |t|
         t.column :name,           :string, :limit => 32, :null => false
         t.column :phone_num1,     :text
         t.column :phone_num2,     :text
         t.column :email,          :text
         t.column :address,        :text
         t.column :nat_id,         :string, :null => false
         t.column :created,        :timestamp
         t.column :updated,         :timestamp 
         t.references :account, index: true, foreign_key: true
        end
    end
end
