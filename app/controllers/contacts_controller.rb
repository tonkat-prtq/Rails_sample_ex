class ContactsController < ApplicationController
  def new
    @contact = Contact.new
  end

  def create
    @contact = Contact.new(contact_params)
    if params[:back]
      render :new
    else
      if @contact.save
        redirect_to new_contact_path, notice: "お問い合わせを受付けました。"
      else
      render :new
    end
  end
  end

end

private

def contact_params
  params.require(:contact).permit(:name, :email, :content)
end
