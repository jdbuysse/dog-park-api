class DogsController < ApplicationController
  def destroy
    @dog = Dog.find params[:id]
    @dog.destroy

    render status: :no_content
  end

  def update
    @dog = Dog.find params[:id]
    @dog.update(
      name: params[:name],
      breed: params[:breed],
    )

    render json: { dog: @dog }, status: :ok
  end

  def create
    @dog = Dog.create(
      name: params[:name],
      breed: params[:breed],
    )

    render json: { dog: @dog }, status: :created
  end

  def show
    @dog = Dog.find params[:id]
    render json: { dog: @dog }, include: [:owners]
  end

  def index
    @dogs = Dog.all
    render json: { dogs: @dogs }, include: [:owners]
  end
end
