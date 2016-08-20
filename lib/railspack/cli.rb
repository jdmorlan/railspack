require 'thor'
require 'erubis'
require 'pathname'

module Railspack
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates')
    end

    desc "generate", "Generate all webpack files"
    def generate
      if !npm_available?
        puts "NPM not installed"
        return
      end

      build_package_json
      copy_file("index.js", "frontend/index.js")
      copy_file("registerComponent.js", "frontend/registerComponent.js")
      copy_file("react_helper.rb", "app/helpers/react_helper.rb")
      copy_file("babelrc.js", ".babelrc")
      copy_file("webpack.js", "webpack.config.babel.js")

      puts "Running `npm install`"
      exec("npm install")
    end

    private

    def npm_available?
      output = `which npm`
      !output.include? "not found"
    end

    def get_git_username
      username = `git config user.name`.strip
    end

    def get_project_name
      directory_path = Pathname.new(FileUtils.pwd)
      directory_path.basename
    end

    def get_template_from_file(template_name)
      template_path = File.join(File.dirname(__FILE__), 'templates', template_name)
      file = File.open(template_path, "rb")
      contents = file.read
    end

    def render_template(template_name, locals)
      contents = get_template_from_file(template_name)
      Erubis::Eruby.new(contents).result(locals)
    end

    def build_package_json
      project_name = get_project_name
      author_name = get_git_username

      locals = { application_name: project_name, author_name: author_name }
      contents = render_template('package.json.erb', locals)
      create_file('package.json', contents)
    end
  end
end
