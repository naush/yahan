function showMovement(order, id) {
  $('[id^=sign_' + order + '_movement_position_]').hide()
	$('#sign_' + order + '_movement_position_' + id).show();
}

function showHandshape(order, direction, id) {
  $('[id^=sign_' + order + '_' + direction + '_handshape_section]').hide()
	$('#sign_' + order + '_' + direction + '_handshape_section_' + id).show();
}

function refreshHandSelections(order) {
	$('#sign_' + order + '_left_hand').show();
	$('#sign_' + order + '_right_hand').hide();
}

function refreshHandshapeSelections(order) {
	showHandshape(order, 'left', '1')
	showHandshape(order, 'right', '1')
}

function refreshPositionSelections(order) {
	$('#sign_' + order + '_hand_1_position').show();
	$('#sign_' + order + '_hand_2_position').hide();
}

function refreshMovementSelections(order) {
	showMovement(order, '1');
}

function refreshOrientationSelections() {
}

function refreshSignForm() {
	$('#sign_form_1').hide();
	$('#sign_1_saved').attr('value', 'false');
	$('#sign_form_2').hide();
	$('#sign_2_saved').attr('value', 'false');
	$('#sign_form_3').hide();
	$('#sign_3_saved').attr('value', 'false');
}

function loadHandlers(order) {
	$('[id^=sign_' + order + '_left_finger_]').click(function() {
		var tokens = this.id.split("_");
		showHandshape(tokens[1], tokens[2], tokens[4]);
	})

	$('[id^=sign_' + order + '_right_finger_]').click(function() {
		var tokens = this.id.split("_");
		showHandshape(tokens[1], tokens[2], tokens[4]);
	})

  $('#sign_' + order + '_hand_1').click(function() {
		$('#sign_' + order + '_hand_1_position').show();
		$('#sign_' + order + '_hand_2_position').hide();
		$('#sign_' + order + '_left_hand').show();
		$('#sign_' + order + '_right_hand').hide();
  })

  $('#sign_' + order + '_hand_2').click(function() {
		$('#sign_' + order + '_hand_1_position').hide();
		$('#sign_' + order + '_hand_2_position').show();
		$('#sign_' + order + '_left_hand').show();
		$('#sign_' + order + '_right_hand').show();
  })

  $('[id*=sign_' + order + '_position_]').click(function() {
		var tokens = this.id.split("_");
		showMovement(tokens[1], tokens[3]);
  })

  refreshHandSelections(order);
	refreshHandshapeSelections(order);
	refreshPositionSelections(order);
	refreshMovementSelections(order);
}

function showAddMovementButtonsUpto(id) {
	for (var i = 1; i < 4; i += 1) {
		if (i < id) {
      $('#sign_form_' + i).show();
      $('#sign_' + i + '_saved').attr('value', 'true');
		} else {
      $('#sign_form_' + i).hide();
      $('#sign_' + i + '_saved').attr('value', 'false');
		}
	}
  $('[id^=add_movement_]').hide();
  $('#add_movement_' + id).show();
}

jQuery(document).ready(function() {
	showAddMovementButtonsUpto(1);

  $('[id^=add_movement_]').click(function() {
		var tokens = this.id.split("_");
    showAddMovementButtonsUpto(parseInt(tokens[2]) + 1);
  })

  loadHandlers(1);
  loadHandlers(2);
  loadHandlers(3);
	refreshOrientationSelections();
	refreshSignForm();
});
