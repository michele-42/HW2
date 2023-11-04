
# Use the -s flat to tell jq that data/seies.json is a sequence of json objects 
# one per row.
# use map to select only the necessary fields (convert .series_works_count to int)
# and to create a smaller object of type {title: string, swc: int}
# sort the list of new objects by .swc value
# reverse the order so the objects with high swc are on the top
# get the first 5 objects
# select only the title field

#!/bin/bash

jq -s '
    map({title: (.title), swc: (.series_works_count)|tonumber}) | 
    sort_by(.swc) | 
    reverse | 
    .[0:5] | 
    map(.title)' \
data/series.json