// Section 11.5 Figure 11.11
// http://pastebin.com/85fZTe4J
RP = {
    setup: function() {
        // construct new DOM elements
        $('<label for="filter" class="explanation">' +
          'Restrict to movies suitable for children' +
          '</label>' +
          '<input type="checkbox" id="filter"/>'
         ).insertBefore('#movies').change(RP.filter_adult);
    },
    filter_adult: function () {
        // 'this' is element that received event (checkbox)
        if ($(this).is(':checked')) {
            $('#movies tbody tr').each(RP.hide_if_adult_row);
        } else {
            $('#movies tbody tr').show();
        };
    },
    hide_if_adult_row: function() {
        if (! /^G|PG$/i.test($(this).find('td:nth-child(2)').text())) {
            $(this).hide();
        }
    }
}
$(RP.setup);       // when document ready, run setup code