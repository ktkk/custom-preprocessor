#include <stdio.h>

<?php
function dbgln($message) {
	echo "printf(\"[DEBUG] $message\\n\");";
}
?>

int main() {
	<?php dbgln("test") ?>
}
