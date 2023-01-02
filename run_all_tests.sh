ex_num=${1:-0}
if [ $ex_num -eq 0 ]
then
echo Running ex{1} tests:
for test_num in {1..100}
do
	./run_test.sh DataStrucetHW2${1}.c++ tests/ex${1}test${test_num} ex${1}test${test_num}
done
elif [ $ex_num -gt 0 ] && [ $ex_num -lt 6 ]
then
	echo Running DataStrucetHW2${1} tests:
	for test_num in {1..100}
	do
		./run_test.sh DataStrucetHW2${1}.c++ tests/ex${1}test${test_num} ex${1}test${test_num}
	done
else
	echo Invalid input, Please enter 1 or nothing to run all tests.
fi