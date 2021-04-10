ActiveAdmin.register Booking do

  permit_params :status, :user_id, :lecture_id, :desired_time, :message

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :status, :user_id, :lecture_id, :desired_time, :message
  #
  # or
  #
  # permit_params do
  #   permitted = [:status, :user_id, :lecture_id, :desired_time, :message]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
