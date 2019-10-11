require_relative ('project')
require_relative ('project_backer')
require_relative ('backer')

class Backer

    attr_accessor :name 

    def initialize(name) 
        @name = name
    end 

    def back_project(project)
        @project = ProjectBacker.new(project, self)
    end

    def backed_projects
        new_array = []
       ProjectBacker.all.each do |array| 
        if array.backer == self 
            new_array << array.project
        end
    end
    new_array
        #binding.pry 
    end
end 