class DaysController<ApplicationController

  def show
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
    @next_day = Day.where("id =?", @day.id)
    if Day.where("page =?", @day.page.to_i+1)!=[]
      @next_day = Day.where("page =?", @day.page.to_i+1)
    end
    @prev_day = Day.where("id =?", @day.id)
    if Day.where("page =?", @day.page.to_i-1)!=[]
      @prev_day = Day.where("page =?", @day.page.to_i-1)
    end
  end

  def edit
    @weeks = Week.all
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
  end

  def update
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
    if @day.update(day_params)
      redirect_to  week_day_path(@week,@day)
    else
      render :edit
    end
  end

  def new
    @weeks = Week.all
    @day = Day.new
  end

  def create
    @week = Week.find(day_params[:week_id])
    @day = @week.days.new(day_params)
    if @day.save
      redirect_to  week_path(@week)
    else
      render :new
    end
  end

  def destroy
    @week = Week.find(params[:week_id])
    @day = Day.find(params[:id])
    @day.destroy
    redirect_to  week_path(@week)
  end

private
  def day_params
    params.require(:day).permit(:name, :day, :body, :page, :week_id)
  end
end
