/* even-odd.ml */

fun intToString i =
   if i < 0 then "-" ^ (intToString (- i))
   else if i == 0 then "0"
   else if i == 1 then "1"
   else if i == 2 then "2"
   else if i == 3 then "3"
   else if i == 4 then "4"
   else if i == 5 then "5"
   else if i == 6 then "6"
   else if i == 7 then "7"
   else if i == 8 then "8"
   else if i == 9 then "9"
   else (intToString (i / 10)) ^ (intToString (i % 10));

fun boolToString b = if b then "True" else "False";

let zero = 0;

let one = 1;

fun even' odd x =
      if (x < zero)
	then even' odd (- x)
      else if x == 0
	then True
	else odd (x - one);

fun odd x =
      if (x < zero)
	then odd (- x)
      else if x == 0
	then False
      else even' odd (x - one);

let even = even' odd;

let n = 101;
let even_n = even n;

print "even ";
print (intToString n);
print " = ";
print (boolToString even_n);
print "\n";
()
