module CharactersHelper
  def readable_class(wowclass)
    # CLASSES is a hash with readable name as key and string as value for easy select()
    # purposes. Reverse it to make it less of a hassle to refer to readable name in views.
    Character::CLASSES.invert[@character.wowclass]
  end
end
