class DogsController < ApplicationController

  def index
    @dogs = Dog.all
    render json: @dogs
  end

  def create

  end

  def update

  end

  def show

  end

  def destroy

  end

end