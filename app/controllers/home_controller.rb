class HomeController < ApplicationController

  # DELETE /home/remove_completed_tasks
  def remove_completed_tasks
    List.where(:completed => true).destroy_all
    redirect_to lists_url, notice: "All completed items were succesfully deleted."
  end

  # DELETE /home/remove_all_tasks
  def remove_all_tasks
    List.all.destroy_all
    redirect_to lists_url, notice: "All items were succesfully deleted."
  end

end
