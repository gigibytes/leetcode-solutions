nums = [1,2,3,4,5,5]

def contains_duplicate(nums: [int]) -> bool:
    for n in nums:
        if nums.count(n) > 1:
            return True
    return False

print(contains_duplicate(nums))
