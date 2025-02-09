proc get_element {list index} {
  if {$index < 0 || $index >= [llength $list]} {
    return -code error "Index out of range"  ;# Return error code
  }
  return [lindex $list $index]
}

set mylist {a b c d e}
set result [get_element $mylist 10]

if {[catch {set result [get_element $mylist 10]} msg]} {
    puts "Error: $msg"
} else {
    puts "Element: $result"
}

#Alternative solution using try/finally
proc get_element_try {list index} {
  try {
    return [lindex $list $index]
  } on error {msg} {
    return -code error $msg
  }
}
set result [get_element_try $mylist 10]
if {[catch {set result [get_element_try $mylist 10]} msg]} {
    puts "Error: $msg"
} else {
    puts "Element: $result"
} 