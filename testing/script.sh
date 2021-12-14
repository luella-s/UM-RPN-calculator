umasm urt0.ums calc40.ums printd.ums callmain.ums > calc40.um
# um calc40.um

# diff stuff
echo "Testing for 100 instructions"
random-calc40 > random100.in
um calc40.um < random100.in > random100.out
calc40 < random100.in > randomtest100.out
diff random100.out randomtest100.out

# '<' denotes lines random100.out 
# '>' denotes lines randomtest100.out 

# echo "Testing for 1000 instructions"
# random-calc40 1000 > 1000.in
# um calc40.um < 1000.in > 1000.out
# calc40 < 1000.in > test1000.out
# diff 1000.out test1000.out

# time /comp/40/bin/calc40-test calc40.um 10
# echo "Testing for 100 instructions"
# time /comp/40/bin/calc40-test calc40.um 100
# echo "Testing for 1000 instructions"
# time /comp/40/bin/calc40-test calc40.um 1000
# echo "Testing for 10000 instructions"
# time /comp/40/bin/calc40-test calc40.um 10000

