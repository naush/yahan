function refreshShapeSelections() {
	$('#form_field_4').hide();
	$('#hand_shape_1').show();
	$('#hand_shape_2').hide();
	$('#hand_shape_3').hide();
	$('#hand_shape_4').hide();
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
	$('#finger_1').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#hand_shape_1').show();
		$('#hand_shape_2').hide();
		$('#hand_shape_3').hide();
		$('#hand_shape_4').hide();
	})

	$('#finger_2').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#hand_shape_1').hide();
		$('#hand_shape_2').show();
		$('#hand_shape_3').hide();
		$('#hand_shape_4').hide();
	})

	$('#finger_3').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#hand_shape_1').hide();
		$('#hand_shape_2').hide();
		$('#hand_shape_3').show();
		$('#hand_shape_4').hide();
	})

	$('#finger_4').click(function() {
  	$('#form_field_4').slideUp();
  	$('#form_field_4').slideDown();
		$('#hand_shape_1').hide();
		$('#hand_shape_2').hide();
		$('#hand_shape_3').hide();
		$('#hand_shape_4').show();
	})

  $('#hand_1').click(function() {
		$('#form_field_5').slideUp();
		$('#form_field_5').slideDown();
		$('#form_field_6').slideUp();
		$('#form_field_6').slideDown();
		$('#position_hand_1').show();
		$('#position_hand_2').hide();
  })

  $('#hand_2').click(function() {
		$('#form_field_5').slideUp();
		$('#form_field_5').slideDown();
		$('#form_field_6').slideUp();
		$('#form_field_6').slideDown();
		$('#position_hand_1').hide();
		$('#position_hand_2').show();
  })

  $('#word_position_1').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').show();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#word_position_2').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').show();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#word_position_3').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').show();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#word_position_4').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').show();
		$('#movement_position_5').hide();
		$('#movement_position_6').hide();
  })

  $('#word_position_5').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').show();
		$('#movement_position_6').hide();
  })

  $('#word_position_6').click(function() {
		$('#form_field_7').slideUp();
		$('#form_field_7').slideDown();
		$('#movement_position_1').hide();
		$('#movement_position_2').hide();
		$('#movement_position_3').hide();
		$('#movement_position_4').hide();
		$('#movement_position_5').hide();
		$('#movement_position_6').show();
  })

	refreshShapeSelections();
	refreshPositionSelections();
	refreshMovementSelections();
	refreshOrientationSelections();
});
