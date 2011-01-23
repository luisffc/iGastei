class ChangeNomeInMeios < ActiveRecord::Migration
  def self.up
     change_column :meios,:nome, :string
  end

  def self.down
     change_column :meios,:nome, :text
  end
end
