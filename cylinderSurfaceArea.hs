--A mathematical function
--Tested 0
cylinderSurfaceArea :: Double -> Double -> Double
cylinderSurfaceArea r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in  sideArea + 2 * topArea
