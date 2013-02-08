package require doctools

set on [doctools::new on -format text]
set f [open README w]
puts $f [$on format {[include nscgi.man]}]
close $f

$on destroy
