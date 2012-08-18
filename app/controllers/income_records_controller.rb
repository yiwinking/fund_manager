class IncomeRecordsController < ApplicationController
  def index
    @records = current_user.incomes
  end

  def new
    @record = IncomeRecord.new
  end

  def create
    @record = current_user.incomes.new(params[:income])
    if @record.save
      redirect_to income_records_path, notice: 'Income Record was successfully created.'
    end
  end
end
