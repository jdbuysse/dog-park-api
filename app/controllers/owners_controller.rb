class OwnersController < ApplicationController
  def destroy
    @owner = Owner.find params[:id]
    @owner.destroy

    render status: :no_content
  end

  def update
    @owner = Owner.find params[:id]
    @owner.update(
      name: params[:name],
      age: params[:age],
    )

    render json: { owner: @owner }, status: :ok
  end

  def create
    @owner = Owner.create(
      name: params[:name],
      age: params[:age],
    )

    #honestly forget what these two methods were about
    @dogs = params[:dogs].map do |dog|
      Dog.create(
        name: dog[:name],
        breed: dog[:breed],
      )
    end

    @dogs.each do |dog| 
      @owner.dogs << dog
    end

    render json: { owner: @owner }, status: :created, include: [:dogs]
  end

  def show
    @owner = Owner.find params[:id]
    render json: { owner: @owner }, include: [:dogs]
  end

  def index
    @owners = Owner.all
    render json: { owners: @owners }, include: [:dogs]
  end
end
