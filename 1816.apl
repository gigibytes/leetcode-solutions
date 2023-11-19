⍝ credit to Conor Hoekstra/@code_report, followed along with his video on this problem.
∊{⍺, ' ', ⍵}/k↑' '(≠⊆⊢)s ⍝ splits and then rejoins, after a fashion
(k>+\' '=s)/s ⍝ counts spaces and creates a mask based off of # of spaces
