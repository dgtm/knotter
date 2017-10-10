class ProfessionalsController < ApplicationController
  before_action :authenticate_user!

  def index
    @a = 1
  end
end
