class UserController < ApplicationController

    before_action :require_login,except: [:login_auth,:signup,:login]

    # attr_accessor :cart_items
    
    # def initialize
    #     @cart_items=[]
    # end


    def require_login
        puts "Hey login required"
        user_id=session["user_id"]
        
        if user_id
            #user is logged in
        else
            redirect_to action:"login"
        end
    end

    def index
        @user_id=session["user_id"]
        # @cart_items=Cart.where(users_id:  @user_id.to_i)
        
        user=User.find(@user_id.to_i)

        @cart_items=user.items

       
        # puts @cart_items

        @items=Item.all

        render "user/index"
    end

    def add_cart
        puts "Add to cat"
        puts params
        @user_id=session["user_id"]
        item_id=params["id"]
        cart=Cart.create(users_id:@user_id.to_i,items_id:item_id.to_i)
        
        p cart
        #render plain: "Hello item  #{item_id} #{cart.id}"
        redirect_to action:'index'
    end

    def login
        render "user/login"
    end

    def login_auth
        email=params[:email]
        password=params[:password]
        user=User.find_by(email:email)

        puts "Login Aut"
        puts user
      
        if user
            if user.password == password
                session["user_id"]=user.id
                #jwt{id:user.id,role:user.role}
                return redirect_to action:"index"
            end
            return redirect_to action:"login"
        end    


        return redirect_to action:"login"

        
    end

    def new

        name=params[:name]
        email=params[:email]
        password=params[:password]


        user=User.new(name:name, email:email, password:password)
        puts user
        user.save()
        session["user_id"]=user.id

        #redirect to index
        redirect_to action:'login'
    end

    def signup
        render "user/signup"
    end

    def cart
        @user_id=session["user_id"]

        user=User.find(@user_id.to_i)

        @cart_items=user.items


        render "user/cart"
    end

    

    
end
