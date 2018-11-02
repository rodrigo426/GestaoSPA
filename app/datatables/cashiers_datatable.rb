class CashiersDatatable < ApplicationDatatable
  delegate :edit_cashier_path, to: :@view

  private

  def data
    cashiers.map do |cashier|
      [].tap do |column|
        column << cashier.client.name if cashier.client
        column << cashier.user.name if cashier.client
        column << cashier.therapy.name if cashier.client
        column << cashier.price


        links = []
        links << link_to('Detalhes', cashier, class: 'btn btn-info')
        column << links.join(' | ')
      end
    end
  end

  def count
    Cashier.count
  end

  def total_entries
    cashiers.total_count
  end

  def cashiers
    @cashiers ||= fetch_cashiers
  end

  def fetch_cashiers
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    cashiers = Cashier.order("#{sort_column} #{sort_direction}")
    cashiers = cashiers.page(page).per(per_page)
    cashiers = cashiers.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(user)
  end
end