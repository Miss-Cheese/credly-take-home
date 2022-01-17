json.array! @users do |user|
    json.id user.id
    json.name user.name
    json.email user.email
    json.occupation user.occupation
    json.image_url user.image_url
end