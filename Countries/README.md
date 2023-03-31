# App name: Country
## version 0.0.1

# Description:

    Building a SwiftUI view to show information about a country in the European Union. What
    SwiftUI controls would be used for each of the following:
    - An image of the flag of the country
    - The name of the country
    - The area of the country
    - The population of the country
    - A link to the Wikipedia entry about the country
    - Information about whether the country is a current member or ex-member of the EU
    - Information about whether the country is a member of the eurozone and/or the Schengen
    treaty

## Landing page
<!-- ![Landing Page](/landingPage.png) -->
<img src="landingPage.png" alt="Image description" style="width: 150px; height: 300px;">

## Running the app
    Requirements:
    - On macOs Xconde envrionment
    - clone the repository
-
    Command:
    See the listings 
`ls -la`
-
    Go to Countries directory
`cd Countries`


        Run the code in Xcode editor by opening the project in Xcode 
        or,
run the command in your terminal

 `xcrun xcodebuild -workspace <your_workspace>.xcworkspace -scheme <your_scheme> -destination 'platform=iOS,name=<your_device_name>' run
`

    xcrun: This is a command-line tool on macOS that is used to locate and execute other command-line tools, including Xcodebuild.

    xcodebuild: This is a command-line tool that is part of the Xcode developer tools suite. It is used to build and test Xcode projects and workspaces from the command line.

    -workspace <your_workspace>.xcworkspace: This specifies the path to the Xcode workspace file that contains your project.

    -scheme <your_scheme>: This specifies the name of the Xcode scheme that you want to build and run. A scheme is a collection of build settings that define how your project is built, run, tested, and profiled.

    -destination 'platform=iOS,name=<your_device_name>': This specifies the destination platform and device where you want to run your app. In this case, the platform is iOS, and the device name is specified using the <your_device_name> placeholder. This could be the name of an iOS device connected to your computer or an iOS simulator.

    run: This is the Xcodebuild action that specifies that you want to build and run your app on the specified destination.

## Conclusion

It is an basic starting of iOS app develepment in Xcode.
