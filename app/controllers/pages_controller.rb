class PagesController < ApplicationController
  def home
    @titles = [{ title: 'RUSTIC & MODERN', image: 'room' }, { title: 'STYLISH & COMFY', image: 'bar' }, { title: 'SOCIAL & FRIENDLY', image: 'building' }]
    @blogs = Blog.all
    @options = [{ title: 'Check-In', date: '10/10/12' }, { title: 'Check-Out', date: '10/10/12' }, { title: 'Adults', date: '1 Adult' }, { title: 'Children', date: '0 Children' }]
  end

  def sustenance
  end
  
  def contact_us
  end
  
  def about_us
  end
end