class IndexController < ApplicationController
  def home
  end

  def contact
  end

  def request_contact
    name = params[:name]
    email = params[:email]
    telephone = params[:telephone]
    message = params[:message]

    if email.blank?
      flash[:alert] = I18n.t('index.request_contact.no_email')
    else
      #send email
      flash[:notice] = I18n.t('index.request_contact.email_sent')
    end

    redirect_to root_path
  end
end
