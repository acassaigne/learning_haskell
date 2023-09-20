module Main (main) where

import Test.HUnit
import System.Exit


testMin = TestCase (assertEqual "Min function" 2 (min 4 2))
testSucc = TestCase (assertEqual "Successor" 2 (succ 1))

tests = TestList [TestLabel "test on three" testMin,
                  TestLabel "Successor" testSucc
                 ]




main :: IO ()
main = do
    counts <- runTestTT ( test [
        testMin,
        testSucc
        ])
    if (errors counts + failures counts == 0)
        then exitSuccess
        else exitFailure


