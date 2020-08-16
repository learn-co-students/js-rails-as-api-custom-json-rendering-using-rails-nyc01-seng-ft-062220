class BirdsController < ApplicationController
  def index
    birds = Bird.all
    random = birds.sample
    # render json: random
    render json: birds
  end

  def show 
    bird = Bird.find_by(id: params[:id])
    render json: bird.to_json(except: [:created_at, :updated_at])
  end 
end