#Our CLI Controller
class MyWeather::CLI

  def call
    welcome
    menu
  end

  def welcome
    puts "*******Welcome to my Weather CLI app where you can get current weather conditions*******"
  end

  def menu
    input = ""
      while input != "exit"
        puts "What is your 'zip code'?  Enter a 5-digit 'zip code' or type 'exit' to leave the program."
        input = gets.strip.downcase
        if input.length == 5
          puts "display_report"
          zip = input.to_i
        elsif input =="exit"
          ending
        else
          puts "Please enter five numbers for 'zip code' or type ‘exit’ to quit."
        end
      end
    end

end
