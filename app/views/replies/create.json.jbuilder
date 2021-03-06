json.id @reply.id
json.comment_id @reply.comment_id
json.reply safe_join(@reply.reply.split("\n"), tag(:br))
json.created_at time_ago_in_words(@reply.created_at)

json.userid @user.userid

if @user.username.blank?
  json.username @user.userid
else
  json.username @user.username
end

json.userimg @user.userimg.url(:m)
