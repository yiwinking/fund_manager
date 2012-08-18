class IncomeRecordsController < ApplicationController
  def index
    @records = current_user.income_records
  end

  def new
    @record = IncomeRecord.new
  end

  def create
    @record = current_user.income_records.new(params[:income_record])
    if @record.save
      redirect_to income_records_path, notice: 'Income Record was successfully created.'
    else
      render :new
    end
  end
end
