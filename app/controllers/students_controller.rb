class StudentsController < ApplicationController
        before_action :set_student, only: :show
        
        def index
                @students = Student.all
        end

        def show
                #@student.active = false
        end

        def activate
                @student = Student.find(params[:id])

                if @student.active == false
                        @student.update_attributes(active: true)
                else
                        @student.update_attributes(active: false)
                end

               redirect_to "/students/#{@student.id}"
        end

        private

        def set_student
                @student = Student.find(params[:id])
        end

end