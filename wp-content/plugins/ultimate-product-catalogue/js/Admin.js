/* Used to show and hide the admin tabs for UPCP */
jQuery(document).ready(function() {
	jQuery(".upcp-option-tab").on('click', function() {
		var Label_ID = jQuery(this).attr('id');
		var Table_ID = Label_ID.substring(6);

		if (jQuery('#'+Table_ID).hasClass('upcp-hidden')) {
			jQuery('#'+Table_ID).removeClass('upcp-hidden');
			jQuery('#'+Label_ID).addClass('upcp-selected-options');
		}
		else {
			jQuery('#'+Table_ID).addClass('upcp-hidden');
			jQuery('#'+Label_ID).removeClass('upcp-selected-options');
		}
	});
});

function ShowTab(TabName) {
	jQuery(".OptionTab").each(function() {
		jQuery(this).addClass("HiddenTab");
		jQuery(this).removeClass("ActiveTab");
	});
	jQuery("#"+TabName).removeClass("HiddenTab");
	jQuery("#"+TabName).addClass("ActiveTab");
	
	jQuery(".nav-tab").each(function() {
		jQuery(this).removeClass("nav-tab-active");
	});
	jQuery("#"+TabName+"_Menu").addClass("nav-tab-active");
}

function ShowOptionTab(TabName) {
	jQuery(".upcp-option-set").each(function() {
		jQuery(this).addClass("upcp-hidden");
	});
	jQuery("#"+TabName).removeClass("upcp-hidden");
	
	// var activeContentHeight = jQuery("#"+TabName).innerHeight();
	// jQuery(".upcp-options-page-tabbed-content").animate({
	// 	'height':activeContentHeight
	// 	}, 500);
	// jQuery(".upcp-options-page-tabbed-content").height(activeContentHeight);

	jQuery(".options-subnav-tab").each(function() {
		jQuery(this).removeClass("options-subnav-tab-active");
	});
	jQuery("#"+TabName+"_Menu").addClass("options-subnav-tab-active");
	jQuery('input[name="Display_Tab"]').val(TabName);
}

function ShowStylingTab(TabName) {
	jQuery(".upcp-styling-set").each(function() {
		jQuery(this).addClass("upcp-hidden");
	});
	jQuery("#"+TabName).removeClass("upcp-hidden");
	
	// var activeContentHeight = jQuery("#"+TabName).innerHeight();
	// jQuery(".upcp-styling-page-tabbed-content").animate({
	// 	'height':activeContentHeight
	// 	}, 500);
	

	jQuery(".styling-subnav-tab").each(function() {
		jQuery(this).removeClass("styling-subnav-tab-active");
	});
	jQuery("#"+TabName+"_Menu").addClass("styling-subnav-tab-active");
	jQuery('input[name="Styles_Display_Tab"]').val(TabName);
}

function Reload_PP_Page(Value) {
	var Layout = jQuery('#PP-type-select').val();
	window.location.href = "admin.php?page=UPCP-options&DisplayPage=ProductPage&CPP_Mobile=" + Layout;
}

function ShowToolTip(ToolTipID) {
	jQuery('#'+ToolTipID).css('display', 'block');
}

function HideToolTip(ToolTipID) {
	jQuery('#'+ToolTipID).css('display', 'none');
}

jQuery(document).ready(function() {
	SetTabDeleteHandlers();

	jQuery('.upcp-add-tab').on('click', function(event) {
		var ID = jQuery(this).data('nextid');

		var HTML = "<tr id='upcp-tab-" + ID + "'>";
		HTML += "<td><a class='upcp-delete-tab' data-tabnumber='" + ID + "'>Delete</a></td>";
		HTML += "<td><input type='text' name='Tab_" + ID + "_Name'></td>";
		HTML += "<td><textarea name='Tab_" + ID + "_Content'></textarea></td>";
		HTML += "</tr>";

		//jQuery('table > tr#ewd-uasp-add-reminder').before(HTML);
		jQuery('#upcp-tabs-table tr:last').before(HTML);

		ID++;
		jQuery(this).data('nextid', ID); //updates but doesn't show in DOM

		SetTabDeleteHandlers();

		event.preventDefault();
	});
});

function SetTabDeleteHandlers() {
	jQuery('.upcp-delete-tab').on('click', function(event) {
		var ID = jQuery(this).data('tabnumber');
		var tr = jQuery('#upcp-tab-'+ID);

		tr.fadeOut(400, function(){
            tr.remove();
        });

		event.preventDefault();
	});
}

jQuery(document).ready(function() {
	jQuery('.ewd-dashboard-h3').on('click', function() {
		if (jQuery(this).parent().css('height') == '45px') {jQuery(this).parent().css('height', 'auto');}
		else {jQuery(this).parent().css('height', 45);}
	});
});

