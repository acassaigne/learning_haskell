import Test.HUnit

testOn3 = TestCase (assertEqual "Try a test failing 3 <> 4" 3 4)

tests = TestList [TestLabel "test on three" testOn3]
