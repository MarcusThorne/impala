class ApplicationController < ActionController::Base
  before_action :set_categories  ## Set a before_action

  def set_categories
    @navLinks = [{ title: 'stay', description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ab nam architecto odit beatae rerum nesciunt maiores eligendi, perferendis velit eum quo cumque officia! Fuga saepe, enim vel excepturi molestias fugit.', image: '/assets/stay.jpg', link: rooms_path }, 
      { title: 'eat & drink', description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ab nam architecto odit beatae rerum nesciunt maiores eligendi, perferendis velit eum quo cumque officia! Fuga saepe, enim vel excepturi molestias fugit.', image: '/assets/eat.jpg', link: sustenance_path },
      { title: 'about us', description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ab nam architecto odit beatae rerum nesciunt maiores eligendi, perferendis velit eum quo cumque officia! Fuga saepe, enim vel excepturi molestias fugit.', image: '/assets/drink.jpg', link: about_us_path },
      { title: 'contact us', description: 'Lorem ipsum, dolor sit amet consectetur adipisicing elit. Ab nam architecto odit beatae rerum nesciunt maiores eligendi, perferendis velit eum quo cumque officia! Fuga saepe, enim vel excepturi molestias fugit.', image: '/assets/explore.jpg', link: contact_us_path }
    ]
  end
end
