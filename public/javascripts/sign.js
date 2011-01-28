function refreshhandshapeSelections() {
	$('#form_field_4').hide();
	$('#handshape_1').show();
	$('#handshape_2').hide();
	$('#handshape_3').hide();
	$('#handshape_4').hide();
}

function refreshPositionSelections() {
	$('#form_field_6').hide();
	$('#position_hand_1').show();
	$('#position_hand_2').hide();
}

function refreshMovementSelections() {
	$('#form_field_7').hide();
	$('#movement_position_1').show();
	$('#movement_position_2').hide();
	$('#movement_position_3').hide();
	$('#movement_position_4').hide();
	$('#movement_position_5').hide();
	$('#movement_position_6').hide();
}

function refreshOrientationSelections() {
	$('#form_field_5').hide();
}

jQuery(document).ready(function() {
	$('#left_finger_1').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#left_handshape_1').show();
		$('#left_handshape_2').hide();
		$('#left_handshape_3').hide();
		$('#left_handshape_4').hide();
	})

	$('#right_finger_1').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#right_handshape_1').show();
		$('#right_handshape_2').hide();
		$('#right_handshape_3').hide();
		$('#right_handshape_4').hide();
	})

	$('#left_finger_2').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#left_handshape_1').hide();
		$('#left_handshape_2').show();
		$('#left_handshape_3').hide();
		$('#left_handshape_4').hide();
	})

	$('#right_finger_2').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#right_handshape_1').hide();
		$('#right_handshape_2').show();
		$('#right_handshape_3').hide();
		$('#right_handshape_4').hide();
	})

	$('#left_finger_3').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#left_handshape_1').hide();
		$('#left_handshape_2').hide();
		$('#left_handshape_3').show();
		$('#left_handshape_4').hide();
	})

	$('#right_finger_3').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#right_handshape_1').hide();
		$('#right_handshape_2').hide();
		$('#right_handshape_3').show();
		$('#right_handshape_4').hide();
	})

	$('#left_finger_4').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#left_handshape_1').hide();
		$('#left_handshape_2').hide();
		$('#left_handshape_3').hide();
		$('#left_handshape_4').show();
	})

	$('#right_finger_4').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#right_handshape_1').hide();
		$('#right_handshape_2').hide();
		$('#right_handshape_3').hide();
		$('#right_handshape_4').show();
	})

  $('#hand_1').click(function() {
		$('#form_field_5').slideUp();
		$('#form_field_5').slideDown();
		$('#form_field_6').slideUp();
		$('#form_field_6').slideDown();
		$('#position_hand_1').show();
		$('#position_hand_2').hide();
		$('#left_handshape').show();
		$('#right_handshape').hide();
		$('#left_fingers').show();
		$('#right_fingers').hide();
		$('#left_orientation').show();
		$('#right_orientation').hide();
  })

  $('#hand_2').click(function() {
		$('#form_field_5').slideUp();
		$('#form_field_5').slideDown();
		$('#form_field_6').slideUp();
		$('#form_field_6').slideDown();
		$('#position_hand_1').hide();
		$('#position_hand_2').show();
		$('#left_handshape').show();
		$('#right_handshape').show();
		$('#left_fingers').show();
		$('#right_fingers').show();
		$('#left_orientation').show();
		$('#right_orientation').show();
  })

  $('#sign_position_1').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').show();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#sign_position_2').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').show();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#sign_position_3').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').show();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#sign_position_4').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').show();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#sign_position_5').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').show();
		$('#movement_position_6').hide();
  })

  $('#sign_position_6').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').show();
  })

	refreshhandshapeSelections();
	refreshPositionSelections();
	refreshMovementSelections();
	refreshOrientationSelections();
});
