#!/usr/bin/python3
"""
Parse all environment vars starting with <prefix>_ into Docker env file
"""
if __name__ == '__main__':
	import os, sys
	try:
		prefix = sys.argv[1] + '_'
	except:
		print("Usage: %s <prefix>" % sys.argv[0])
		sys.exit(2)
	for i in os.environ.items():
		if i[0].startswith(prefix):
			key = i[0][len(prefix):]
			value = i[1]
			print("%s=%s" % (key, value))
			
