# Valid passowords are
# - 8 or more characters .length > 7
# - include at least one of these characters: !, @, $, %, & .include?("")

def valid?(password)
  return false unless password.length > 7
  required_characters = ['!', '@', '$', '%', '&']
  required_characters.map { |c| password.include?(c) }.any?
end
