<?php

function toRna($nucleotide) {
	$map = [
		'G'=>'C',
		'C'=>'G',
		'T'=>'A',
		'A'=>'U'];

	$length = strlen($nucleotide);
	$result = '';

	for ($i = 0; $i < $length; $i++) {
		$result .= $map[$nucleotide[$i]];
	}

	return $result;
}