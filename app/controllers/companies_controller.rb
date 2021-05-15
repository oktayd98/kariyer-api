class CompaniesController < ApplicationController
    def index
        render json: Company.all.as_json
    end

    def create
        company = Company.new(company_params)
        if company.save
            render json: {success: true, data: company.as_json}
            company.avatar.attach(company_params[:avatar])
        else
            render json: {success: false, message: company.errors.full_messages}
        end
    end

    private
        def company_params
            params.permit(:name, :email, :website, :about, :city_id, :avatar)
        end
end
