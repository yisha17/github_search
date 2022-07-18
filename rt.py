


fn = ['CM','XC','IX','IV','XL','CD']
qw = [900,90,9,4,40,400]
rom = ['I','V','X','L','C','D','M']
num2 = [1,5,10,50,100,500,1000]

def romanToInt(s):
    sum = 0
    i = 0
    for int in s:
        
        exc = s[(len(s)-2)-i:(len(s))-i]
        nor = s[len(s)-(i+1)]
        if ( exc in fn and (len(s)-2)-i >= 0):
            index = fn.index(exc)
            sum += qw[index]
            i+=2
            print('exception')
            print(exc)
            print(qw[index])
            
        elif (nor in rom and len(s)-(i+1) >= 0):
            index = rom.index(nor)
            sum += num2[index]
            i+=1
            print('Roman')
            print(nor)
            print(num2[index])
        else:
            return 'Incorrect Roman' 
    print("sum is")        
    print(sum)               
    return sum    


romanToInt("LVIII")



