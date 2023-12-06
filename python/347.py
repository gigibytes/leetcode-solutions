class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        #attempt 1: tally with a map and then take the most frequent #s from map.values
        # there's probly some really sexy way to do this with sets
        nums_freq = {}
        result = []
        nums_set = set(nums)

        for n in nums_set:
            nums_freq[n] = nums.count(n)

        while len(result) < k:
            #get most frequents
            most_freq = max(nums_freq, key=lambda k: nums_freq.get(k))
            result.append(most_freq)
            del nums_freq[most_freq]

        return result
