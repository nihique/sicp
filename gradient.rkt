#lang sicp

(#%require sicp-pict)

(inc 48)

(paint-hires  (below (beside diagonal-shading
                             (rotate90 diagonal-shading))
                     (beside (rotate270 diagonal-shading)
                             (rotate180 diagonal-shading))))
