module Main where

main = print "Hello, world 2!"

makeGreeting salutation person =
  salutation <> " " <> person

greetPerson = makeGreeting "Hello"
