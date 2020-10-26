class JoinsController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  
  def new
    @join = Join.new
  end

  def create
    @event = Event.find(params[:event_id])
    @join = @event.joins.new(join_params)
    if @join.save
      redirect_to root_path
    else
      render :new
    end
  end

  def update
  end

  def destroy
  end

  private

  def join_params
    params.permit(:event_id, :name_kanji, :name_kana, :email, :phone, :message).merge(user_id: current_user.id)
  end
end
