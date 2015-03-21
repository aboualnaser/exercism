<?php
/**
 * - If the number contains 3 as a prime factor, output 'Pling'.
 * - If the number contains 5 as a prime factor, output 'Plang'.
 * - If the number contains 7 as a prime factor, output 'Plong'.
 * - If the number does not contain 3, 5, or 7 as a prime factor, just pass the number's digits straight through.
 *
 * @param int $number
 * @return string
 */
function raindrops($number) {

	$output = '';

	if ($number % 3 === 0) {
		$output .= 'Pling';
	}

	if ($number % 5 === 0) {
		$output .= 'Plang';
	}

	if ($number % 7 === 0) {
		$output .= 'Plong';
	}

	if (empty($output)) {
		$output = "$number";
	}

	return $output;
}