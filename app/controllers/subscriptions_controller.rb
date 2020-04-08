class SubscriptionsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_community, only: [:create, :destroy]

  def create
    @subscription = @community.subscriptions.where(user_id: current_user.id).first_or_create

    respond_to do |format|
      format.html { redirect_do @community, notice: "You successfully subscribed to #{@community.name}" }
      format.js # create.js.erb
    end
  end

  def destroy
    @subscription = @community.subscriptions.where(user_id: current_user.id).first_or_create
    @subscription.destroy

    respond_to do |format|
      format.html { redirect_do @community, notice: "You successfully unsubscribed to #{@community.name}" }
      format.js # destroy.js.erb
    end
  end

  private

    def set_community
      @community = Community.find(params[:community_id])
    end
end