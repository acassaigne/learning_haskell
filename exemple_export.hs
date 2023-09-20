module Example (squareMe) where

  squareMe x = x * x -- Exported to other modules.
  myFruit = ["banana", "apple", "kiwi", "orange"] -- Not exported.
