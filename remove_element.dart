class Solution {
  int removeElement(List<int> nums, int val) {
    nums.removeWhere((n) => n == val);
    return nums.length;
  }
}

void main() {
    Solution solution = Solution();
    // final result = solution.removeElement([3,2,2,3], 3);
    
    final result = solution.removeElement([0,1,2,2,3,0,4,2], 2);
    print(result);
}