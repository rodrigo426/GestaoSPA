class ItemsDatatable < ApplicationDatatable
  delegate :edit_item_path, to: :@view

  private

  def data
    items.map do |item|
      [].tap do |column|
        column << item.client.name
        column << item.user.name
        column << item.therapy.name
        column << item.description


        links = []
        links << link_to('Detalhes', item, class: 'btn btn-info')
        links << link_to('Editar', edit_item_path(item), class: 'btn btn-info')
        column << links.join(' | ')
      end
    end
  end

  def count
    Item.count
  end

  def total_entries
    items.total_count
  end

  def items
    @items ||= fetch_items
  end

  def fetch_items
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    items = Item.order("#{sort_column} #{sort_direction}")
    items = items.page(page).per(per_page)
    items = items.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(user description)
  end
end