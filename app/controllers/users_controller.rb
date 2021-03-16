class UsersController < ApplicationController
before_action :authenticate_user, {only: [:edit, :update]}
before_action :forbid_login_user,{only: [:new,:login_form,:login]}
before_action :ensure_correct_user, {only:[:edit,:update]}

  def index
    @users=User.all

  end
  def show
    @user=User.find_by(id: params[:id])
    # @try = @user.posts.paginate(page: params[:page], per_page: 5)
 @posts = Post.paginate(page: params[:page], per_page: 5).where(user_id: @user.id).order(created_at: :desc)
    @count=0
  end

  def edit
    @user=User.find_by(id: params[:id])
  end
  def update
    @user=User.find_by(id: params[:id])
    # @user.name=params[:name]
    # @user.circle_id=params[:circle_id]
    @user.user_content=params[:user_content]
    if params[:image]
      @user.image_name="#{@user.id}.jpg"
      image=params[:image]
      File.binwrite("public/user_images/#{@user.image_name}",image.read)
    end
    if @user.save
      flash[:notice]="ユーザー情報を編集しました"
      redirect_to("/users/#{@user.id}")
    else
      render("users/edit")
    end
  end
  def login_form

  end
  def login
    @user=User.find_by(circle_id: params[:id],
    password: params[:password])
    if @user
      session[:user_id]=@user.id
      flash[:notice]="ログインしました"
      redirect_to("/users/#{@user.id}")
    else
      @error_message="IDまたはパスワードが間違っています"
      @circle_id=params[:id]
      @password=params[:password]
      render("users/login_form")
    end
  end

  def logout
    session[:user_id]=nil
    flash[:notice]="ログアウトしました"
    redirect_to("/")
  end

  def ensure_correct_user
    if @current_user.id != params[:id].to_i
      flash[:notice]="権限がありません"
      redirect_to("/posts/index")
    end
  end
end
