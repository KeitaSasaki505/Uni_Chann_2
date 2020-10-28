class JoinsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_join, only: [:index, :create, :show]
  
  def index
    @join = Join.where(event_id: @event)
  end

  def new
    @join = Join.new
  end

  def create
    @join = @event.joins.new(join_params)
    if @join.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    
  end

  def update
  end

  def destroy
  end

  private

  def join_params
    params.require(:join).permit(:event_id, :name_kanji, :name_kana, :email, :phone, :message).merge(user_id: current_user.id)
  end

  def set_join
    @event = Event.find(params[:event_id])
  end
end
