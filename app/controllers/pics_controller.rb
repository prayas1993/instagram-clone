class PicsController < ApplicationController
before_action :find_pic , only: [:show , :edit , :update , :destroy]


def index
	@pics=Pic.all.order("created_at DESC")
end

def new
	@pic=Pic.new
end

def create
	@pic = Pic.new(pics_params)

	 if @pic.save
	 	redirect_to @pic , notice: "Yesss,it was posted!"
	 else
	    render 'new'	
     end
end


def edit
end

def update
	if @pic.update(pics_params)
		redirect_to pic_path
	else
	 render 'edit'
	end 	
end

def destroy
	@pic.destroy
	redirect_to root_path
end

 private

  def pics_params
  	params.require(:pic).permit(:title , :description)
  end	

  def find_pic
    @pic = Pic.find(params[:id])
  end 

end
