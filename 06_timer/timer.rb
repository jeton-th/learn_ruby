class Timer
  attr_accessor :seconds, :minutes, :hours

  def initialize
    @seconds = 0
    @minutes = 0
    @hours = 0
  end

  def time_string
    # Convert if more than 60
    if @seconds >= 59
      @minutes = @minutes + @seconds / 60
      @seconds = @seconds % 60
    end

    if @minutes >= 59
      @hours = @hours + @minutes / 60
      @minutes = @minutes % 60
    end
    
    # Add leading zeros to one digit
    @seconds = @seconds.to_s.rjust(2, "0")
    @minutes = @minutes.to_s.rjust(2, "0")
    @hours = @hours.to_s.rjust(2, "0")

    # Display time
    "#{@hours}:#{@minutes}:#{@seconds}"
  end
end