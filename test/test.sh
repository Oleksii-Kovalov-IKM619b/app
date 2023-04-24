
# Test cases #

test_cases=(
  "2 + 2"
  "5 - 3"
  "4 * 6"
  "8 / 4"
  "10 / 0"
  "5 & 3"
)

# Expected results #

expected_results=(
  "4"
  "2"
  "24"
  "2"
  "Ошибка: деление на ноль"
  "Ошибка: недопустимый оператор"
)

# init #

pass_count=0
fail_count=0

# Test executions # 

for i in ${!test_cases[@]}
 do
  echo "Test case $i: ${test_cases[$i]}"
  result=$(echo "${test_cases[$i]}" | ../calc)
  expected="${expected_results[$i]}"
  if echo "$result" | grep -q "$expected"; then
    echo "PASS"
    ((pass_count++))
  else
    echo "FAIL: expected '$expected', but got '$result'"
    ((fail_count++))
  fi
done

# Test report output # 

echo "Total tests: ${#test_cases[@]}"
echo "Pass count: $pass_count"
echo "Fail count: $fail_count"

# Number of failed tests #

if [[ $fail_count -gt 0 ]]; then
  exit 1
else
  exit 0
fi
