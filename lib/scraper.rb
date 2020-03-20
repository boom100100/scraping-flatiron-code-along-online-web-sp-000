require 'nokogiri'
require 'open-uri'

require_relative './course.rb'

class Scraper

  def get_page
<<<<<<< HEAD
    html = open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    Nokogiri::HTML(html)
    #binding.pry
  end

  def get_courses
    puts get_page.css(".post").text

    get_page.css(".post")#.first.css("h2")
  end

  def make_courses
    get_courses.each {|post|
      item = Course.new
      item.title = post.css("h2").text
      item.description = post.css("p").text
      item.schedule = post.css(".date").text
=======
    html = open("https://flatironschool.com/")
    Nokogiri::HTML(html)
  end

  def get_courses
    get_page.css("body h3")
  end

  def make_courses
    get_courses.each {|course|
      Course.new()
>>>>>>> 35495d118893fd40a4ebceda92d5da32260cba4b
    }

  end

  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

end
