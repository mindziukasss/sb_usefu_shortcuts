class TextsublimesController < ApplicationController
	before_action :find_textsublime, only: [:show, :edit, :update, :destroy]


	def index
		
	end


	def show
		
	end

	def new
		@textsublime = Textsublime.new
	end

	def create
		@textsublime = Textsublime.new textsublimes_params

		if @textsublime.save
			redirect_to @textsublime
		else
			render 'new'
		end
		
	end

	def edit
		
	end

	def update
		if @textsublime.update textsublimes_params
			redirect_to @textsublime
		else
			render 'edit'
		end

	end

	def destroy
		@textsublime.destroy
		redirect_to textsublimes_path
		
	end


	private

def textsublimes_params
	params.require(:textsublime).permit(:title, :description, :link)
end


def find_textsublime
	@textsublime = Textsublime.find(params[:id])
end



end


