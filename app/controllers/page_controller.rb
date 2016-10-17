class PageController < ApplicationController

  def home
  	@eval_all = Eval.all
  end

  def evaluation
  	binding.pry
  end

end
