# haskell

## repl

```bash
ghci
```

to load a module 

```
>:l Main.hs
>:l Main
```

## running tests

```haskell
import Test.HUnit

testOn3 = TestCase (assertEqual "Try a test failing 3 <> 4" 3 4)

tests = TestList [TestLabel "test on three" testOn3]
```

Running tests:

```
ghci
Prelude>:l myTests.hs
Prelude>runTestTT tests
```

### run tests from shell


```bash
runhaskell learning.hs
Cases: 2  Tried: 2  Errors: 0  Failures: 0
```

With a learning.hs file including the following code:

```haskell
module Main (main) where

import Test.HUnit
import System.Exit


testMin = TestCase (assertEqual "Min function" 2 (min 4 2))
testSucc = TestCase (assertEqual "Successor" 2 (succ 1))

main :: IO ()
main = do
    counts <- runTestTT ( test [
        testMin,
        testSucc
        ])
    if (errors counts + failures counts == 0)
        then exitSuccess
        else exitFailure
```


## first step

create value :

```haskell
a = "Hello"
[1..10]
```

`show` to convert to string.



## first program

```haskell
module Main where

main = print "Hello, world!"

```

## install lib local

```bash
20013523@hq.corp.leroymerlin.com@L501526:~/perso/call-stack$ ./Setup.lhs configure --user
Configuring call-stack-0.4.0...


20013523@hq.corp.leroymerlin.com@L501526:~/perso/call-stack$ ./Setup.lhs build
Preprocessing library for call-stack-0.4.0..
Building library for call-stack-0.4.0..
[3 of 3] Compiling Paths_call_stack ( dist/build/autogen/Paths_call_stack.hs, dist/build/Paths_call_stack.o, dist/build/Paths_call_stack.dyn_o )


20013523@hq.corp.leroymerlin.com@L501526:~/perso/call-stack$ ./Setup.lhs install --user
Installing library in /home/20013523@hq.corp.leroymerlin.com/.cabal/lib/x86_64-linux-ghc-8.10.7/call-stack-0.4.0-FmELR2iAK4CCMyR5yqUtbg
Registering library for call-stack-0.4.0..
```
