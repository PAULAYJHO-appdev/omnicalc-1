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
    @apr = (params.fetch("apple").to_f * 100).round(2)
    @num_of_years = params.fetch("orange").to_f
    render({ :template => "calculation_templates/payment_results.html.erb"})
  end

  def random_form
  render({ :template => "calculation_templates/random_form.html.erb"})
  end

  def random_results
  @min_value = params.fetch("user_min").to_f
  @max_value = params.fetch("user_max").to_f
  @random_num = rand(@min_value..@max_value)
  render({ :template => "calculation_templates/random_results.html.erb"})
  end
end
