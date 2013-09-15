class Api::ListsController < ApplicationController

  def index
    render json: {
      lists: []
    }
  end
end
