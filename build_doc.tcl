package require doctools

set on [doctools::new on -format html]
set f [open nscgi.html w]
puts $f [$on format {[include nscgi.man]}]
close $f

$on destroy
