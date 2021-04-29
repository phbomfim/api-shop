class ApiController < ApplicationController 
    before_action :set_default_format

    private

        def set_default_format  #Set default to JSON to fix Rails problem
            request.format = :json
        end
end