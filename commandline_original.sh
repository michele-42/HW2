
#!/bin/bash



jq '.series_works_count | tonumber' data/series.json | head -n 30


