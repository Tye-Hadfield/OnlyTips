class TippersController < ApplicationController
  before_action :set_users
  before_action :set_user, only: [:show ]
  before_action :set_tippers, only: [:index]
  skip_before_action :verify_authenticity_token, only: :subscribe

def subscribe
  Stripe.api_key = 'sk_test_51HisrUCXYEQ6fBzqYm9NYH55ZwW4Uo8YSzVAdld5yTVpSHNX1WbacpbsQMbdOvhQ32j923q2SvseThBEUyXxq1Vh00Qe9P3xxj'
  session = Stripe::Checkout::Session.create(
    success_url: success_url(params[:tipper_id]),
    cancel_url: cancel_url,
    payment_method_types: ['card'],
    mode: 'subscription',
    line_items: [{
      quantity: 1,
      price: "price_1Ho07kCXYEQ6fBzqY76bAsEf",
    }],
  )
  # return {
  #   sessionId: session.id
  # }.to_json
  respond_to do |format|
    format.json { render :json => {sessionId: session.id} }  # note, no :location or :status options
  end
end

def cancel

  redirect_to tippers_path

end


def success

  @subscribeuser = params[:id]
  
  current_user.subscriptions.push(User.find(params[:id]))

  redirect_to show_tipper_path

end

def remove_sub

  current_user.subscriptions.delete(params[:id])

end


def usersubs

end



private


  def set_tippers
  
   @tippers = User.all.joins(:roles).where('roles.name = ?', "tipper")

  end

  def set_users

      @users = User.all
      @cuser = current_user

  end

  def set_user
      @user = User.find(params[:id])
  end

end
