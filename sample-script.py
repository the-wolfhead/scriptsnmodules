import subprocess
list = ['testfile1', 'testfile2', 'testfile3', 'testfile4', 'testfile5']
for x in  list:
	print(x)
	subprocess.call(['touch', ''+x+'.txt'])
	subprocess.call(['pwd'])
	subprocess.call(['ls', '-l'])
	subprocess.call(['date'])
