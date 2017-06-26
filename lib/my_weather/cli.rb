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
        input = gets.strip.downcase #inputs string to lower case
        if input.to_i > 0 && input.length == 5 #input must be integer and length of 5
          puts "display_report"
          zip = input.to_i
        elsif input =="exit" #skips error mesage to quit program
          ending
        else
          puts "Please enter five numbers for 'zip code' or type ‘exit’ to quit." #error message
        end
      end
    end

    def ending
      puts "Thank you for using my CLI weather app!  Have a nice day!"
    end

end
