class RankController < ApplicationController
  expose(:rank) { Rank.all }
end
