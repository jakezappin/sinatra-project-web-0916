require_relative 'config/environment'

use Rack::MethodOverride
use BusinessesContoller
use CustomerController
use RestaurantController
run ApplicationController
