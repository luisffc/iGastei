class AddGastosToMeios < ActiveRecord::Migration
  def self.up
    change_table :gastos do |t|
      t.references :meio
    end   
end
  def self.down
    remove_column :gastos, :meio_id
  end
end
