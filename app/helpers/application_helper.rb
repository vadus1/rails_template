module ApplicationHelper

  def app_version
    content_tag :span, :data => { :version => RailsTemplate.version.to_s } do
      'v' + RailsTemplate.version.format( "%M.%m.%p" )
    end
  end

  def badge count, css_id ='', type = ''
    # Скрываем badge если в нем пусто. JS сам его покажет когда появится информация
    #
    options = {
      :class => "badge badge-#{type}", :id => css_id
    }
    # options[:style] = 'visibility: hidden' if count.to_i == 0
    counter_tag count, options
  end

  def counter_tag count, options={}
    count = '' if count == 0
    content_tag :span, count, options
  end
end
