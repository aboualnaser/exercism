<?php

// Add 1 billion seconds to date
function from($date) {
	return $date->modify('+1000000000 second');
}