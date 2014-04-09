

$(document).ready(function() {

	calender_tool_tip();


	populate_news(5);

}); //end ready


function calender_tool_tip()
{
	$('#calender').find('td').each( function() {
		var temp =  $(this).attr('class');
		if (temp)
		{
			switch (temp)
			{
				case "date-upcoming":
					$(this).html(calender_tool_tip_string("upcoming event", $(this).html()));
					break;
				case "date-canceled":
					$(this).html(calender_tool_tip_string("canceled event", $(this).html()));
					break;
				case "date-signed-up":
					$(this).html(calender_tool_tip_string("You've signed up for this event", $(this).html()));
					break;
			}
		}



	});
}


function calender_tool_tip_string(title, content) {
	return '<span  data-tooltip title="' + title + '" class="has-tip">'+ content + '</span>';
}

function populate_news(n)
{
	var news = $('#news');
	news.html('');
	for (var i =0; i<n; i++)
	{
		news.append('<p>news...<a class="button secondary tiny left">بیشتر بخوانید >></a></p><hr/>');
	}

}








