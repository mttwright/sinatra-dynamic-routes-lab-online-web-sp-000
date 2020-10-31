require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do
    "Your name is #{params[:name].reverse}"
  end
  
  get '/square/:number' do
    "The number is #{params[:number].to_i * params[:number].to_i}"
  end
  
  get '/say/:number/:phrase' do
    "#{params[:phrase] * params[:number].to_i}"
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1].concat(" ",params[:word2]," ",params[:word3]," ",params[:word4]," ",params[:word5],".")}"
  end
  
  get '/:operation/:num1/:num2' do
    @operation = params[:operation]
    @num1 = params[:num1].to_i
    @num2 = params[:num2].to_i
    erb './views/operation.erb'
  end

end