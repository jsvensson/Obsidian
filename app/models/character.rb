class Character < ActiveRecord::Base
  CLASSES = {
    'Death Knight' => 'deathknight',
    'Druid' => 'druid',
    'Hunter' => 'hunter',
    'Mage' => 'mage',
    'Rogue' => 'rogue',
    'Paladin' => 'paladin',
    'Priest' => 'priest',
    'Shaman' => 'shaman',
    'Warlock' => 'warlock',
    'Warrior' => 'warrior' 
  }

  belongs_to :player
  belongs_to :guild
  validates :name, :presence => true
  validates_inclusion_of :wowclass, :in => CLASSES.values
end
