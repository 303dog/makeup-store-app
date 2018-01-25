require 'rack-flash'

class ApplicationController < Sinatra::Base
  use Rack::Flash

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
    enable :sessions
    set :session_secret, 'makeuphoarder'
  end

  def current_user(session)
    User.find(session_hash[:user_id])
  end

  def logged_in?(session)
    !!session[:user_id]
  end

  def redirect_if_logged_out(session)
    if !logged_in?(session)
      redirect '/login'
    end
  end
  def redirect_if_logged_in(session)
    if logged_in?(session)
      redirect '/products'
    end
  end

  def empty_fields?(hash)
    hash.values.any? {|x| x.nil? || x.empty?}
  end

  # **** ERROR MSG ****
  get '/whoops' do
    erb :error
  end

  get '/' do
    redirect '/products'
  end

  get '/signup' do
    redirect_if_logged_in(session)

    erb :'users/signup'
  end

  post '/signup' do
    if empty_fields?(params[:user])
      redirect '/signup'
    else
      # binding.pry
      user = User.new(params[:user])

      if user.save
        session[:user_id] = user.id
        redirect '/products'
      else
        redirect '/whoops'
      end
    end
  end

  get '/login' do
    redirect_if_logged_in(session)

    erb :'users/login'
  end

  post '/login' do
    if empty_fields?(params[:user])
      flash[:message] = "Umm.. Please fill out the form before submitting.."
      redirect '/login'
    else
      user = User.find_by(email: params[:user][:email])

      if user && user.authenticate(params[:user][:password])
        session[:user_id] = user.id
        redirect '/products'
      else
        flash[:message] = "Wrong password or email. Please try again!"
        redirect '/login'
      end
    end
  end

  get '/logout' do
    redirect_if_logged_out(session)
    session.clear
    redirect '/products'
  end

end
