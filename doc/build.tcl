package require doctools

if {[llength $argv]} {
    set format [lindex $argv 0]
} else {
    set format html
}

set on [doctools::new on -format $format]
set f [open nscgi.$format w]
puts $f [$on format {[include nscgi.man]}]
close $f

$on destroy
