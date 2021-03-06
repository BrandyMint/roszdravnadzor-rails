module ApplicationHelper
  def app_version
    content_tag :span, :data => { :version => Roszdravnadzor.version.to_s } do
      'v' + Roszdravnadzor.version.format( "%M.%m.%p" )
    end
  end

  def icon *classes
    css = classes.map{|c| "icon-#{c}"}.join(' ')
    content_tag :i, '', :class => "icon #{css}"
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

  def file_to_hash file
    YAML.load_file("#{Rails.root}/public/#{file}.yaml")
  end

  def select_from_hash hash, id
    hash.select{ |d| d['id'].to_i == id }
  end

end
