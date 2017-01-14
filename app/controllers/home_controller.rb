class HomeController < ApplicationController
    skip_before_action :authenticate_user_from_token!
    def index
        @users = User.all
        render "home.html.erb"
    end
end
