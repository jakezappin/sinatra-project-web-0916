require_relative 'config/environment'

use Rack::MethodOverride
use CustomerController
use RestaurantController
run ApplicationController
