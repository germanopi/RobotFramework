# RobotFramework


1) Install with Admin the Latest Version of Python/pip at: https://www.python.org/downloads/
2) Verify Python and Pip Version: python --version and pip --version
3) Install Robot Framework and Selenium Library with Admin cmd: pip install robotframework-seleniumlibrary
4) Add library requests that allow calls to API with robot framework: pip install robotframework-requests
5) To look for more libraries, use pypi.python.org search for robotframework or libraries at robotframework.org 
6) Install the Selenium WebDriver for each browser you're going to use  
     * Create C:\bin   
     * Add C:\bin to PATH (Look for ambient variables > User Variables for admin > Path > Edit > New > C:\bin)  
     * Go to selenium.dev > Selenium WebDriver > Read More > Getting started > Install browser drivers > Download to your browser version > Extract to the C:\bin folder  
7) Install Pycharm IDE and Plugin
    * Open jetbrains.com > Developer Tools > Pycharm > Download community edition > Install as Admin > Select Create associations .py and Update PATH 
    * Open Pycharm > Plugins > Marketplace > Install the most updated intellibot    
8) Create a new project > Choose the directory and  
     * Select Inherit global site-packages and Make available to all projects > Change location to an exclusive folder     
     * Or Select Previously configured interpreter > System Intepreter 

RobotFramework Documentation 
https://robotframework.org/robotframework/latest/RobotFrameworkUserGuide.html

Run: robot -d PathToResults ScriptName.robot
