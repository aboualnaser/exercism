<?php

// Calculate difference between two strings
function distance($strandA, $strandB) {
	$hammingDistance = 0;
	$length = min(strlen($strandA), strlen($strandB));

	for ($i = 0; $i < $length; $i++) {
		$nucleotideA = $strandA{$i};
		$nucleotideB = $strandB{$i};

		if ($nucleotideA != $nucleotideB) {
			$hammingDistance++;
		}
	}

	return $hammingDistance;
}