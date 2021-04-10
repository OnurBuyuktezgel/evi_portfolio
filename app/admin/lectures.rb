ActiveAdmin.register Lecture do
  permit_params :category, :price, :status, :title, :description, :start_at, :duration, :user_id

  form do |f|
    f.inputs "Lecture" do
      f.input :title
      f.input :category
      f.input :price
      f.input :duration
      f.input :description
      f.input :photo, as: :file
    end
    f.actions
  end
end
