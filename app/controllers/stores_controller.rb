class StoresController < ApplicationController
before_action :require_login, only: [:edit]
before_action :authorize!, only: [:edit]

  def index
    @stores = Store.all
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit

  end

  private

  def require_login
    unless current_user
      redirect_to login_path
    end
  end

  def authorize!

  end
end
