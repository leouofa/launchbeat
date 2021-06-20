# frozen_string_literal: true

class GridController < ApplicationController
  def set_width
    permitted_widths = %w[8 4]
    session[:grid_width] = if params[:to].in?(permitted_widths)
                             params[:to].to_i
                           else
                             8
                           end
    redirect_to :root
  end
end
