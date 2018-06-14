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

end
