import pandas as pd

lst = pd.read_json('data/list.json', lines=True)
lst.tags.explode().value_counts().head(5)

print(lst)