class JoinsController < ApplicationController
  def new
    @join = Join.new
  end

  def create
    @join = Join
  end

  def update
  end

  def destroy
  end

end
