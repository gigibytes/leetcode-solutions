# Two Sum

#nums = input('enter nums:')
#target = input('enter target:')
nums = [2,7,11,15]
target = 9

def two_sum(nums, target):
    for i in range(len(nums)):
        for n in nums[i:]:
            # print(nums[i], n, target == (nums[i] + n)) # this revealed that my inputs are coming in as strings.
            if (target == (nums[i] + n)):
                return [i, nums.index(n, i)]

print(two_sum(nums, target))
