require "pry"

class Backer

    attr_reader :name

    def initialize(name)
        @name = name
    end

    def name
        @name
    end

    def back_project(project)
        ProjectBacker.new(project,self)
    end

    def backed_projects 
        b_pro = ProjectBacker.all.select do |projects| # Eempty variable, to then iterate through tthe project backer, makes an array
         projects.backer == self #find all projects with the same backer
        end

        b_pro.map do |pro| #iterate through that array
            pro.project #call out the projects
        end
    end
end