SpeedTest = (testFunction, testParams, testRepetition) ->
  @.testFunction = testFunction
  @.testParams = testParams
  @.testRepetition = testRepetition
  @.average = 0

SpeedTest:: = {
  startTest: ->
    sumTime = 0
    for i in [0..@.testRepetition]
      beginTime = +new Date()
      @.testFunction(@.testParams)
      endTime = +new Date()
      sumTime += endTime - beginTime
    @.average = sumTime / @.testRepetition
    console.log("Average execution across #{@.testRepetition}: #{@.average} ms.")
}

module.exports = {
  nodeSpeedTest: SpeedTest
}
