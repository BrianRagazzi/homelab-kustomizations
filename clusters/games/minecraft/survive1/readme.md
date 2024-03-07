

# validate cronjob



```
k auth can-i --as=system:serviceaccount:mc-survive1:jobrunner -n mc-survive1 create pods/exec
```

```
k create job -n mc-survive1 teststop --from=cronjob/stop-survive1
```
