✅ **Testing instructions**  


## 🛠️ Build
not optimized docker image 

```
docker build -t jogize13/rb_dreams:large -f large.Dockerfile .
```

and optimized 

```
docker build -t jogize13/rb_dreams:light -f light.Dockerfile .
```

## ⬆️ upload to docker hub 
```
docker tag image_id repo_name:image_tag
docker login -u username
docker push repo_name:image_tag
```

in my case it will be jogize13/rb_dreams:1 and jogize13/rb_dreams:2 or light/large and latet


## ⬇️ Download image to pc 

```
docker pull jogize13/rb_dreams:large
docker pull jogize13/rb_dreams:light
```

## 🚀 Run
```
docker run --rm -d -p8080:8080 jogize13/rb_dreams:large
docker run --rm -d -p8080:8080 jogize13/rb_dreams:light
```


## 📄
**also this images are avalible with tag 1 and 2 where 1 not optimized and 2 optimized**
public docker registry 

🐳   [docker registry repo](https://hub.docker.com/r/jogize13/rb_dreams/tags)

