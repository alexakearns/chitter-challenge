require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/peeps' do
    @peeps = Peep.all

    erb :'peeps/index'
  end

end