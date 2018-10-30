class TherapiesDatatable < ApplicationDatatable
  delegate :edit_therapy_path, to: :@view

  private

  def data
    therapies.map do |therapy|
      [].tap do |column|
        column << therapy.name

        links = []
        links << link_to('Detalhes', therapy, class: 'btn btn-info')
        links << link_to('Editar', edit_therapy_path(therapy), class: 'btn btn-info')
        column << links.join(' | ')
      end
    end
  end

  def count
    Therapy.count
  end

  def total_entries
    therapies.total_count
  end

  def therapies
    @therapies ||= fetch_therapies
  end

  def fetch_therapies
    search_string = []
    columns.each do |term|
      search_string << "#{term} like :search"
    end

    therapies = Therapy.order("#{sort_column} #{sort_direction}")
    therapies = therapies.page(page).per(per_page)
    therapies = therapies.where(search_string.join(' or '), search: "%#{params[:search][:value]}%")
  end

  def columns
    %w(name)
  end
end