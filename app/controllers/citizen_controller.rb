class CitizenController < ApplicationController
	
	def list
		@citizens = Citizen.all
		render :action => 'list'
	end

	def show
		@citizen = Citizen.find(params[:id])
	end

	def new
		@citizen = Citizen.new
		#render :action => 'new'
	end

	def create
		@citizens = Citizen.new(citizen_params)

		if @citizens.save
			redirect_to :action => 'list'
		end

	end

	def citizen_params
		params.require(:citizens).permit(:name, :phone_num1, :phone_num2, :email, :address ,:nat_id )
	end

	def edit
		@citizen = Citizen.find(params[:id])
	end

	def update
		@citizen = Citizen.find(params[:id])

		if @citizen.update_attributes(book_param)
			redirect_to :action => 'show', :id => @book
		else

			render :action => 'edit'

		end
	end	

		def delete
			Citizen.find(params[:id]).destroy
			redirect_to :action => 'list'
		end

	end
