class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :find_communities

  protected

  def find_communities
    @communities = Community.all.order(:title)
  end

  def configure_permitted_parameters
    added_attrs = [:username]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  end
end
