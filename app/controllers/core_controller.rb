class CoreController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
  end

  def dashboard
    @my_pets = {dog: 1, cat: 2}
  end
end
