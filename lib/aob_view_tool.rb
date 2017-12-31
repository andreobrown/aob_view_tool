require "aob_view_tool/version"
require "aob_view_tool/renderer"

module AobViewTool
  class Renderer
    def self.copyright name, msg
      "&copy; #{Time.now.year} | <b>#{name}</b> #{msg}".html_safe
    end
  end
end
