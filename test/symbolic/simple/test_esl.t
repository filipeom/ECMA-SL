Esl tests:
  $ ecma-sl symbolic assume.esl
  - : int = 1
  All Ok!
  $ ecma-sl symbolic extern.esl
  x
      failure : unable to find external function 'i_dont_exist'
  Found 1 problems!
  [25]
  $ ecma-sl symbolic func.esl
  - : int = 1
  - : int = 1
  All Ok!
  $ ecma-sl symbolic if.esl
  - : int = 1
  - : int = 1
  All Ok!
  $ ecma-sl symbolic strings.esl
  - : int = 1
  All Ok!
  $ ecma-sl symbolic string_concat.esl
       assert : failure with ((bool.ne (str.++ (flour, " ", water))
                               "banana bread"))
  Found 1 problems!
  [21]
  $ ecma-sl symbolic while.esl
  - : int = 1
  - : int = 1
  - : int = 1
  - : int = 1
  - : int = 1
  - : int = 1
  - : int = 1
  - : int = 1
  All Ok!
  $ ecma-sl symbolic object_lookup_0.esl
  - : int = 0
  - : int = 0
  All Ok!
  $ ecma-sl symbolic object_lookup_1.esl
  - : int = 0
  All Ok!
  $ ecma-sl symbolic object_lookup_2.esl
  - : int = 0
  All Ok!
  $ ecma-sl symbolic object_lookup_3.esl
  - : int = 0
  All Ok!
  $ ecma-sl symbolic object_lookup_4.esl
  - : int = 0
  - : int = 0
  All Ok!
  $ ecma-sl symbolic object_lookup_5.esl
  - : int = 0
  - : int = 0
  All Ok!
  $ ecma-sl symbolic object_lookup_6.esl
  - : int = 0
  All Ok!
