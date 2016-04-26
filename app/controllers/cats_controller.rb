class CatsController < ApplicationController
    def new
        @cat = Cat.new
    end
    
    def create
        @cat = Cat.new(cat_params)
        
        if @cat.save
            redirect_to @cat
        else
            render 'new'
        end
    end
    
    def edit
        @cat = Cat.find(params[:id])
    end
    
    def show
        @cat = Cat.find(params[:id])
    end
    
    def index
        @cats = Cat.all
    end
    def update
        @cat = Cat.find(params[:id])
        
        if @cat.update(cat_params)
            redirect_to @cat
        else
            render 'edit'
        end
    end
    
    def destroy
        @cat = Cat.find(params[:id])
        @cat.destroy
 
        redirect_to cats_path
    end
    
    private
        def cat_params
            params.require(:cat).permit(:name, :color, :race, :gender)
        end
        #render plain: params[:cat].inspect
end
