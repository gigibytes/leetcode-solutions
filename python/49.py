given_strs = ["eat","tea","tan","ate","nat","bat"]
anagram_map = {}

def get_anagrams(strs):
    for s in strs:
        sorted_str = ''.join(sorted(s)) #sorted produces a list, which cannot be a map key
        if sorted_str not in anagram_map:
            anagram_map[sorted_str] = [s]
        else:
            anagram_map[sorted_str].append(s)

    return list(anagram_map.values()) #or [*anagram_map.values()]

print(get_anagrams(given_strs))
