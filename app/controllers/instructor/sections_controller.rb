class Instructor::SectionsController < ApplicationController
    def new
        @course = Course.find(params[:course_id])
        @sections = Section.new
    end 

    private 

    def section_params
        params.require(:section).permit(:title)
    end 
end
