class DropTable < ActiveRecord::Migration
  def change
     drop_table :citizens
  end
end
