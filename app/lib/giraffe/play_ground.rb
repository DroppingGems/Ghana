<!--<h1>Mortgages coming soon!</h1>-->
<!--<p>-->
<%#= form_with scope: :mortgages, url: mortgages_path, local: true do |form| %>
<!--</p>-->
<!--    <p>-->
<%#= form.label :title %>
      <%#= form.text_field :title %>
                              <!--    </p>-->
<!--    <p>-->
      <%#= form.label :text %>
      <%#= form.text_area :text %>
<!--    </p>-->
<!--    <p>-->
<%#= form.submit %>
<!--    </p>-->
<!--    <p>-->
      <%# end %>


    <!--# Type of Property ; Address ; Asking Price-->

<!--# Sqft ; Bedrooms ; Bathroom-->

<!--# 20% down ; 15% down ; 10% down-->

<!--# (balance * (( i / 1200 ) * ( 1 + ( i / 1200 )) ^ Length ) / (( 1 + ( i / 1200 )) ^ Length - 1 ), 2 )-->


    q1 = "What type of property?\n(a)Single Family\n(b)Multi-Family"
q2 = "Please Enter Address"
q3 = "Number of Bedrooms?"
q4 = "Number of Bathroom?"
q5 = "Please enter square footage"
q6 = "Asking Price?"