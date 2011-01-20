class AddWowclassToCharacters < ActiveRecord::Migration
  def self.up
    # add_column :characters, :wowclass, :string, :null => false, :default => "warrior"
    execute <<-SQL
      ALTER TABLE characters
      ADD COLUMN wowclass enum('deathknight','druid','hunter','mage','rogue','paladin','priest','shaman','warlock','warrior')
      NOT NULL
      DEFAULT 'warrior'
      AFTER name
    SQL

  end

  def self.down
    remove_column :characters, :wowclass
  end
end
