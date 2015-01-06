javascript-speedtest
====================
A JavaScript function for testing the speed of any JavaScript functions either in Internet Browsers or Nodejs.

Usage
===================
SpeedTest/nodeSpeedTest parameters
1. testFunctions = functions and business logic
2. testParameters = List
3. testRepetitions = Integer, repetition numbers of test, default repetition is 100000 if no testRepetitions parameter is found.


Sample Usage
===================
1. Browser
      ...code...
      var test = new SpeedTest(testFunctions, testParameters, testRepetitions);
      test.startTest();
      -> return "Average execution across -testRepetitions-: -time- ms.

2. NodeJS
      var node_test = require(../src/nodejs-speedtest.js);
      ...code...
      var test = new node_test.nodeSpeedTest(testFunctions, testParameters, testRepetitions);
	    test.startTest();
      -> return "Average execution across -testRepetitions-: -time- ms.
      
