# frozen_string_literal: true

class GridController < ApplicationController
  def set_width
    permitted_widths = %w[8 2 3 4 5]
    session[:grid_width] = if params[:to].in?(permitted_widths)
                             params[:to].to_i
                           else
                             8
                           end
    redirect_to request.referer
  end
end
