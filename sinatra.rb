require 'sinatra'
require 'pry'

get '/' do
  erb :index
end

post '/angle' do
  File.open('./arduino.txt', 'wb') do |file|
    file.puts params['angle']
  end
end
