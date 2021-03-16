class ContactsController < ApplicationController

  def form
    @contact=Contact.new
  end

  def next
  end

  def create
    @contact=Contact.new(email: params[:email],
                    content: params[:content])
    if @contact.save
      # flash[:notice]="投稿しました"
      ContactMailer.send_mail(@contact).deliver
      redirect_to("contacts/next")
    else
      render("/contacts/form")
    end
  end

end
