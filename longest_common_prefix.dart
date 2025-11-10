class Solution {
  String longestCommonPrefix(List<String> strs) {
    Map<String, int> prefixMap = {};
    
    for(int i = 0; i < strs.length; i++) {
        final String prefix = strs[i][0];

        if (prefixMap.containsKey(prefix)){
            prefixMap[prefix] = prefixMap[prefix]! + 1;
        } else {
            prefixMap[prefix] = 1;
        }
    }

    final biggestPrefixMap = prefixMap.entries.reduce(
        (a, b) => a.value > b.value ? a : b,
    );

    return biggestPrefixMap.key;
  }
}

void main() {
    Solution solution = Solution();
    String result = solution.longestCommonPrefix(["flower","low","flight"]);
    print(result);
}