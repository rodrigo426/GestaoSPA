module ApplicationHelper
  def link_to_add_row(name, form, association, **args)
    new_object = form.object.send(association).klass.new
    id = new_object.object_id
    fields = form.simple_fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize, form: builder)
    end
    link_to(name, '#', class: "add_fields " + args[:class], data: {id: id, fields: fields.gsub("\n", "")})
  end



    ESTADOS_BRASILEIROS = [
    ["São Paulo", "SP"],
    ["Acre", "AC"],
    ["Alagoas", "AL"],
    ["Amapá", "AP"],
    ["Amazonas", "AM"],
    ["Bahia", "BA"],
    ["Ceará", "CE"],
    ["Distrito Federal", "DF"],
    ["Espírito Santo", "ES"],
    ["Goiás", "GO"],
    ["Maranhão", "MA"],
    ["Mato Grosso", "MT"],
    ["Mato Grosso do Sul", "MS"],
    ["Minas Gerais", "MG"],
    ["Pará", "PA"],
    ["Paraíba", "PB"],
    ["Paraná", "PR"],
    ["Pernambuco", "PE"],
    ["Piauí", "PI"],
    ["Rio de Janeiro", "RJ"],
    ["Rio Grande do Norte", "RN"],
    ["Rio Grande do Sul", "RS"],
    ["Rondônia", "RO"],
    ["Roraima", "RR"],
    ["Santa Catarina", "SC"],
    ["Sergipe", "SE"],
    ["Tocantins", "TO"]
  ]

  def options_for_state(selected)
  	options_for_select(ESTADOS_BRASILEIROS, selected)
  end
end
