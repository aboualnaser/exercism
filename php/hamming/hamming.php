<?php

// Calculate difference between two strings
function distance($strandA, $strandB) {
	$hammingDistance = 0;
	$length = min(strlen($strandA), strlen($strandB));

	for ($i = 0; $i < $length; $i++) {
		if ($strandA{$i} != $strandB{$i}) {
			$hammingDistance++;
		}
	}

	return $hammingDistance;
}