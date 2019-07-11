# Ruby Gem: rest-client

## Perform a bing search using the REST client gem.

Start _irb_ and load the gem into the session: `require 'rest-client'`

1. Search for "odin"

        RestClient.get 'https://www.bing.com/search', params: {q: 'odin'}

    I stored the response in a viable, `response`.

2. Status code of response received:

        response.code
        => 200

3. Cookies set

        response.cookies

        =>{
          "MUID"=>"35016BC280F662AC27B26657814963A3",
          "MUIDB"=>"35016BC280F662AC27B26657814963A3",
          "SRCHD"=>"AF=NOFORM",
          "SRCHUID"=>"V=2&GUID=737C2DE77EA3458DBAA4192D9CFCE4DF&dmnchg=1",
          "SRCHUSR"=>"DOB=20190710",
          "_EDGE_S"=>"F=1&SID=14693DF34AD0618F3C8E30664B6F60A6",
          "_EDGE_V"=>"1",
          "_SS"=>"SID=14693DF34AD0618F3C8E30664B6F60A6"
        }

4. Response header:

        response.headers

        =>{
          :cache_control=>"private, max-age=0",
          :transfer_encoding=>"chunked", 
          :content_type=>"text/html; charset=utf-8", 
          :content_encoding=>"gzip", 
          :expires=>"Wed, 10 Jul 2019 15:09:00 GMT", 
          :vary=>"Accept-Encoding", 
          :p3p=>"CP=\"NON UNI COM NAV STA LOC CURa DEVa PSAa PSDa OUR IND\"", 
          :set_cookie=>["SRCHD=AF=NOFORM; domain=.bing.com; expires=Sat, 10-Jul-2021 15:10:00 GMT; path=/", "SRCHUID=V=2&GUID=737C2DE77EA3458DBAA4192D9CFCE4DF&dmnchg=1; domain=.bing.com; expires=Sat, 10-Jul-2021 15:10:00 GMT; path=/", "SRCHUSR=DOB=20190710; domain=.bing.com; expires=Sat, 10-Jul-2021 15:10:00 GMT; path=/", "_SS=SID=14693DF34AD0618F3C8E30664B6F60A6; domain=.bing.com; path=/", "_EDGE_S=F=1&SID=14693DF34AD0618F3C8E30664B6F60A6; path=/; httponly; domain=bing.com", "_EDGE_V=1; path=/; httponly; expires=Mon, 03-Aug-2020 15:10:00 GMT; domain=bing.com", "MUID=35016BC280F662AC27B26657814963A3; path=/; expires=Mon, 03-Aug-2020 15:10:00 GMT; domain=bing.com", "MUIDB=35016BC280F662AC27B26657814963A3; path=/; httponly; expires=Mon, 03-Aug-2020 15:10:00 GMT"],
          :strict_transport_security=>"max-age=31536000; includeSubDomains; preload", 
          :x_msedge_ref=>"Ref A: A7A9782AABE64413A4CE036AADAB2C1D Ref B: MAA02EDGE0210 Ref C: 2019-07-10T15:10:00Z", 
          :date=>"Wed, 10 Jul 2019 15:09:59 GMT"}

5. Response body:

          response.body
          =>"<!DOCTYPE html>...</html>"
