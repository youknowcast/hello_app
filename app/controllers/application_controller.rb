class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    #render html: "hello,world"
    render html: "¡hola, mundo!"
  end
  def goodbye
    #render html: "hello,world"
    render html: "good bye, world"
  end
end
