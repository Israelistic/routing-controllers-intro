class PagesController < ApplicationController

     def welcome
          render :welcome
          @header = "This is the welcome page"
     end
     def about
          render :about
          @header = "This is the about us page"
     end
     def contest
          render :contest
          @header = "This is the contest page"
     end
     def kitten
          requested_size = params[:size]
          @kitten_url = "http://lorempixel.com/#{requested_size}/#{requested_size}/cats"
     end


end
