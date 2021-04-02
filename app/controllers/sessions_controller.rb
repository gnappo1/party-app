class SessionsController < ApplicationController

    def new
        @user = User.new
    end

    def create
        byebug
        #find the user by email
        #if found and password can be authenticated (@user.authenticate(params[:user][:password]))
        #set session's user_id
        #redirect to show
        #else redirect to the signin form
    end

end