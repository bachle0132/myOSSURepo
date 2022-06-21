(* author: BL *)

(* Problem 1 *)
fun is_older (date1:int*int*int, date2:int*int*int) =
	not ((#1 date1)>=(#1 date2) andalso (#2 date1)>=(#2 date2) andalso (#3 date1)>(#3 date2))
	
	
(* Problem 2 *)
fun number_in_month (dates:(int*int*int) list, month:int) = 
	if null dates
	then 0
	else
		if (fn x => x = month) (#2 (hd dates))
		then number_in_month(tl dates, month) + 1
		else number_in_month(tl dates, month)
(*
fun number_in_month (dates:(int*int*int) list, month:int) = 
	List.length(List.filter (fn x => (#2 x) = month) dates);
*)


(* Problem 3 *)
fun number_in_months (dates:(int*int*int) list, months:int list) = 
	(* Note: function number_in_month is required to run this *)
	if null months
	then 0
	(* use the number_in_month function to recursively loop through all values in months *)
	else number_in_month(dates, hd months) + number_in_months(dates, tl months)
	
	
(* Problem 4 *)
fun dates_in_month (dates:(int*int*int) list, month:int) = 
	if null dates
	then []
	else
		if (fn x => x = month) (#2 (hd dates))
		then (hd dates)::dates_in_month(tl dates, month)
		else dates_in_month(tl dates, month)
(*
fun dates_in_month (dates:(int*int*int) list, month:int) = 
	List.filter (fn x => (#2 x) = month) dates;
*)


(* Problem 5 *)
fun dates_in_months (dates:(int*int*int) list, months:int list) = 
	(* Note: function dates_in_month is required to run this *)
	if null months
	then []
	(* use the @ operator to append two lists *)
	else dates_in_month(dates, hd months) @ dates_in_months(dates, tl months)


(* Problem 6 *)
fun get_nth (strArr:string list, n:int) = 
	if n = 1
	then hd strArr
	else get_nth(tl strArr, n-1)


(* Problem 7 *)
fun date_to_string (date:int*int*int) =
	(* Note: function get_nth is required to run this *)
	let
		val months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
	in
		get_nth(months,#2 date)^" "^Int.toString(#3 date)^", "^Int.toString(#1 date)
	end


(* Problem 8 *)
fun number_before_reaching_sum (target:int, arr:int list) =	
	if target > (hd arr)
	then 1 + number_before_reaching_sum(target - (hd arr), tl arr)
	else 0


(* Problem 9 *)
fun what_month (day:int) = 
	let
		val month_length = [31,28,31,30,31,30,31,31,30,31,30,31]
	in
		number_before_reaching_sum(day,month_length) + 1
	end


(* Problem 10 *)
fun month_range (day1:int, day2:int) = 
	if day1 > day2
	then []
	else what_month(day1)::month_range(day1+1, day2)


(* Problem 11 *)