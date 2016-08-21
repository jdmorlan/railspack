module Railspack
  module TemplateHelper
    # Given a template_name, looks in the templates/ directory
    # and returns the contents of the file.
    def self.get_from_file(template_name)
      template_path = File.join(File.dirname(__FILE__), 'templates', template_name)
      file = File.open(template_path, "rb")
      contents = file.read
    end

    def self.render(template_name, locals)
      contents = TemplateHelper.get_from_file(template_name)
      Erubis::Eruby.new(contents).result(locals)
    end
  end
end
