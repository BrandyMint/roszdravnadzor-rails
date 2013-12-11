# -*- coding: utf-8 -*-
# configures your navigation

SimpleNavigation::Configuration.run do |sidebar|
  sidebar.items do |primary|
    #primary.item :hotels, I18n.t("admin.menu.hotels"), root_url

    primary.dom_class = 'nav'

    @sidebar_menu.each do |item|
      primary.item item['id'], item['name'] do |inner|
        item['links'].each do |inn|
          inner.dom_class = 'nav'
          inner.item inn['id'], inn['name'], document_path(inn['id'])
        end
      end
    end

    # you can turn off auto highlighting for a specific level
    primary.auto_highlight = true
  end
end
