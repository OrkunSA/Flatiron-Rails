class SchoolClassesController < ApplicationController
    before_action :set_school_class, only: [:show, :edit, :update, :destroy]

    def index 
        @school_classes = SchoolClass.all 
    end

    def show 
    end

    def new 
        @school_class = SchoolClass.new 
    end

    def edit
    end

    def create
        @school_class = SchoolClass.new(school_class_params)
        @school_class.save
        redirect_to school_class_path(@school_class)
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(school_class_params)
        redirect_to school_class_path(@school_class)
    end



    private

    def school_class_params
        params.require(:school_class).permit!
    end

    # Use callbacks to share common setup or constraints between actions.
    def set_school_class
      @school_class = SchoolClass.find(params[:id])
    end

end
