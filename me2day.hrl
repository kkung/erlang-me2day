%% me2day api records

-record (post, {post_id ,
permalink,
body,
kind,
icons,
tags,
me2dayPage,
pubDate,
commentsCount,
metooCount,
contentType,
callbackUrl,
iconUrl,
author,
location,
media
}).
-record (person, {id,
openid,
nickname,
face,
description,
homepage,
email,
cellphone,
messenger,
rssDaily,
invitedBy,
friendsCount,
updated,
postIcons,
flickr}).
-record (tag, {name, url}).
-record (location, {name, longitude, latitude}).
-record (postIcon, {iconIndex,iconType,url,description,default}).
-record (flickr, {nsid}).
-record (comment, {commentId,post_id,body,pubData,author}).