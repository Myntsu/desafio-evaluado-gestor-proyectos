class PagesController < ApplicationController
  def index
  end

  def create
    @user = User.create(name: params[:name], 
                        description: params[:description], 
                        date_start: params[:date_start], 
                        date_finish: params[:date_finish], 
                        state: params[:state])
  end

  def dashboard
    @users = User.all

    if params[:state].present?
      @users = User.where('state = ?', params[:state])
    else
      @users = User.find_valid
    end
  end
end
