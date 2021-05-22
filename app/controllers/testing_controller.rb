class TestingController < ApplicationController
    def index
        render({ :template => "testing/test_splash.html.erb" })
    end

end