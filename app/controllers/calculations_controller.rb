class CalculationsController <ApplicationController
include ActionView::Helpers::NumberHelper

def flexible_square
# Parameters: {"number" => "8"}
@user_num = params["number"].to_f

render("calculations/flexible_square.html.erb")
end

def flexible_square_root
# Parameters: {"number" => "8"}
@user_num = params["number"].to_f
@square_root = (@user_num**(0.5)).round(2)

render("calculations/flexible_square_root.html.erb")
end

def flexible_payment
# Parameters: {"number" => "8"}
@user_bps = params["basis_points"].to_f
@user_years = params["number_of_years"].to_f
@principal = params["present_value"].to_f

r=((@user_bps/100)/100)/12
p=@user_years*12
z=r + 1


@monthly_payment = (@principal*((r* (z**p))/((z**p)-1))).round(2)

  @currency = number_to_currency(@monthly_payment)

render("calculations/flexible_payment.html.erb")
end

def square_form


render("calculations/square_form.html.erb")
end
def square
  @user_num = params["user_num"].to_f
  render("calculations/square.html.erb")
end
def square_root_form


render("calculations/square_root_form.html.erb")
end
def square_root
  @user_sq = params[:user_num].to_f
  render("calculations/square_root.html.erb")
end
def payment_form


render("calculations/payment_form.html.erb")
end
def payment
  @user_apr = params["basis_points"].to_f
  @user_years = params["number_of_years"].to_f
  @principal = params["present_value"].to_f
  r=(@user_apr/100)/12
  p=@user_years*12
  z= (r+1)


  @monthly_payment = (@principal*(r*(z**p))/((z**p)-1)).round(2)

  @currency = number_to_currency(@monthly_payment)


  render("calculations/payment.html.erb")

end
end
