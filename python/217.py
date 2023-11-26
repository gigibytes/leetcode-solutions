nums = [1,2,3,4,5,5]

def contains_duplicate(nums: [int]) -> bool:
    already_seen = set()
    
    for n in nums:
        #if nums.count(n) > 1:
        if n in already_seen:
            return True
        already_seen.add(n)

    return False

print(contains_duplicate(nums))


