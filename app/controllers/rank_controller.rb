class RankController < ApplicationController
  expose(:rank_all) { Rank.all }
  expose(:rank, ancestor: :rank_all)
end
