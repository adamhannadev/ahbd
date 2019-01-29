class CalendarController < ApplicationController

def index
    params['month'] = params['month'] || Date.current
end

end
