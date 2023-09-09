(* Homework1 Simple Test *)
(* These are basic test cases. Passing these tests does not guarantee that your code will pass the actual homework grader *)
(* To run the test, add a new line to the top of this file: use "homeworkname.sml"; *)
(* All the tests should evaluate to true. For example, the REPL should say: val test1 = true : bool *)
fun is_older (x: int * int * int, y: int * int * int) =
    if #1 x < #1 y
    then true
    else if #2 x < #2 y
        then true
        else if #3 x < #3 y
            then true
            else false
        
val test1 = is_older ((1,2,3),(2,3,4)) = true



fun number_in_month(x: (int * int * int) list, y: int) =
    if null x then
        0
    else if #2 (hd x) = y then
        1 + number_in_month (tl x, y)
    else
        number_in_month (tl x, y)

val test2 = number_in_month ([(2012,2,28),(2013,12,1)],2) = 1



fun number_in_months(months: (int * int * int) list, dates: int list) =
    if null months orelse null dates then 0
    else number_in_month(months, hd dates) + number_in_months(tl months, tl dates)

val test3 = number_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = 3



fun dates_in_month(dates: (int * int * int) list, month: int) =
    if null dates then 0
    else if #2(hd dates) = y then
        [hd dates] :: dates_in_month(tl dates, month)
    else
        dates_in_month(tl dates, month)

val test4 = dates_in_month ([(2012,2,28),(2013,12,1)],2) = [(2012,2,28)]

(* val test5 = dates_in_months ([(2012,2,28),(2013,12,1),(2011,3,31),(2011,4,28)],[2,3,4]) = [(2012,2,28),(2011,3,31),(2011,4,28)]

val test6 = get_nth (["hi", "there", "how", "are", "you"], 2) = "there"

val test7 = date_to_string (2013, 6, 1) = "June 1, 2013"

val test8 = number_before_reaching_sum (10, [1,2,3,4,5]) = 3

val test9 = what_month 70 = 3

val test10 = month_range (31, 34) = [1,2,2,2]

val test11 = oldest([(2012,2,28),(2011,3,31),(2011,4,28)]) = SOME (2011,3,31) *)