import 'dart:math';

class Solution {
  String longestCommonPrefix(List<String> strs) {
    strs.sort();
    
    final first = strs[0];
    final last = strs[strs.length - 1];
    final minLength = min(first.length, last.length);

    String prefixResult = "";

    for(int i = 0; i < minLength; i++) {
        if (first[i] != last[i]) break;
        else prefixResult += first[i];
    }

    return prefixResult;
  }
}

void main() {
    Solution solution = Solution();
    // String result = solution.longestCommonPrefix(["alower","blow","clight"]);
    String result = solution.longestCommonPrefix(["flower","flow","flight"]);
    print(result);
}