class TransactionsController < ApplicationController
	before_action :find_transactions, only: [:show, :edit, :update, :destroy]

  def index
  	@transactions = Transaction.all.order('created_at DESC')
  end

  def new
  	@transaction = Transaction.new
  end

  def create
  	@transaction = Transaction.new(transaction_params)
  	if @transaction.save
  		redirect_to transactions_path
  	else 
  		render 'new'
  	end	
  end

  def show
  end

  def edit
  end

  def update
  	if @transaction.update(transaction_params)
  		redirect_to @transaction
  	else
  		render :edit
  	end
  end

  def destroy
  	@transaction.destroy
  	redirect_to transactions_path
  end

  private

  def find_transactions
  	@transaction = Transaction.find(params[:id])
  end

  def transaction_params
  	params.require(:transaction).permit(:transaction_type, :amount, :balance, :transaction_date)
  end
end
