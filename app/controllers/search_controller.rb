class SearchController < ApplicationController

    def index 
        @users = User.search_all
    end

    def search

        query = params[:query].to_s
        return all_users if query.empty?

        @users = User.search_query(query)       
        
        render "search/_search"
    end


    private

    def all_users
        @users = User.search_all
        render "search/_search"
    end
end