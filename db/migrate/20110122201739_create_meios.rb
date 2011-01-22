class CreateMeios < ActiveRecord::Migration
  def self.up
    create_table :meios do |t|
      t.text :nome

      t.timestamps
    end
  end

  def self.down
    drop_table :meios
  end
end
