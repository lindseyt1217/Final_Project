require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  get '/results' do
    erb :results
  end

  post '/results' do
  # grab user input
  answer1 = params[:days]
  answer2 = params[:intensity]
  # define instance variable that will be passed onto the results page
  @fitness_result1 = fitness_question1(answer1)
  @fitness_result2 = fitness_question2(answer2)
  erb :results
  end
end