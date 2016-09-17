# Pre-work - **Tipsy**

**Tipsy** is a tip calculator application for iOS.

Submitted by: **Aaron Bailey**

Time spent: **8** hours spent in total

## User Stories

The following **required** functionality is complete:
* [x] User can enter a bill amount, choose a tip percentage, and see the tip and total values.

The following **optional** features are implemented:
* [x] Custom font
* [x] UI animations
* [x] Making sure the keyboard is always visible and the bill amount is always the first responder. This way the user doesn't have to tap anywhere to use this app. Just launch the app and start typing.

The following **additional** features are implemented:

- [x] Included options for splitting the tip for up to 4 people
- [x] Implemented 2 ways for the user to clear their calculation and start fresh
- [x] Implemented custom number pad for quicker and easier access
- [x] Display the math being used to calculate the total + tip dynamically 


## Video Walkthrough 

Here's a walkthrough of implemented user stories:

<a href="https://raw.githubusercontent.com/arnbly/tipsy/master/demos/tipsyAppDemo.gif" target="_blank"><img src='https://raw.githubusercontent.com/arnbly/tipsy/master/demos/tipsyAppDemo.gif' title='Video Walkthrough' width='' alt='Video Walkthrough' /></a>

GIF created with [LiceCap](http://www.cockos.com/licecap/).

## Notes

From the start I knew I wanted to include a custom number pad to free up the Tip view, make it more seamless to select tips and how to split them, and make the aesthetic of the app overall more attractive. This was taking off a bit more than I could chew at first when trying to figure out how to pass values from buttons into a label directly. Once I got the hang of that it was mostly just getting used to the unfamiliar syntax of Swift. Luckily StackExchange exists!

Also, I found it quite tricky at first to understand how variables were storing data with Swift between a function, local, and global level. It's a bit differnet than I've experienced in the past. 

## License

    Copyright [2016] [Aaron Bailey]

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
