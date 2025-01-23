FROM nginx AS builder

#set a working directorz inside the container
WORKDIR /app

# system upgrade
RUN apt   update -y    

# install deps
RUN apt install mkdocs -y && \
        apt install  mkdocs-bootstrap  -y 


#COPY requirements.txt .

#RUN pip install --upgrade --no-cache-dir -r requirements.txt

# copy the project files into yhe container 
COPY . .

# Build a projct
RUN mkdocs build

FROM nginx:alpine

# copy the project build code to nginx server
COPY --from=builder /app/site /usr/share/nginx/html




