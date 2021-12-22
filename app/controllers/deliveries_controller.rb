class DeliveriesController < ApplicationController
	before_action :authenticate_user!, :except => [:index]

	def index
		@deliveries = Delivery.all
	end 
		

	def new
		@delivery = Delivery.new
	end	

	def create
		@delivery = Delivery.create(delivery_params)
		
		if @delivery
			redirect_to @delivery
		else
			flash[:notice] = "cant create"
			render :new
		end
	end	


	def show
		@delivery = Delivery.find(params[:id])
	end	


	def edit
		@delivery = Delivery.find(params[:id])
	end


	def update
		@delivery = Delivery.find(params[:id])
		
		if @delivery.update(delivery_params)
			redirect @delivery
		else 
			flash[:notice] = "Cant update"
			render :edit
		end		
	end
		

	def destroy
		@delivery = Delivery.find(params[:id])
		@delivery.destroy
		redirect_to root_path
	end 


	private
	def delivery_params
		start_datetime = DateTime.new(params["delivery"]["start_datetime(1i)"].to_i,params["delivery"]["start_datetime(2i)"].to_i,
			params["delivery"]["start_datetime(3i)"].to_i,params["delivery"]["start_datetime(4i)"].to_i,params["delivery"]["start_datetime(5i)"].to_i)
				end_datetime = DateTime.new(params["delivery"]["end_datetime(1i)"].to_i,params["delivery"]["end_datetime(2i)"].to_i,
			params["delivery"]["end_datetime(3i)"].to_i,params["delivery"]["end_datetime(4i)"].to_i,params["delivery"]["end_datetime(5i)"].to_i)		
		out = {:item_id=>1,:start_address=>params['delivery']['start_address'],:end_address=>params["delivery"]["end_address"],:start_datetime=>start_datetime,:end_datetime=>end_datetime}
	end	
end
