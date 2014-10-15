# build/points.json: build/points.shp
# 	node_modules/.bin/topojson -o build/points.json \
# 	-- points=$<

build/geese.json: build/geese.csv
	node_modules/.bin/topojson -o build/geese.json \
	-x location-long -y location-lat \
	-p name='individual' \
	-- geese=$<

build/lines.json: build/lines.shp
	node_modules/.bin/topojson -o build/lines.json build/lines.shp