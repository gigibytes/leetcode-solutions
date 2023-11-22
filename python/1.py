# Two Sum
# Brute force version
def two_sum(nums, target):
    if (len(nums) == 2):
        return [0,1]

    for i in range(len(nums)-1):
        for n in nums[i+1:]: # +1 to force it to look ahead rather than at self, which can lead to answers like [0,0]
            if (target == (nums[i] + n)):
                return [i, nums.index(n, i+1)] # forgot to add +1 here too

# Map version
def two_sum_map(nums, target): # how to specify types?
    if (len(nums) == 2):
        return [0,1]

    map = {}
    for i in range(len(nums)): # populate map
        map[nums[i]] = i # value @ index : index

    for j in range(len(nums)): # compare
        augmend = target - nums[j]
        if (augmend in map) and (map[augmend] != j): # check that the indices of nums[j] and augmend are not the same
            return [j, map[augmend]]
