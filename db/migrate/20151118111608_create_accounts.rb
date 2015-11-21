class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.integer :number
      t.references :bank, index: true, foreign_key: true
      t.references :citizen, index: true, foreign_key: true
      t.datetime :date_created
      t.timestamps null: false
    end
  end
end
