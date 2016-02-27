# curl --include --request POST --header "Content-Type: application/json" -d '{ "spoilery_post": { "title": "I am going to delete this later", "content": "another sample body" } }' localhost:3000/spoilery_posts


curl --include --request POST --header "Content-Type: application/json" -d '{ "no_spoilers_post": { "title": "I am going to delete this later", "content": "another sample body" } }' localhost:3000/no_spoilers_posts
