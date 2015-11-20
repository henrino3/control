class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :Citizen, :citizens
  end
end
