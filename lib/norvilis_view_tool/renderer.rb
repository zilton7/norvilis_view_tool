module DevcampViewTool
  class Renderer
    def self.copyright name, msg
      "Copyright &copy; #{Time.now.year} <b> #{name}</b> #{msg}".html_safe
    end
  end
end
