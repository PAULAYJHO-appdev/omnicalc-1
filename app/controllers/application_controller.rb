class ApplicationController < ActionController::Base
  def blank_square_form
    render({ :template => "calculation_templates/square_form.html.erb" })
  end

  def calculate_square
    #params = {"elephant"=>"42"}
    @num = params.fetch("elephant").to_f
    @square_of_num = @num ** 2
    render({ :template => "calculation_templates/square_results.html.erb" })
  end

  def square_root_form
    render({ :template => "calculation_templates/square_root_form.html.erb" })
  end

  def square_root_results
    #params = {"user_number"}
    @num = params.fetch("user_number").to_f
    @square_root_of_num = @num ** 0.5
    render({ :template => "calculation_templates/square_root_results.html.erb" })
  end

  def payment_form
    render({ :template => "calculation_templates/payment_form.html.erb" })
  end

  def payment_results
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end
end
