#Our CLI Controller
class MyWeather::CLI

  def call
    welcome
    menu
  end

  def welcome
    puts "*******Welcome to my Weather CLI app where you can get current weather conditions*******"
  end

  
end
