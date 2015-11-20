class ChangeBankTypeToBankType < ActiveRecord::Migration
  def change
  	rename_column :banks, :type, :bank_type
  end
end
