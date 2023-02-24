class UsersController < ApplicationController

 # UsersController#show
 # Find a user in the database using the user id from the session hash
  def show
   user = User.find_by(id: session[:user_id])
  # Return the user as a JSON object
    render json: user
  end 

#  def show
#   user = User.find_by(id: session[:user_id])
#       if user 
#         render json: user
#       else
#         render json: { error: "Not authorized" }, status: :unauthorized
#       end
#   end 

end
