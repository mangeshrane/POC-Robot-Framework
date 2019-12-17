# POC - ROBOT FRAMEWORK 

Robot framework POC for Web-UI tests

**SETTING UP PROJECT**

1. Installing python on Machine 

    https://realpython.com/installing-python/

2. Installing PIPENV on machine
    
    `pip install pipenv`
    
3. Cloning project
    
    `git clone https://github.com/mangeshrane/POC-Robot-Framework.git`
    
3. Install project dependencies
    open terminal in project directory
    run `pipenv install`
    
4. To activate this project's virtualenv
 
    `run pipenv shell`
    
    Alternatively, run a command inside the virtualenv with `pipenv run <command>`

5. Setting up development envirornment 
	
	1. Install Eclipse IDE or Pycharm
	2. Robot Framework Plugin `Robot framework support` and `intellibot` plugins for pycharm
	
		RED Plugin by Nokia for eclipse
	
	

## Running test suites
    
    `robot testcases`

1. running tests with tags

        `robot --include smoke --name "Smoke Tests" path/to/tests.robot`

2. running tests using python module

        `python -m robot path/to/tests`
    
    
## Notes 

1. Test Case file types other than *.robot are depricated from robot version 3.0.* +
2. To run legacy files using newer version of Robot we Can use --extension ROBOT:rst option to specify type explicitly
	or change the existing suite file into new Robot file 
	using `python -m robot.tidy --inplace [options] inputfile [more input files]`


## References

1. https://github.com/robotframework/HowToWriteGoodTestCases/blob/master/HowToWriteGoodTestCases.rst
2. https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html
 
 
    
