class QuoteController < ApplicationController
  def index
    quote_type = rand(2)
    if quote_type.to_s == '0'
      basic_problem
      render 'basic'
    elsif quote_type.to_s == '1'
      study_problem
      render 'study'
    end
  end

  def basic
    basic_problem
  end

  def study
    study_problem
  end
  
  private
  
  def basic_problem
    @issue = "You have a problem with the #{Faker::Hacker.noun}?"
    @quote = "#{Faker::Hacker.say_something_smart}"
  end
  
  def study_problem
    @researcher = "Professor #{Faker::Name.first_name} #{Faker::Name.last_name}"
    @uni = "#{Faker::University.name}"
    @quote = "An issue with the #{Faker::Hacker.noun} can be solved by #{Faker::Hacker.ingverb} to the #{Faker::Hacker.adjective} #{Faker::Hacker.abbreviation}"
  end
end
