proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    error "Index out of range" 
  }
  return [lindex $list $index]
}

set mylist {a b c d e}
puts [get_element $mylist 10]