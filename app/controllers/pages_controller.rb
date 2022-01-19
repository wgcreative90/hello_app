require 'commonmarker'
class PagesController < ApplicationController
    def home
        @readme = CommonMarker.render_html(
            File.read(Rails.root.join('README.md')),
            :DEFAULT
        ).html_safe
    end
end