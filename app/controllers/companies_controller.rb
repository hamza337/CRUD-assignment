class CompaniesController < ApplicationController
    def index
    @companies = Company.all
    end
    def show 
        @company = Company.find(params[:id])
    end
    def new 
        @company=Company.new
    end
    def create 
  
        @company = Company.new(company_params)
    
        if @company.save
          @company.update(created_on: Time.now)
          redirect_to @company
        else
          render :new, status: :unprocessable_entity
        end
    
    end
    def edit
        @company = Company.find(params[:id])
      end
    
    def update
        @company = Company.find(params[:id])
    
        if @company.update(company_params)
          @company.update(updated_on: Time.now)
          redirect_to @company
        else
          render :edit, status: :unprocessable_entity
        end
      end
      
    def destroy
        @company = Company.find(params[:id])
        @company.destroy
        redirect_to root_path, status: :see_other
    end
    
    
    private
    def company_params
    params.require(:company).permit(:name , :location , :phone_number , :no_of_employee , :company_type )
    end
end
