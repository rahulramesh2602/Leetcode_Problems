class Solution:
    def addDigits(self, num: int) -> int:
        while num > 9:
            sum = 0
            while num:
                d = num%10
                sum = sum+d
                num = num//10       
            num = sum
        return num