class InquiriesController < ApplicationController
  def form
    @inquiry=Inquiry.new
  end

  def next
  end

  def create
    @inquiry=Inquiry.new(circle_name: params[:circle_name],
                    kind: params[:kind],
                  person_name: params[:person_name],
                email: params[:email])
    if @inquiry.save
      # flash[:notice]="投稿しました"
      InquiryMailer.send_mail(@inquiry).deliver
      redirect_to("/next")
    else
      render("/inquiries/form")
    end
  end

end
