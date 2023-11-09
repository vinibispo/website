class ProjectsController < ApplicationController
  def index
    render locals: { projects: }
    # @projects = Project.all
  end

  def projects
    upmedal_description = "
      A unique e-commerce platform dedicated to athletes and e-athletes was developed using Ruby on Rails, ReactJS, and Material UI. This platform includes features such as easy purchase of rewards, a cashback system, and a strategic upselling mechanism, all contributing to increased profitability and customer loyalty. User experience was prioritized with improved application performance. Rectifying a shipping calculation error ensured accurate cost assessments, safeguarding financial health. The project's success enhanced its foothold in the e-commerce market for athletes, marking an important milestone towards superior profitability.
      "
      embalar_description = "
A robust Warehouse Management System built with cutting-edge technologies like Ruby on Rails, RSpec, ReactJS, and Material UI. This system enhances our main system by streamlining barcode scanning, inventory management, picking and packing processes, and more.
      "

      sopha_description = "
      A comprehensive project management application that empowers businesses to streamline collaboration, enhance productivity, and achieve project success. It was written in Ruby on Rails and ReactJS.
      "

      leveling_app = "
      A quiz application that helps users to find out their level of knowledge in a specific subject. It was written in NodeJS, Sequelize, and ReactJS. Used by Gamma Academy - Itau.
      "
    [
      { id: 1, title: 'UpMedal', image: 'upmedal.png', description: upmedal_description },
      { id: 2, title: 'Embalar', image: 'embalar.png', description: embalar_description },
      { id: 3, title: 'SophaWay', image: 'sopha.jpg', description: sopha_description },
      { id: 4, title: 'Leveling App', image: 'leveling.png', description: leveling_app }
    ]
  end

  def show
    project = projects.find { |p| p[:id] == params[:id].to_i }

    render locals: { project: }
  end
end
