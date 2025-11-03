class Solution {
  int romanToInt(String s) {
    final Map<String, int> romanMap = {
      'I': 1,
      'V': 5,
      'X': 10,
      'L': 50,
      'C': 100,
      'D': 500,
      'M': 1000,
    };

    int result = 0;
    List<String> sList = s.split('');

    for (int i = 0; i < sList.length; i++) {
      final romanVal = romanMap[sList[i]]!;
      final romanValNext = (i + 1 < sList.length) ? romanMap[sList[i + 1]]! : 0;

      if (romanVal < romanValNext) {
        result += (romanValNext - romanVal);
        i++;
      } else {
        result += romanVal;
      }
    }

    return result;
  }
}

void main() {
  Solution solution = Solution();
  print(solution.romanToInt("MCMXCIV"));
}
