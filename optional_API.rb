# -*- coding: utf-8 -*-
require 'json'

Plugin.create(:optional_API) do

  command(:optional_API,
          name: '任意のAPIを実行',
          condition: lambda{ |opt| true },
          visible: true,
          role: :postbox) do |opt|
    val = Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text
    val = JSON.parse(val, {:symbolize_names => true})
    endpoint = val.delete(:API)
    (Service.primary.twitter/endpoint).json(val)
    Plugin.create(:gtk).widgetof(opt.widget).widget_post.buffer.text = ''
  end
end
