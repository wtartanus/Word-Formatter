require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require( 'pry-byebug' )
require( 'json' )
require_relative( "./models/word_formatter.rb")


get '/' do
  erb :home
end

get '/camelcase/:word' do
  word = WordFormatter.new(params[:word])
  @word = word.camelcase
  erb( :result )
end


get '/address' do
  content_type( :json )



  result1 = WordFormatter.new( "e13 zqf" )
  result1.postcode_formatter

  results = {
    address: "3 ARGYLE HOUSE",
    building: "CODEBASE",
    postcode: "#{result1.word}",
    phone: "0131558030"
  }
  
 return results.to_json

end