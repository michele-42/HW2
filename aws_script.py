import pandas as pd
import time 

lst = pd.read_json('data/list.json', lines=True)

start_time = time.time()
tags = lst.tags.explode().value_counts().head(5)
end_time = time.time()
print("Time: ", str(end_time - start_time))

print(tags)
