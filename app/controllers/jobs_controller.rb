class JobsController < ApplicationController
    def index
        jobs = Job.all.includes(:company, :cities, :conditions, conditions: :category)
        render json: jobs.map{ |job| job.as_json.merge({company: job.company.as_json.merge({avatar: rails_blob_url(job.company.avatar)})}).merge({cities: job.cities.as_json})}
    end
    
    def show
        job = Job.includes(:company, :cities, :conditions, conditions: :category).find(params[:id])
        conditions = job.conditions.map{|c| {category: c.category.name, limit: c.limit}}
        render json:  job.as_json.merge({cities: job.cities.as_json}).merge(company: job.company.as_json.merge({avatar: rails_blob_url(job.company.avatar)}).merge({city: job.company.city.name})).merge(conditions: conditions)
    end

    def create
        job = Job.new(job_params)
        if job.save
            render json: {success: true, data: job.as_json}
        else
            render json: {success: false, message: "hata oluştu"}
        end
    end

    def job_params
        params.require(:job).permit(:title, :desc, :company_id, :job_type, city_ids: [], conditions_attributes: [:category_id, :limit])
    end
end
