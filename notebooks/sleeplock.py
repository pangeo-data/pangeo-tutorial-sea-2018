import time
from threading import Lock
lock = Lock()

def sleep(n):
    lock.acquire()
    time.sleep(n)
    lock.release()
