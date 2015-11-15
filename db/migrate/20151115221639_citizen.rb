class Citizen < ActiveRecord::Migration
  def change
     create_table :citizens do |t|
         t.column :name,           :string, :limit => 32
         t.column :phone_num1,     :text
         t.column :phone_num2,     :text
         t.column :email,          :text
         t.column :address,        :text
         t.column :nat_id,         :string
         t.column :created,        :timestamp
         t.column :updated,         :timestamp 
    end
  end
end
