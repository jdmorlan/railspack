require 'thor'

module Railspack
  class CLI < Thor
    include Thor::Actions

    def self.source_root
      File.join(File.dirname(__FILE__), 'templates')
    end

    desc "generate", "Generate all webpack files"
    def generate
      copy_file("index.js", "frontend/index.js")
      copy_file("registerComponent.js", "frontend/registerComponent")
      copy_file("react_helper.rb", "app/helpers/react_helper.rb")
      copy_file("package.json", "package.json")
      copy_file("babelrc.js", ".babelrc")
      copy_file("webpack.js", "webpack.config.babel.js")
    end
  end
end
