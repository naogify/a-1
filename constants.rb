require 'yaml'

SRC_DIR = 'src'

URLS_PATH = 'urls.txt'

MBTILES_PATH = 'tiles.mbtiles'
MINZOOM = 8
MAXZOOM = 16

BASE_URL = 'https://x.optgeo.org/a-1/zxy'

DESIGN = YAML.load <<-EOS
-
  minzoom: 11
  maxzoom: #{MAXZOOM}
  glob: #{SRC_DIR}/vector_shp_2500**/*
EOS

Z_CONFIG = YAML.load <<-EOS
91: 
  layer: contour
  minzoom: 15
100:
  layer: symbol
2102:
  layer: symbol
2103:
  layer: symbol
3101:
  layer: coastline
  minzoom: 8
4101:
  layer: line
4151:
  layer: line
5101:
  layer: building
  minzoom: 13
5111:
  layer: building
  minzoom: 13
6101:
  layer: symbol
6111:
  layer: symbol
7101:
  layer: line
7201:
  layer: symbol
7611:
  layer: symbol
8103:
  layer: symbol
8201:
  layer: contour
  minzoom: 10
8204:
  layer: contour
  minzoom: 10
8211:
  layer: contour
  minzoom: 14
8214:
  layer: contour
  minzoom: 14
8221:
  layer: contour
  minzoom: 15
8222:
  layer: contour
  minzoom: 15
8224:
  layer: contour
  minzoom: 15
8811:
  layer: contour
  minzoom: 14
9201:
  layer: contour
  minzoom: 10
9204:
  layer: contour
  minzoom: 10
9211:
  layer: contour
  minzoom: 14
9212:
  layer: contour
  minzoom: 14
9214:
  layer: contour
  minzoom: 14
9221:
  layer: contour
  minzoom: 15
9224:
  layer: contour
  minzoom: 15
9501:
  layer: area
  minzoom: 13
9601:
  layer: area
  minzoom: 13
EOS

JOBS = 1

