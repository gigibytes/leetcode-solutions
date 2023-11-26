#just gonna start making these fit the final LC code rather than just the part i wrote
class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
          return sorted(s) == sorted(t)
