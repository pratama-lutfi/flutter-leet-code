class Solution {
  int removeDuplicates(List<int> nums) {
    final unique = nums.toSet().toList();

    for (int i = 0; i < unique.length; i++) {
        nums[i] = unique[i];
    }
    
    return unique.length;
  }
}

void main() {
    Solution solution = Solution();
    print('solution: ${solution.removeDuplicates([0,0,1,1,1,2,2,3,3,4])}');
}