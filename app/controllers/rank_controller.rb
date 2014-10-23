class RankController < ApplicationController
  expose(:rank_all) { Rank.all }
  expose(:rank, ancestor: :rank_all, attributes: :rank_params)

  def create
    if rank.save
      redirect_to_index
    else
      render :new
    end
  end

  def update
    if rank.save
      redirect_to_index
    else
      render :edit
    end
  end

  def destroy
    rank.destroy
    redirect_to_index
  end

  private

  def rank_params
    params.require(:rank).permit!
  end

  def redirect_to_index
    redirect_to rank_index_path
  end
end
