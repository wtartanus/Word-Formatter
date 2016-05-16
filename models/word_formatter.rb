class WordFormatter

  attr_accessor :word


  def initialize( word )
    @word = word
  end

  # def to_json 
  #    {:address => @address, :building => @building, :postcode => @postcode, :phone => @phone }.to_json
  #  end


  def postcode_formatter
    @word.upcase!
  end

  def camelcase
    result = []
    words = @word.split(" ")
    for word1 in words
      result << word1.capitalize
    end
    return result.join
  end

end