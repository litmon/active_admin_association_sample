ActiveAdmin.register Author do
  permit_params :name,
    { posts_attributes: [:title, :body, :_destroy, :id]}

  form(html: { multipart: true }) do |f|
    f.inputs 'Author details' do
      f.input :name
    end

    f.has_many :posts, heading: 'Posts', allow_destroy: true, new_record: true do |post|
      post.input :title
      post.input :body
    end

    f.actions
  end

end
