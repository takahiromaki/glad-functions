{length} = require \../../lib/list.ls
{deep-equal, equal} = require \assert

module.exports = new class FuncAssertion
  $: $ = ($)->
    (( + 5) `$` 5) `equal` 10
  lazy: lazy = (lazy)->
    lazy (+), 5, 5 |> (do) |> equal _, 10
  dist: dist = (dist)->
    dist 5, [(+ 4), (* 4)] |> deep-equal _, [9, 20]

