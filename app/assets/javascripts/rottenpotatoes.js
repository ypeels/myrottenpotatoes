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
		 RP.setup_11_13(); // my patch to tack on Figure 11.13's functionality
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
    },
	
	// Section 11.6 Figure 11.13
	// http://pastebin.com/SRNyd3j2
	setup_11_13: function () {
        // add invisible 'div' to end of page:
        $('<div id="movieInfo"></div>').
            hide().
            appendTo($('body'));
        $('#movies a').click(RP.getMovieInfo);
	},
    getMovieInfo: function() {
        $.ajax({type: 'GET',
                url: $(this).attr('href'),
                timeout: 5000,
                success: RP.showMovieInfo,
                error: function() { alert('Error in RP.getMovieInfo!'); }
               });
        return(false); // return(true) triggers error callback above
    },
    showMovieInfo: function(data) {
        // center a floater 1/2 as wide and 1/4 as tall as screen
        var oneFourth = Math.ceil($(window).width() / 4);
        $('#movieInfo').
            html(data).
            css({'left': oneFourth,  'width': 2*oneFourth, 'top': 250}).
            show();
        // make the Close link in the hidden element work
        $('#closeLink').click(RP.hideMovieInfo);
        return(false);  // prevent default link action // actually, this return(true) has no effect!?
    },
    hideMovieInfo: function() {
        $('#movieInfo').hide(); 
        return(false); // return(true) causes page reload [no reload on return(false)]
    }// , // was this a syntax error??
	
}
$(RP.setup);       // when document ready, run setup code