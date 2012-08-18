class BillingRecordsController < ApplicationController
  def index
    @records = current_user.billing_records
  end

  def new
    @record = BillingRecord.new
  end

  def create
    @record = current_user.billing_records.new(params[:billing_record])
    if @record.save
      redirect_to billing_records_path, notice: 'Billing Record was successfully created.'
    else
      render :new
    end
  end

  def edit
    @record = current_user.billing_records.find(params[:id])
  end

  def update
    @record = current_user.billing_records.find(params[:id])
    if @record.update_attributes(params[:billing_record])
      redirect_to billing_records_path, notice: 'Billing Record was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @record = current_user.billing_records.find(params[:id])
    @record.destroy
    redirect_to billing_records_path, notice: 'Billing Record was successfully deleted.'
  end
end
