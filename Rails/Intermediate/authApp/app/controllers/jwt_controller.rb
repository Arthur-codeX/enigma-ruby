class JwtController < ApplicationController

    @secret="secret_key"

    def check
        puts "Line 6 Token Token"
        puts request.headers['token']
       #header of request
       begin
           
            token=request.headers['token']
            decoded_token=JWT.decode token,'secret_key',true,{algorithm:"HS256"}
            puts decoded_token

            return render json:{decoded_token:decoded_token}
       rescue => exception
            render status:401, json:{"error":"Invalid token"}
       end

    
    end

    def login
      exp=Time.now.to_i+20
      payload={
        data:{id:1,role:"admin"},
        exp:exp
      }

      token=JWT.encode payload,'secret_key','HS256'

      render json:{token:token}

    end


end
