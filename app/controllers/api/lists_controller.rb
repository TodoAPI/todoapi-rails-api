class Api::ListsController < ApplicationController

  def index
    render json: {
      lists: List.all
    }
  end

  def create
    list = List.new(list_params)

    if list.save
      render json: {list: list}, status: 201
    else
      render json: {error: "name must be unique"}, status: 422
    end
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end
