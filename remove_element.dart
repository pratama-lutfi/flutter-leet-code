class Solution {
  int removeElement(List<int> nums, int val) {
    final valLength = nums.where((n) => n == val).length;
    print(valLength);
    return 1;
  }
}

void main() {
    Solution solution = Solution();
    final result = solution.removeElement([3,2,2,3], 2);
    print(result);
}