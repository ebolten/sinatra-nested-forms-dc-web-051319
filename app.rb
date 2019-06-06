require './environment'

module FormsLab
  class App < Sinatra::Base

    configure do
      set :public_folder, 'public' #folder to be used
      set :views, 'views/pirates' #setting the view for this page
    end

    # code other routes/actions here
    get '/' do
      erb :show
    end

    #takes user to form to create new pirate
    get '/pirates/new' do
      erb :new
    end

    #creates new objects from form submission
    post '/pirates' do
      pirate_name = params['pirate_name']
      pirate_height = params['pirate_height']
      pirate_weight = params['pirate_weight']
      @pirate = Pirate.new(pirate_name,pirate_height,pirate_weight)

      ship_one_name = params['ship_one_name']
      ship_one_type = params['ship_one_type']
      ship_one_booty = params['ship_one_booty']
      @ship_one = Ship.new(ship_one_name,ship_one_type,ship_one_booty)
      
      ship_two_name = params['ship_two_name']
      ship_two_type = params['ship_two_type']
      ship_two_booty = params['ship_two_booty']
      @ship_two = Ship.new(ship_two_name,ship_two_type,ship_two_booty)

      erb :show
    end



  end
end
