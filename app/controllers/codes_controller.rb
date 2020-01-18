class CodesController < ApplicationController

  def index
    @codes = Code.all.order(created_at: :asc)
  end

  def show
    @code = Code.find(params[:id])
  end

end