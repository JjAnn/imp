module ApplicationHelper
def link_to_remove_fields(name, f)
f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
end
def link_to_add_fields(name, f, association, locals={})
new_object = f.object.class.reflect_on_association(association).klass.new
fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
render(association.to_s.singularize + "_fields", :f => builder)
end
link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")", class: locals[:class])
end
<<<<<<< HEAD

def user_report
Relato.where(user_id: @user1.find_by_id(@users)).count
end


=======
>>>>>>> ad10758ddfdbf1227205791189757be3232ce289
end

