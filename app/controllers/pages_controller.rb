class PagesController < ApplicationController
  def dogs
  	@dogs = Dog.all
  end

  def new
    @dog = Dog.new #Creates an empty dog object.
  end

  def create
    @dog = Dog.create(dog_params)
    if @dog.save #If saving the dog was successful
      redirect_to @dog #Go to the show view of the dog
    else
      render "new" #Go to the new view for the dog
    end
  end

  def show
    @dog = Dog.find(params[:id]) # Query for the dog with the id that is in params
  end

  private

  def dog_params
    params.require(:dog).permit(:name, :age) #Returns a hash that was the value of "name" and "email" from the value of "dog" in params.
  end
end
