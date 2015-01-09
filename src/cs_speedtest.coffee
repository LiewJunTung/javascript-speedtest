window.SpeedTest = (testFunction, testParams, testRepetition) ->
  @.testFunction = testFunction
  @.testParams = testParams
  @.testRepetition = testRepetition
  @.average = 0

SpeedTest:: = {
  startTest: ->
    for i in [0..@.testRepetition]
      sumTime = 0
      beginTime = +new Date()
      @.testFunction(@.testParams)
      endTime = +new Date()
      sumTime += endTime - beginTime
    @.average = sumTime / @.testRepetition
    console.log("Average execution across #{@.testRepetition}: #{@.average} ms.")
}
