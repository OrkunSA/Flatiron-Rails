class SessionsController < ApplicationController
    def new 
    end

    def create 
        if params[:name] && params[:name] != "" 
            session[:name] = params[:name]
            redirect_to '/'
        else 
            redirect_to '/'
        end
    end

    def destroy 
        if session[:name] != nil 
            session.delete :name 
        else 
            session[:name] == nil 
        end
    end
end