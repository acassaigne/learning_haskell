module LetExample where

import Prelude

x :: Int
x = 2 + 5


cylinder :: Double -> Double -> Double
cylinder r h =
  let sideArea = 2 * pi * r * h
      topArea = pi * r ^ 2
  in sideArea + 2 * topArea

otherSimpleLet :: Int
otherSimpleLet = 4 * (let a = 9 in a + 1) + 2
