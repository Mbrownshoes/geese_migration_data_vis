build/points.json: build/points.shp
	node_modules/.bin/topojson -o build/points.json build/points.shp

build/lines.json: build/lines.shp
	node_modules/.bin/topojson -o build/lines.json build/lines.shp