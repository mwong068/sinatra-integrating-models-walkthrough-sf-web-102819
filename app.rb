require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
    # text_from_user = params[:user_text] 

    @analyzed_text = TextAnalyzer.new(params[:user_text])
    puts @analyzed_text.count_of_words


    erb :results
  end
end
