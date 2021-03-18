# refactoring views in a Rails-y way:

<h4>There are currently no parties, go create one <a href="/parties/new">here</a></h4>
<h4>There are currently no parties, go create one <%= link_to("here", "/parties/new") %></h4>
<h4>There are currently no parties, go create one <%= link_to("here", new_party_path) %></h4>

