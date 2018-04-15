class SecretsController < ApplicationController
  def show
    return  redirect_to  controller: 'sessions', action: 'new' unless session.include? :name
  end
end
