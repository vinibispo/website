class ProjectsController < ApplicationController
  def index
    projects = [{id: 1, title: "UpMedal", image: "upmedal.png"}, {id: 2, title: "Embalar", image: "embalar.png"}, {id: 3, title: "SophaWay", image: "sopha.jpg"}, {id: 4, title: "Leveling App", image: "leveling.png"}]
    render locals: { projects: projects }
    # @projects = Project.all
  end
end
