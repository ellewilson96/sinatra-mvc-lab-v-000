class PigLatinizer
  attr_accessor :string

  def initialize(string)
    @string = string.downcase
  end

end
