class PicsController < ApplicationController


def index
end

def new
	@pic=Pic.new
end

def create
	@pic = Pic.new(pics_params)
end

def edit
end

def update
end

def destroy
end

 private

  def pics_params
  	params.require(:pic).permit(:title , :description)
  end	

end
