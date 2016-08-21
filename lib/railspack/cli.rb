require 'thor'
require 'erubis'
require 'pathname'

require 'railspack/template_helper'

module Railspack
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates')
    end

    desc "generate", "Generate all webpack files"
    method_option :install, aliases: '-i', desc: 'Run npm install after generating files'
    def generate
      run_npm_install = options[:install]

      build_package_json
      copy_file("index.js", "frontend/index.js")
      copy_file("registerComponent.js", "frontend/registerComponent.js")
      copy_file("react_helper.rb", "app/helpers/react_helper.rb")
      copy_file("babelrc.js", ".babelrc")
      copy_file("webpack.js", "webpack.config.babel.js")

      if run_npm_install
        unless npm_available?
          puts "NPM is not installed, please install and then run `npm install` manually"
          return
        end

        puts "Running `npm install`"
        exec("npm install")
      end

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

    def build_package_json
      project_name = get_project_name
      author_name = get_git_username

      locals = { application_name: project_name, author_name: author_name }
      contents = TemplateHelper.render('package.json.erb', locals)
      create_file('package.json', contents)
    end
  end
end
