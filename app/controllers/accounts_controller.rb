class AccountsController < ApplicationController



  def index
    @accounts = Account.all

    

  end

  def new
  end

  def create
    account = Account.new(
                          address: params[:address],
                          balance: (Unirest.get("https://api.etherscan.io/api?module=account&action=tokenbalance&contractaddress=0x89d24a6b4ccb1b6faa2625fe562bdd9a23260359&address=#{params[:address]}&tag=latest&apikey=ZUHDZFKJEAIU4FCCMTVDGTR87QQW15ZDCR").body["result"].to_i)/10**18.round
                          )
    account.save


    flash[:success] = "Account Successfully Added"
    redirect_to "/accounts/"
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
