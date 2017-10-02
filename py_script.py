#
#
import os
value1=raw_input('Enter path: ')
os.chdir(value1)
value2 =raw_input('Enter dir name: ')
value3 =raw_input('Enter NEW name: ')
os.rename(value2,value3)
print 'Complete'
print 'Great success'
