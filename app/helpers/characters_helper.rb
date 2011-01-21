module CharactersHelper
  def readable_class(wowclass)
    Character::CLASSES.invert[@character.wowclass]
  end
end
