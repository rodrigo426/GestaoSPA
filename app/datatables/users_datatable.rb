class UsersDatatable < ApplicationDatatable
  delegate :edit_user_path, to: :@view

  private

  def data
    users.map do |user|
      [].tap do |column|
        column << user.name
        #column << client.birthdate
        column << user.email
        column << user.kind

        links = []
        links << link_to('Detalhes', user, class: 'btn btn-info')
        links << link_to('Editar', edit_user_path(user), class: 'btn btn-info')
        column << links.join(' | ')
      end
    end
  end

  def count
    User.count
  end

  def total_entries
    users.total_count
  end

  def users
    @users ||= fetch_users
  end

  def fetch_users
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    users = User.order("#{sort_column} #{sort_direction}")
    users = users.page(page).per(per_page)
    users = users.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name email)
  end
end