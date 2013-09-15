class Api::ListsController < ApplicationController

  def index
    render json: {
      lists: []
    }
  end

  def create
    render json: {
      list: {}
    }, status: 201
  end
end
