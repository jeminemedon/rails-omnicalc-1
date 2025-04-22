class CalculationsController < ApplicationController
  def square_new
    render template: "calculation_templates/square_new"
  end

  def square_results
    @num = params[:user_number].to_f
    @square = @num ** 2
    render template: "calculation_templates/square_results"
  end

  def sqrt_new
    render template: "calculation_templates/sqrt_new"
  end

  def sqrt_results
    @num = params[:user_number].to_f
    @square_root = Math.sqrt(@num)
    render template: "calculation_templates/sqrt_results"
  end

  def random_new
    render template: "calculation_templates/random_new"
  end

  def random_results
    @min = params[:user_min].to_f
    @max = params[:user_max].to_f
    @result = rand(@min..@max)
    render template: "calculation_templates/random_results"
  end

  def payment_new
    render template: "calculation_templates/payment_new"
  end

  def payment_results
    @apr = params[:user_apr].to_f
    @years = params[:user_years].to_i
    @principal = params[:user_pv].to_f

    r = @apr / 100 / 12
    n = @years * 12
    numerator = r * @principal
    denominator = 1 - ((1 + r) ** -n)
    @payment = numerator / denominator

    render template: "calculation_templates/payment_results"
  end
end
