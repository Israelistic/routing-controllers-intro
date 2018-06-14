class PagesController < ApplicationController
     before_action :set_kitten_url, only: [:kitten, :kittens]
     # before_action :pages
     def welcome
          render :welcome
          @header = "This is the welcome page"
     end
     def about
          render :about
          @header = "This is the about us page"
     end
     def contest
          # render :contest
          @header = "This is the contest page"
          redirect_to "/welcome"
     end
     def kitten
          set_kitten_url
     end

     def kittens
          set_kitten_url
     end

     def set_kitten_url
          requested_size = params[:size]
          @kitten_url = "https://picsum.photos/#{requested_size}/#{requested_size}"
     end
     def contest
          flash[:notice] = "Sorry, the contest has ended"
          redirect_to "/welcome"
     end
     def secrets
          if params[:magic_word] != "hello"
               flash[:notice] = "Sorry, you're not authorized to see that page!"
               redirect_to "/welcome"
          end
     end
     


end
