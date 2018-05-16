(function($) {
	$.fn.extend({
		'serachDiv' : function(c) {
			$(this).children("button").click(function() {
				var input = $(this).parent().children("input");
				var btn = $(this);
				if (input.is(":hidden") && c.ani != undefined && c.ani) {
					var w = input.css("width");
					btn.css({
						"border" : "1px solid #ccc",
						"border-left" : "none",
						"border-bottom-left-radius" : "0px",
						"border-top-left-radius" : "0px"
					});
					input.css("width", 0);
					input.show();
					input.animate({
						width : w
					}, 500, function() {});
				} else if (input.val() == '' && c.ani != undefined && c.ani) {
					var w = input.css("width");
					input.animate({
						width : 0
					}, 500, function() {
						input.hide();
						input.css("width", w);
						btn.css({
							"border" : "1px solid",
							"border-radius" : "4px"
						});
					});
				} else if (input.val() != '' || c.ani == undefined || !c.ani) {
					if (c.form != undefined && c.action != undefined) {
						$(c.form).attr("action", c.action);
					}
					if (c.form != undefined) {
						$(c.form).find("input").each(function() {
							$(c.form).append("<input type='hidden' name='" + $(this).attr("data-key") + "' value='" + encodeURI(encodeURI($(this).val())) + "'/>");
						});
						$(c.form).submit();
					}
				}
			});
		}
	});
})(jQuery);