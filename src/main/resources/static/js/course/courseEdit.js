$( function() {

    $("#sortable").sortable({
        cursor: "move",
        delay: 100,
        helper: "clone",
        items: "> li",
        opacity: 0.5,
        revert: 10,
        update: function( event, ui ) {
            let sorted = $( "#sortable" ).sortable( "serialize", { key: "sort" } );
            // $.post( "form/order.php",{ 'choices[]': sorted});
        }
    });

    $("#sortable").disableSelection();

    $( ".portlet-toggle" ).on( "click", function() {
        let icon = $( this );
        icon.toggleClass( "ui-icon-minusthick ui-icon-plusthick" );
        icon.closest( ".portlet" ).find( ".portlet-content" ).toggle();
    });
} );