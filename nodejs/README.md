README.md

### Steps to release an application


#### Create helm chart 
```
helm create nodejs
```

#### Update image information 
#### Change values.yaml
```
image:
  repository: us-central1-docker.pkg.dev/cool-kit-377021/team2/nodejs 
  pullPolicy: IfNotPresent
  # Overrides the image tag whose default is the chart appVersion.
  tag: "2.0.0"
```

#### Deploy application 
```
helm install nodejs  ./nodejs/
```

### Verify
```
helm list 
````



#### Add SSL certificate + ingress