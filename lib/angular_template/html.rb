require 'tilt'
require 'action_view'

module AngularTemplate
  class Html < Tilt::Template
    include ActionView::Helpers::JavaScriptHelper

    def prepare
      @data += "\n" if data != '' && data !~ /\n\Z/m
    end

    def evaluate(context, locals, &block)
      @context = context
      "angular.module('application.%stemplates').run(function($templateCache){ $templateCache.put('%s', '%s') });" % arguments
    end

    private

    attr_reader :context

    def escaped_body
      escape_javascript(data)
    end

    def arguments
      [module_name, template_name, escaped_body]
    end

    def module_name
      @module_name ||= context.logical_path.split('templates/').first.gsub('/', '.')
    end

    def template_name
      @template_name ||= context.logical_path.split('templates/').join
    end
  end
end
