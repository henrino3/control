class AddTokenToBanksModel < ActiveRecord::Migration
  def change
      add_column :banks, :token, :string
  end
end
