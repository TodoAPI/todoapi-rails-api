class Api::ListsController < ApplicationController

  def index
    render json: {
      lists: List.all
    }
  end

  def create
    list = List.create!(list_params)
    render json: list, status: 201
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
