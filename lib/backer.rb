
class Backer

  attr_accessor :backed_projects
  attr_reader :name

  def initialize(name, project = nil)
    @name = name
    @backed_projects = []
  end

  def back_project(project)
    Project.new(project)
    @backed_projects << project
    project.backers << self
    #more advanced need to add the backer to @backers array as part of Project object
  end

end
