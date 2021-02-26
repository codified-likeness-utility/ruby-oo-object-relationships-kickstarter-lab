require 'pry'
class Backer

    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name

        @@all << self
    end

    def back_project(project)
        @project = ProjectBacker.new(project, self)
    end

    def backed_projects
        projects = ProjectBacker.all.select {|project_obj| project_obj.backer == self}
            projects.map {|project| project.project}
    end

    def self.all
        @@all
    end

end