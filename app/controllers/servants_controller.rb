class ServantsController < ApplicationController
  expose(:servants)
  expose(:servant, attributes: :servant_params)
  expose(:status_type) { Servant::STATUS_TYPE }

  def create
    if servant.save
      redirect_to(servant)
    else
      render :new
    end
  end

  def update
    if servant.save
      redirect_to(servant)
    else
      render :edit
    end
  end

  def destroy
    servant.destroy
    redirect_to servants_path
  end

  private

  def servant_params
    params.require(:servant).permit!
  end
end