jQuery(document).ready(function() {
	jQuery('.upcp-catalogue-select-all').on('click', function() {
		if (jQuery(this).hasClass('upcp-select-products')) {jQuery('input[name="products[]"]').prop('checked', true)}
		if (jQuery(this).hasClass('upcp-select-categories')) {jQuery('input[name="categories[]"]').prop('checked', true)}
	});
});

jQuery(document).ready(function() {
	jQuery('.upcp-catalogue-sort-az').on('click', function() {UPCPSortTable("AZ", jQuery(this).data('table'), jQuery(this).data('action'))});
	jQuery('.upcp-catalogue-sort-za').on('click', function() {UPCPSortTable("ZA", jQuery(this).data('table'), jQuery(this).data('action'))});
});

function UPCPSortTable(Direction, Table, Action) {
	var rows = jQuery('.wp-list-table.' + Table + ' tbody tr').get();

 	rows.sort(function(a, b) {
	 	if (Table == 'catalogue-list') {
	 		var A = jQuery(a).children('td').eq(1).text().toUpperCase();
	 		var B = jQuery(b).children('td').eq(1).text().toUpperCase();
	 	}
	 	else {
	 		var A = jQuery(a).children('td').eq(0).children('a').eq(0).text().toUpperCase();
	 		var B = jQuery(b).children('td').eq(0).children('a').eq(0).text().toUpperCase();
	 	}
		
	 	if (A < B) {
			if (Direction == "AZ") {return -1;}
			else {return 1;}
		}
	
		if(A > B) {
			if (Direction == "AZ") {return 1;}
			else {return -1;}
		}
	
		return 0;
	});

	jQuery.each(rows, function(index, row) {
		jQuery('.wp-list-table.' + Table).children('tbody').append(row);
	});

	var order = jQuery('.wp-list-table.' + Table).sortable('serialize') + '&action=' + Action;
	jQuery.post(ajaxurl, order, function(response) {});
}

jQuery(document).ready(function() {
	jQuery('input#Item_Name').on('focusout', function() {
		if (jQuery('input#Item_Slug').val() == "") {
			var Name = jQuery(this).val();
			var Name2 = Name.replace(/ /g, '-');
			var Name3 = Name2.toLowerCase();
			var Slug = Name3.replace(/[\/\\\[\]|&;$%@"<>()+,^#*{}'!=:?]/g, "");
			jQuery('input#Item_Slug').val(Slug);
		}
	})
});

jQuery(document).ready(function() {
	jQuery('.upcp-upload-style-button').on('click', function() {console.log("called");
		jQuery('#upcp-styling-form').attr('action', 'admin.php?page=UPCP-options&DisplayPage=Styling&Action=UPCP_AddNewCatalogueStyle');
		console.log(jQuery('#upcp-styling-form'));
		document.getElementById("upcp-styling-form").submit()
	});
});

jQuery(document).ready(function() {
	jQuery('.ewd-upcp-spectrum').spectrum({
		showInput: true,
		showInitial: true,
		preferredFormat: "hex",
		allowEmpty: true
	});

	jQuery('.ewd-upcp-spectrum').css('display', 'inline');

	jQuery('.ewd-upcp-spectrum').on('change', function() {
		if (jQuery(this).val() != "") {
			jQuery(this).css('background', jQuery(this).val());
			var rgb = EWD_UPCP_hexToRgb(jQuery(this).val());
			var Brightness = (rgb.r * 299 + rgb.g * 587 + rgb.b * 114) / 1000;
			if (Brightness < 100) {jQuery(this).css('color', '#ffffff');}
			else {jQuery(this).css('color', '#000000');}
		}
		else {
			jQuery(this).css('background', 'none');
		}
	});

	jQuery('.ewd-upcp-spectrum').each(function() {
		if (jQuery(this).val() != "") {
			jQuery(this).css('background', jQuery(this).val());
			var rgb = EWD_UPCP_hexToRgb(jQuery(this).val());
			var Brightness = (rgb.r * 299 + rgb.g * 587 + rgb.b * 114) / 1000;
			if (Brightness < 100) {jQuery(this).css('color', '#ffffff');}
			else {jQuery(this).css('color', '#000000');}
		}
	});
});

function EWD_UPCP_hexToRgb(hex) {
    var result = /^#?([a-f\d]{2})([a-f\d]{2})([a-f\d]{2})$/i.exec(hex);
    return result ? {
        r: parseInt(result[1], 16),
        g: parseInt(result[2], 16),
        b: parseInt(result[3], 16)
    } : null;
}