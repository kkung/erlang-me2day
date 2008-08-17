-module (me2day).
-compile(export_all).
-import (lists, [reverse/1]).
-import (http, [request/4]).

-define (ME2DAY_API_URL, "http://me2day.net/api/").

me2day_url_for_get_comments(PostId) ->
  ?ME2DAY_API_URL ++ "get_comments.xml?post_id=" ++ PostId.

me2day_url_for_get_friends(Me2dayID) ->
  ?ME2DAY_API_URL ++ "get_friends/" ++ Me2dayID ++ ".xml".

me2day_url_for_get_latests(Me2dayID) ->
  ?ME2DAY_API_URL ++ "get_latests/" ++ Me2dayID ++ ".xml".
  
me2day_url_for_get_metoos(PostId) ->
  ?ME2DAY_API_URL ++ "get_metoos.xml?post_id=" ++ PostId ++ ".xml".

me2day_url_for_get_person(Me2dayID) ->
  ?ME2DAY_API_URL ++ "get_person/" ++ Me2dayID ++ ".xml".

me2day_url_for_get_posts(Me2dayID) ->
  ?ME2DAY_API_URL ++ "get_posts/" ++ Me2dayID ++ ".xml".

me2day_url_for_get_settings() ->
  ?ME2DAY_API_URL ++ "get_settings.xml".
  
me2day_url_for_get_tags() ->
  ?ME2DAY_API_URL ++ "get_tags.xml".
  
me2day_url_for_track_comments(Me2dayID) ->
  ?ME2DAY_API_URL ++ "track_comments/" ++ Me2dayID ++ ".xml".


request_via_http(Uri) ->
  inets:start(),
  case http:request(get,
    {Uri,[]}, 
    [{autoredirect,true},
    {version,"HTTP/1.1"}],
    [{body_format,string}]) of
    {ok,Result} -> Result;
    {error,Reason} -> Reason
  end.
  
