module ApplicationHelper
  def title(value = nil)
    @title = value if value
    @title ? "#{@title}" : "Controller Demo"
  end
end
