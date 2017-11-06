# react-native-LGReachabilityIOS
Tools for check the network state on iOS

Check the status of network (iOS)

# Usage

Download the ios files, add dray the LGReachability.xcodeproj to your Libraries,
Open Build Phases in your project, Link Binary With Libraries add libLGReachability.a  

`import {NativeModules} from 'react-native'`
`const ReachabilityIOS = NativeModules.LGReachabilityIOS;`

```
 ReachabilityIOS.checkStatusForAddress('www.yourwebsite.com',(error,result)=>{
            callback(result);
        })
```

# Lisence
MIT
