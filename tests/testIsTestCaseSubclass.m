function testSuite = testIsTestCaseSubclass
%testIsTestCaseSubclass Unit tests for isTestCaseSubclass

%   Steven L. Eddins
%   Copyright 2008 The MathWorks, Inc.

testSuite = buildFunctionHandleTestSuite(localfunctions);

function testTestCase
assertTrue(xunit.utils.isTestCaseSubclass('TestCase'));

function testSubclass
assertTrue(xunit.utils.isTestCaseSubclass('TestCaseInDir'));

function testNotASubclass
assertFalse(xunit.utils.isTestCaseSubclass('atan2'));