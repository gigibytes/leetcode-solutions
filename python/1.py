# Two Sum
def two_sum(nums, target):
    if (len(nums) == 2):
        return [0,1]
    for i in range(len(nums)-1):
        for n in nums[i+1:]: # +1 to force it to look ahead rather than at self, which can lead to answers like [0,0]
            if (target == (nums[i] + n)):
                return [i, nums.index(n, i+1)] # forgot to add +1 here too
