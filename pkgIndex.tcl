if {![package vsatisfies [package provide Tcl] 8.6]} {return}
package ifneeded nscgi 1.0.0 [list source [file join $dir nscgi.tcl]]
