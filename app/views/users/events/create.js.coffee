manager = new window.CalendarManager

<% if event.errors.any? %>
manager.onError( "<%= j(render 'users/events/form', event: event)%>" )
<% else %>
manager.onSuccessUpdate("<%= j(render 'users/events/form', event: Event.new(user: current_user))%>",
                        "<%= j render 'users/events/messages' %>",
                        "<%= j(events_path)%>")
<% end %>

new window.Pickadate
