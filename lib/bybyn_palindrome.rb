# frozen_string_literal: true

require_relative "bybyn_palindrome/version"

module BybynPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false 
    else
      processed_content == processed_content.reverse
    end
  end

  private
  # Returns content for palindrome testing.
  def processed_content
    to_s.scan(/[a-z1-9]/i).join.downcase
  end
end

class String 
  include BybynPalindrome
end

class Integer 
  include BybynPalindrome
end
