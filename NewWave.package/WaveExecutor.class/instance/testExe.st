tests
testExe
| future |
future := [ 1 second wait. 2 + 2 ] future.
future onSuccessDo: [ :v | v logCr ].