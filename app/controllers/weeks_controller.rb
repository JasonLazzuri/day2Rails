class WeeksController<ApplicationController

  def index
    @weeks = Week.all
  end

  def show
    @week = Week.find(params[:id])
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    if @week.update(week_params)
      redirect_to  weeks_path
    else
      render :edit
    end
  end

  def new
    @week = Week.new
  end
  
  def create
    @week = Week.new(week_params)
    if @week.save
      redirect_to weeks_path
    else
      render :new
    end
  end

  def destroy
    @week = Week.find(params[:id])
    @week.days.each do |day|
      day.destroy
    end
    @week.destroy
    redirect_to weeks_path
  end

private
  def week_params
    params.require(:week).permit(:name)
  end
end
