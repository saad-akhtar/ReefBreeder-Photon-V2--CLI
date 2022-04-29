#!/bin/bash
# THIS SCRIPT WILL SEND CURL COMMANDS TO FISHBIT API
# FISHBIT API LOCATED AT API.GETFISHBIT.COM:443

# TANK ID
tankID="f1674f83-c117-2f52-aeb1-5af55c555555"
equipmentID="54f613ea-d08e-555-855-7d69b4e26fac"
tokenBearer="30e551f0c75555555555555555555555a78f1fc287c4"
apiURI="api.getfishbit.com"
dateFormat="2022-12-01T09:57:12.745+00:00"
# Channel Outlets IDS Fixture A
#mem_a_red = 'this'
#mem_a_green = 'this'
#mem_a_royalblue = 'this'
#mem_a_white = 'this'
#mem_a_coolblue = 'this'
#mem_a_violet = 'this'
# Channel Outlets IDS Fixture B
#mem_b_red = 'this'
#mem_b_green = 'this'
#mem_b_royalblue = 'this'
#mem_b_white = 'this'
#mem_b_coolblue = 'this'
#mem_b_violet = 'this'


# 0.07% is lowest
#100% is highest

# OVERRIDE MODE
if [ $1 == "0" ]; then
	# DISABLE MANUAL MODE FOR THE LED FIXTURE GUID OR GROUP GUID
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0)' --data-binary '{"manual_override":{"cancel":true}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'' > /dev/null
elif [ $1 == "1" ]; then
	# ENABLE MANUAL MODE FOR THE LED FIXTURE GUID OR GROUP GUID
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'' > /dev/null
	# SETTING CHANNEL VALUES INSIDE THE MANUAL OVERRIDE
	# RED #2
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"connection":{"id":"66210140-918b-4b3a-b976-491a038e2a20","type":"channel","name":"Deep red","current_mode":"Deep Red","current_value":'$2',"default_value":"0.00","outlet_ids":["871a56d2-5f8d-4025-8717-e5c4b417201b","63b13a64-3693-4280-adac-d5285b60f9b0"]},"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'/connections/66210140-918b-4b3a-b976-491a038e2a20' > /dev/null
# GREEN #3
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"connection":{"id":"b7a9de2e-1e03-4c80-a079-43d57aee8d68","type":"channel","name":"Green","current_mode":"Green","current_value":'$3',"default_value":"0.00","outlet_ids":["64c0288a-7125-41e6-a771-989f13603b47","a051e6b6-2c3c-40df-b3f7-e2618c4612b8"]},"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'/connections/b7a9de2e-1e03-4c80-a079-43d57aee8d68' > /dev/null
# ROYAL BLUE #4
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"connection":{"id":"1cc83230-fab6-4a6b-917a-47d81b79475c","type":"channel","name":"Royal blue","current_mode":"Royal Blue","current_value":'$4',"default_value":"0.00","outlet_ids":["6e4c1df7-783c-4b31-950a-9ac6343b2a25","14c983cb-ab7d-4df6-9ec1-ff204136ad52"]},"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'/connections/1cc83230-fab6-4a6b-917a-47d81b79475c' > /dev/null
# WHITE #5
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"connection":{"id":"7f7b91d6-5e7e-4f4a-8d8c-f53102c40282","type":"channel","name":"White","current_mode":"White","current_value":'$5',"default_value":"0.00","outlet_ids":["70406908-ff12-4710-ad10-a8296cab7c7f","2a559a3d-8b73-479b-a519-4f62538b4f9e"]},"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'/connections/7f7b91d6-5e7e-4f4a-8d8c-f53102c40282' > /dev/null
# COOL BLUE #6
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"connection":{"id":"9999d800-cc31-40f0-a68e-939405eedde9","type":"channel","name":"Cool blue","current_mode":"Cool Blue","current_value":'$6',"default_value":"0.00","outlet_ids":["3c404627-60c7-4abf-99b1-b4466267fe59","a4ebeb3c-ab08-4afc-a94c-a6caddc127c6"]},"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'/connections/9999d800-cc31-40f0-a68e-939405eedde9' > /dev/null
# VOILET #7
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0' --data-binary '{"connection":{"id":"811b1699-1f15-489b-a50c-84ef0a82305e","type":"channel","name":"Voilet","current_mode":"Voilet","current_value":'$7',"default_value":"0.00","outlet_ids":["21a2252e-8f34-4a7e-9710-5def78c32d90","aca73cff-0abc-47c2-b272-6dfe06a7f862"]},"manual_override":{"until":"'$dateFormat'"}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'/connections/811b1699-1f15-489b-a50c-84ef0a82305e' > /dev/null
else
	# DISABLE MANUAL MODE FOR THE LED FIXTURE GUID OR GROUP GUID
	curl -s -H 'Host: '$apiURI'' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer '$tokenBearer'' -H 'user-agent: FishbitMobileAndroid/1.18.0)' --data-binary '{"manual_override":{"cancel":true}}' -X PUT --compressed 'https://'$apiURI'/api/v2/tanks/'$tankID'/equipment/'$equipmentID'' > /dev/null
fi
