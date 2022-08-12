

def lengthOfLongestSubstring(s):
       
        count = 0
        new_list = []
        new_list1 = []
        max_count = 0
        flag = 0    
        for i in range(len(s)):
            
            if (s[i] not in new_list):
                new_list.append(s[i])
                count += 1
                if (max_count < count):
                    max_count = count
                
            else:
                new_list1 = new_list
                new_list = []
                new_list.append(s[i])
                count = 1
                
        return max_count 


