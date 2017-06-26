require_relative 'cli.rb'
class MyWeather::Weather
  attr_accessor :condtion, :temperature

  def self.scrape_report
    doc = Nokogiri::HTML(open("https://www.google.com/#q=weather+#{input}"))
    weather = self.new
    weather.condition = doc.css("span#wob_dc.vk_gy.vk_sh")
    weather.temperature = doc.css("span#wob_tm.wob_t")

    end
end
