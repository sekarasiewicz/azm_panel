class ServantsController < ApplicationController
  expose(:servants)
  expose(:servant, attributes: :servant_params)

  def create
    if servant.save
      redirect_to(servant)
    else
      render :new
    end
  end

  private

  def servant_params
    params.require(:servant).permit!
  end
end
