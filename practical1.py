import hashlib
import time

class Block:
    def __init__(self, index, previous_hash, timestamp, data, hash):
        self.index = index
        self.previous_hash = previous_hash
        self.timestamp = timestamp
        self.data = data
        self.hash = hash

def calculate_hash(index,previous_hash,timestamp,data):
    value=str(index)+str(previous_hash)+str(timestamp)+str(data)
    return hashlib.sha256(value.encode('utf-8')).hexdigest()

def create_genesis_block():
    return Block(0,'0',int(time.time()),"Genesis Block", calculate_hash(0,'0',int(time.time()), "Genesis Block"))

def create_new_block(previous_block,data):
    index = previous_block.index + 1
    timestamp = int(time.time())
    previous_hash = previous_block.hash
    hash = calculate_hash(index,previous_hash,timestamp,data)
    return Block(index, previous_hash, timestamp, data, hash)

genesis_block = create_genesis_block()

blockchain = [genesis_block]

blockchain.append(create_new_block(blockchain[-1], "transaction Data 1"))
blockchain.append(create_new_block(blockchain[-1], "transaction Data 2"))
blockchain.append(create_new_block(blockchain[-1], "transaction Data 3"))

for block in blockchain:
    print(f"Index: {block.index}")
    print(f"Previous Hash: {block.previous_hash}")
    print(f"Timestamp: {block.timestamp}")
    print(f"Data: {block.data}")
    print(f"Hash: {block.hash}\n")
