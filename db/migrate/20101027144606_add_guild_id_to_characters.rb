class AddGuildIdToCharacters < ActiveRecord::Migration
  def self.up
    add_column :characters, :guild_id, :int
  end

  def self.down
    remove_column :characters, :guild_id
  end
end
