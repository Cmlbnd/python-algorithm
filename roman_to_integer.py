#
#   'CXLVII'  -->  100 -10 +50 +5 +1 +1
#     147
#

def romanToInt(self, s: str) -> int:
        ref = {
            'I': 1,
            'V': 5,
            'X': 10,
            'L': 50,
            'C': 100,
            'D': 500,
            'M': 1000
        }
        
        result = 0
        
        if 1<=len(s) & len(s)<= 15:
            for letter in range(len(s)):
            
                if letter == len(s)-1 or ref[s[letter]] >= ref[s[letter+1]] :
                    number = ref[s[letter]]
                    result += number
                    
                else:
                    result -= ref[s[letter]]
        
        return result
