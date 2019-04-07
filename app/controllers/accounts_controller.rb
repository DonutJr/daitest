class AccountsController < ApplicationController



  def index
    @accounts = Account.all

  end

  def new

  end

  def create
    account = Account.new(
                          address: params[:address],
                          balance: params[:balance]
                          )
      account.save
      flash[:success] = "Account Successfully Added"
      redirect_to "/accounts/#{account.id}"
  end

  def show
    account_id = params[:id]
    @account = Account.find(params[:id])
  end

  def edit
    @account = Account.find(params[:id])
  end

  # def update
  #   @account = Account.find(params[:id])

  #   account.assign_attributes(
  #                             address: params[:address],
  #                             balance: params[:balance]
  #                             )
                              
  #   account.name = params[:name]
  #   account.balance = params[:balance]


  #   account.save
  #   flash[:success] = "account Successfully Updated"
  #   redirect_to "/accounts/#{account.id}"
  # end

  def destroy
    account = Account.find(params[:id])
    account.destroy
    flash[:danger] = "Account Successfully Destroyed"
    redirect_to "/accounts/"
  end


end
