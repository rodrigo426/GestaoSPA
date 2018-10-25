class ClientsDatatable < ApplicationDatatable
  delegate :edit_client_path, to: :@view

  private

  def data
    clients.map do |client|
      [].tap do |column|
        column << client.name
        #column << client.birthdate
        column << client.email
        column << client.occupation

        links = []
        links << link_to('Detalhes', client, class: 'btn btn-info')
        links << link_to('Editar', edit_client_path(client), class: 'btn btn-info')
        links << link_to('Deletar', client, method: :delete, data: { confirm: 'Are you sure?' }, class: 'btn btn-danger')
        column << links.join(' | ')
      end
    end
  end

  def count
    Client.count
  end

  def total_entries
    clients.total_count
  end

  def clients
    @clients ||= fetch_clients
  end

  def fetch_clients
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    clients = Client.order("#{sort_column} #{sort_direction}")
    clients = clients.page(page).per(per_page)
    clients = clients.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name email occupation)
  end
end