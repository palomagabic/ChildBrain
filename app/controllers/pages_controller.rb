class PagesController < ApplicationController

  before_action :set_pages, only: [:edit, :destroy]
  before_action :authenticate_premium!, only: [:edit, :update]

  def index
  end

  def types

  end

  def game
  end

  def invitade
  end
end
