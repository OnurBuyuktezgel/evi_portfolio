ActiveAdmin.register Contact do

  permit_params :first_name, :last_name, :email, :phone, :message
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  # permit_params :first_name, :last_name, :email, :phone, :message
  #
  # or
  #
  # permit_params do
  #   permitted = [:first_name, :last_name, :email, :phone, :message]
  #   permitted << :other if params[:action] == 'create' && current_user.admin?
  #   permitted
  # end

end
