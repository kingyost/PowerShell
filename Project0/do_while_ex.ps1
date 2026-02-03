$a = 1

DO {
  "starting loop $a"
  $a
  $a++
  "now `$a is $a"
} While ($a -le 5)
