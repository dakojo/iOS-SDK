# iOS-SDK

## Installation

Create Podfile and add pod 'UserSDK':

```ruby
use_frameworks!

target 'YourApp' do
    pod 'UserSDK'
end

post_install do |installer|
   installer.pods_project.targets.each do |target|
      if target.name == 'Starscream'
         target.build_configurations.each do |config|
            config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION']='YES'
        end        
      end
   end
end
```

Install pods:

```ruby
$ pod install
```

Import the module:

```Swift
import UserSDK
```

## Changelog

### 0.6.6
Fixed mobile notifications and in-app notifications sound

### 0.6.5
Added support for Apple Swift version 5.6.1 compiler

### 0.6.4
Multiple anonymous users won't be created after using the logout method

### 0.6.3
Fixed mobile notifications and in-app notifications sending

### 0.6.2
Xcode 12.5 and Apple silicon compatibility  
The newest Firebase library support

### 0.6.1
Xcode 12 compatibility. Fixed compiler warnings

### 0.6.0
Introduced Preload Content

### 0.5.4
Logout method removes user's FCM token

### 0.5.3
Screen events tracking are sent correctly now

### 0.5.2
Full bitcode support

### 0.5.1
Compatibility improvements with Objective-C

### 0.5.0
Added Product Event feature

### 0.4.2
Small improvements

### 0.4.0

Fixed bitcode support

### 0.3.0

SDK components are no longer singletons which should improve lifecycle management and leave less garbage data after logout. Reordered push notifications subscription process, reduced redundant pings after receiving fcm token.

### 0.2.0

Fixed problems with sending custom attributes.

### 0.1.0

Initial version

## License

MIT
