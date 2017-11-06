# react-native-LGReachabilityIOS
Tools for check the network state on iOS

Check the status of network (iOS)

###Usage

`import {NativeModules} from 'react-native'`
`const ReachabilityIOS = NativeModules.LGReachabilityIOS;`

```
 ReachabilityIOS.checkStatusForAddress('www.yourwebsite.com',(error,result)=>{
            callback(result);
        })
```
