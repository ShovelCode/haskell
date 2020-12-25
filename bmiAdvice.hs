--Medical function about body mass index (BMI)
--Tested 1
bmiAdvice :: Double -> Double -> String
bmiAdvice weight height
  | bmi <= underweight = "Underweight"
  | bmi <= normal = "Healthy"
  | bmi <= overweight = "Overweight"
  | otherwise = "See doctor"
  where  bmi = weight / height ^ 2
         underweight = 18.5
         normal = 25.0
         overweight = 30.0
