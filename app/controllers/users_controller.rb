class UsersController < ApplicationController
    def index
        users = User.all 
        render json:users
    end 
    def show
       
        if token_user_id == params[:id].to_i
           user = User.find(params[:id])
            render json: user
        else  
            render json: {errors: "you are not authorized"}, status: :unauthorized
        end 
    end 

    def create
       
        user=User.create(user_params)
          
        if user.valid?
            # user.save!
            render json: {token: make_token(user), user_id: user.id}
        else 
            render json:{errors: user.errors.full_messages}, status: :unprocessable_entity
        end 
        
        
    end 

    def update
        user=User.find(params[:id])
        user.update(update_params)

        if user.save 
        render json: user
        else 
        render json:{errors: user.errors.full_messages}, status: :unprocessable_entity
        end 
    end 

    def destroy
        
        user=User.find(params[:id])
 
        user.destroy
        render json: user
    end 

    private

    def user_params
        params.permit(:username, :password, :email, :is_volunteer)
    end 

    def update_params
        params.permit(:username, :first_name, :last_name, :email)
    end 
end
