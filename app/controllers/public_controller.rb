class PublicController < ApplicationController

  layout 'public'

  before_action :setup_nagivation
  
  def index
    # intro text
  end

  def show
    @page = Page.where(:permalink => params[:permalink], :visible => true).first
    if @page.nil?
      redirect_to(:action => 'index')
    else
      # display the page content using show.html.erb
    end
  end

  private

    def setup_nagivation
      @subjects = Subject.visible.sorted
    end

end
