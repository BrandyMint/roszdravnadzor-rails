# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |navigation|
  navigation.items do |primary|
    #primary.item :hotels, I18n.t("admin.menu.hotels"), root_url

    primary.dom_class = 'nav navbar-nav pull-right'

    @menu.each do |item|
      if item['links'].present?
        primary.item item['id'], item['name'] do |inner|
          item['links'].each do |inn|
            inner.item inn['id'], inn['name'], document_path(inn['id'])
          end
        end
      else
        primary.item item['id'], item['name'], document_path(item['id'])
      end
    end

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end
