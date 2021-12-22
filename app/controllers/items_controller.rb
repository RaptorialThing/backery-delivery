class ItemsController < ApplicationController
	before_action :authenticate_user!
	def index
		@items = Item.all
	end	


	def show
		@item = Item.find(params[:id])
	end	


	def new
		@item = Item.new
	end	


	def create
		@item = Item.create(item_params)

		if @item.save
			redirect_to @item
		else
			flash[:notice] = "Cant create new item"
			render :new
		end		
	end	


	def edit
		@item = Item.find(params[:id])
	end	


	def update
		@item = Item.find(params[:id])

		if @item.update(item_params)
			redirect_to @item 
		else 
			flash[:notice] = "Cant update item"
			render :edit
		end		
	end


	def delete
		@item = Item.find(params[:id])
		@item.destroy

		redirect_to root_path
	end	


	private
	def item_params
		params.require(:item).permit(:text,:price)
	end	
end
