function SpeedTest(testFunction, testParams, testRepetition){
	this.testFunction = testFunction;
	this.testParams = testParams;
	this.testRepetition = testRepetition || 100000;
	this.average = 0;
}

SpeedTest.prototype = {
	startTest: function(){
		var beginTime,
		    endTime,
		    sumTime = 0;
		for (var i = 0; i < this.testRepetition; i++) {
			beginTime = +new Date();
			this.testFunction(this.testParams);
			endTime = +new Date();
			sumTime += endTime - beginTime;
		}
		this.average = sumTime / this.testRepetition;
		return console.log("Average execution across " + this.testRepetition + ": " + this.average + " ms.");
	}
};
