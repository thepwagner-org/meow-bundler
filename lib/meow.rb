# frozen_string_literal: true

module Meow
  # Valid cat sounds in different languages
  VALID_CAT_SOUNDS = Set[
    'meow',   # English
    'nyaa',   # Japanese
    'nyan',   # Japanese
    'yaong',  # Korean
    'miao',   # Chinese
    'miau',   # Spanish/German
    'miaou',  # French
    'myau'    # Russian
  ].freeze

  # Checks if a given string is a valid cat sound
  #
  # @param str [String] The string to check
  # @return [Boolean] True if the string is a valid cat sound, false otherwise
  def self.meow?(str)
    return false if str.nil? || str.empty?

    VALID_CAT_SOUNDS.include?(str.downcase)
  end
end
