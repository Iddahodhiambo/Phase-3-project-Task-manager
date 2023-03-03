class UsersController < ApplicationController
    post "/signup" do
        user =User.create(email:params[:email], password:params[:password])
        user.to_json
    end

    post "/login" do
        user =User.find_by(email:params[:email])
        if user.password == params[:password]
            return user
        else
            return "wrong password"
        end
    end

end