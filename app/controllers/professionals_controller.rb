class ProfessionalsController < ApplicationController
  before_action :authenticate_professional!

  def index
    @a = 1
  end

end
