class ApplicationController < ActionController::Base
    def hello
        render html: "¡Hola, mundo!"
    end

    def goodbye
        render html: "goodbye, world!"
    end

    def home
        @readme = CommonMarker.render_html(
            File.read(Rails.root.join('README.md')), :DEFAULT
        ).html_safe
    end
end