class SimpleAuthController < ApplicationController

    def index
        @ses=session["user"]
        @cook=cookies["user_id"]
    
        if @cook
            #cookies["user_id"]={:value=>"user_id:1",:expires=>Time.now+1000}
            render "simple_auth/index"
        else
            redirect_to action:'login'
        end
    end

    def login
        # sends his email and passord
        # get the user in the db to check if this is correct
        # you create a session for this user
        @user={id:1,email:"",role:"admin"}
        
        session["user"]="user_id:1,other_data"
        cookies["user_id"]={:value=>"user_id:1",:expires=>Time.now+1000}
        render "simple_auth/login" 
    end

    def check
        @ses=session["user"]
        @cook=cookies["user_id"]
        render "simple_auth/check"
    end

end
