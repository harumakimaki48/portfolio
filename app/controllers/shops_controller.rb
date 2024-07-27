class ShopsController < ApplicationController
    def index
        @q = Shop.ransack(params[:q]) 
        @shops = @q.result(distinct: true) 

        respond_to do |format|
            format.html 
            format.js   
        end
    end
end
