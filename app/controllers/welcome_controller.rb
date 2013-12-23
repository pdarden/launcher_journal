class WelcomeController < ApplicationController
  def index
    @entries = Entry.all.order('created_at DESC LIMIT 3')
  end
end
