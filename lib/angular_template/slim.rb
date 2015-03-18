module AngularTemplate
  class Slim < Html
    private

    def escaped_body
      escape_javascript(::Slim::Template.new({}){ data }.render({}))
    end
  end
end
