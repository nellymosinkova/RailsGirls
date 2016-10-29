
require 'sinatra'

get '/' do
  @main_title = "Къде да хапнем?"
  @title = "Добре дошли в машината за гласуване"
  erb :index
end
 votes = {}
get '/cast' do
  @main_title = "Къде да хапнем?"
  @title = 'Благодарим за вашия глас!'
  @vote  = params['vote']


  votes[@vote] = votes.fetch(@vote, 0) + 1
  erb :cast
end

get '/results' do
  @main_title = "Къде да хапнем?"
  @votes = votes
  erb :results
end

