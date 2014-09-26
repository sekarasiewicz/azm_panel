class ServantsController < ApplicationController
  expose(:servants) { Servant.ordered }
  expose(:servant, attributes: :servant_params)
  expose(:status_type) { Servant::STATUS_TYPE }

  def create
    if servant.save
      redirect_to_index
    else
      render :new
    end
  end

  def update
    if servant.save
      redirect_to_index
    else
      render :edit
    end
  end

  def destroy
    servant.destroy
    redirect_to_index
  end

  private

  def servant_params
    params.require(:servant).permit!
  end

  def redirect_to_index
    redirect_to servants_path
  end
end
