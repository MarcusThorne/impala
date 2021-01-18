class PagesController < ApplicationController
  def home
    @titles = [{ title: 'RUSTIC & MODERN', image: 'room' }, { title: 'STYLISH & COMFY', image: 'bar' }, { title: 'SOCIAL & FRIENDLY', image: 'building' }]
    @blogs = [
      { title: 'Title of a blog that someone wrote', image: 'bar2', source: 'Sourced from blah / 23 days ago' }, 
      { title: 'A completely different title of a blog that someone wrote', image: 'people', source: 'Sourced from blah / 23 days ago' }, 
      { title: 'An even different title of a blog that someone wrote', image: 'food', source: 'Sourced from blah / 43 days ago' },
      { title: 'Awesome Blog post', image: 'food', source: 'Sourced from wikapedia / 76 days ago' },
      { title: 'Title of a blog that someone wrote', image: 'bar2', source: 'Sourced from blah / 23 days ago' }, 
      { title: 'A completely different title of a blog that someone wrote', image: 'people', source: 'Sourced from blah / 23 days ago' }, 
      { title: 'An even different title of a blog that someone wrote', image: 'food', source: 'Sourced from blah / 43 days ago' },
      { title: 'Awesome Blog post', image: 'food', source: 'Sourced from wikapedia / 76 days ago' },
      { title: 'Title of a blog that someone wrote', image: 'bar2', source: 'Sourced from blah / 23 days ago' }, 
      { title: 'A completely different title of a blog that someone wrote', image: 'people', source: 'Sourced from blah / 23 days ago' }, 
      { title: 'An even different title of a blog that someone wrote', image: 'food', source: 'Sourced from blah / 43 days ago' },
      { title: 'Awesome Blog post', image: 'food', source: 'Sourced from wikapedia / 76 days ago' }
    ]
    @options = [{ title: 'Check-In', date: '10/10/12' }, { title: 'Check-Out', date: '10/10/12' }, { title: 'Adults', date: '1 Adult' }, { title: 'Children', date: '0 Children' }]
  end
end