class CreateGastos < ActiveRecord::Migration
  def self.up
    create_table(:gastos) do |t|
      t.float :valor
      t.datetime :data
      t.text :descricao

      t.timestamps
    end
  end

  def self.down
    drop_table :gastos
  end
end
