# ReefBreeder-Photon-V2--CLI
ReefBreeder Photon V2+ Reef LED Fixture FishBit API Interception CLI

curl -H 'Host: api.getfishbit.com' -H 'content-type: application/json; charset=UTF-8' -H 'authorization: Bearer POST_CREDENTIALS_AUTH_BEARER_HHERE' -H 'user-agent: FishbitMobileAndroid/1.18.0 (Samsung SM-G781U)' --data-binary '{"connection":{"id":"811b1699-1f15-489b-a50c-84ef0a82305e","type":"channel","name":"Voilet","current_mode":"Voilet","current_value":"2","default_value":"0.00","outlet_ids":["21a2252e-8f34-4a7e-9710-5def78c32d90","aca73cff-0abc-47c2-b272-6dfe06a7f862"]},"manual_override":{"until":"2021-08-21T03:16:53.978+00:00"}}' -X PUT --compressed 'https://api.getfishbit.com/api/v2/tanks/TANK_UUID_AS_PER_FISHBIT_APP/equipment/54f613ea-d08e-43b6-809a-7d69b4e26fac/connections/811b1699-1f15-489b-a50c-84ef0a82305e'


current user:
curl -H 'Host: api.getfishbit.com' -H 'authorization: Bearer CREDENTIALS_AUTH_BEARER_HHERE' -H 'user-agent: FishbitMobileAndroid/1.18.0 (Samsung SM-G781U)' --compressed 'https://api.getfishbit.com/api/v1/users/current_user'

response:
{"id":"0392a9b7-a5b8-4aea-af51-2ae8957fed6a","email":"YOUR_RB_ACCOUNT_EMAIL_ADDRESS","email_confirmed":false,"current_sign_in_at":"2021-07-14T00:21:59.930Z","current_sign_in_ip":"98.170.195.201","last_sign_in_at":"2021-06-06T06:39:57.484Z","last_sign_in_ip":"98.170.195.201","role":"user","meta":{"whitelabel":"reefbreeders"},"preferences":{"time_zone":null,"notifications":{"hardware":{"status":{"push":true,"email":false}},"tanks":{"alerts":{"push":true,"email":false},"reminders":{"push":true,"email":false}}},"readings":{"tank_overview_statistic":"mean","temperature_unit":"f"}},"installations":[]}

get config:
curl -H 'Host: api.getfishbit.com' -H 'authorization: Bearer POST_CREDENTIALS_AUTH_BEARER_HHERE' -H 'user-agent: FishbitMobileAndroid/1.18.0 (Samsung SM-G781U)' --compressed 'https://api.getfishbit.com/api/v1/configuration'

response:
{"app_content":{"defaults":{"readings":{"ph":{"max":8.4,"min":8.1},"CO2":{"max":2000.0,"min":300.0},"VPD":{"max":2.5,"min":0.5},"Visible":{"max":95,"min":0},"Humidity":{"max":70.0,"min":40.0},"Infrared":{"max":95,"min":0},"Salinity":{"max":1.027,"min":1.023},"Temperature":{"max":29.44,"min":21.11}}}},"user":{"id":"0392a9b7-a5b8-4aea-af51-2ae8957fed6a","email":"YOUR_RB_ACCOUNT_EMAIL_ADDRESS","email_confirmed":false,"current_sign_in_at":"2021-07-14T00:21:59.930Z","current_sign_in_ip":"98.170.195.201","last_sign_in_at":"2021-06-06T06:39:57.484Z","last_sign_in_ip":"98.170.195.201","role":"user","meta":{"whitelabel":"reefbreeders"},"preferences":{"time_zone":null,"notifications":{"hardware":{"status":{"push":true,"email":false}},"tanks":{"alerts":{"push":true,"email":false},"reminders":{"push":true,"email":false}}},"readings":{"tank_overview_statistic":"mean","temperature_unit":"f"}},"installations":[]}}

get tanks:
curl -H 'Host: api.getfishbit.com' -H 'authorization: Bearer POST_CREDENTIALS_AUTH_BEARER_HHERE' -H 'user-agent: FishbitMobileAndroid/1.18.0 (Samsung SM-G781U)' --compressed 'https://api.getfishbit.com/api/v2/tanks'

response:
[{"id":"TANK_UUID_AS_PER_FISHBIT_APP","time_zone":"America/Chicago","name":"Aquarium","water_type":"salt","volume":{"unit":"gallons","value":150.0},"equipment_info":{"has_controller":false,"has_monitor":false}}]

get equipment (groups):
curl -H 'Host: api.getfishbit.com' -H 'authorization: Bearer POST_CREDENTIALS_AUTH_BEARER_HHERE' -H 'user-agent: FishbitMobileAndroid/1.18.0 (Samsung SM-G781U)' --compressed 'https://api.getfishbit.com/api/v2/tanks/TANK_UUID_AS_PER_FISHBIT_APP/equipment'

response:
[{"id":"54f613ea-d08e-43b6-809a-7d69b4e26fac","tank_id":"TANK_UUID_AS_PER_FISHBIT_APP","name":"DUAL RB PHOTON V2+","type":"fishbit_light","product":"reefbreeders-light-v1","state":{"firmware":{"name":"reefbreeders-light-v1","version":null},"manual_override":{"until":"2021-08-21T03:16:53.978+00:00","cancel_id":"f236dfae39652872e86f8ae8"},"is_offline":true,"is_scheduled":true,"connections":[{"id":"811b1699-1f15-489b-a50c-84ef0a82305e","type":"channel","name":"Voilet","current_value":"2.00","default_value":"0.00","current_mode":"Voilet","mode_options":{"color":{"hex":"9013FF","red":144,"blue":255,"green":19,"index":5}},"outlet_ids":["21a2252e-8f34-4a7e-9710-5def78c32d90","aca73cff-0abc-47c2-b272-6dfe06a7f862"]},{"id":"b7a9de2e-1e03-4c80-a079-43d57aee8d68","type":"channel","name":"Green","current_value":"0.00","default_value":"0.00","current_mode":"Green","mode_options":{"color":{"hex":"7ED321","red":126,"blue":33,"green":211,"index":1}},"outlet_ids":["64c0288a-7125-41e6-a771-989f13603b47","a051e6b6-2c3c-40df-b3f7-e2618c4612b8"]},{"id":"1cc83230-fab6-4a6b-917a-47d81b79475c","type":"channel","name":"Royal blue","current_value":"0.00","default_value":"0.00","current_mode":"Royal Blue","mode_options":{"color":{"hex":"4000FF","red":64,"blue":255,"green":0,"index":2}},"outlet_ids":["6e4c1df7-783c-4b31-950a-9ac6343b2a25","14c983cb-ab7d-4df6-9ec1-ff204136ad52"]},{"id":"7f7b91d6-5e7e-4f4a-8d8c-f53102c40282","type":"channel","name":"White","current_value":"0.00","default_value":"0.00","current_mode":"White","mode_options":{"color":{"hex":"FFFFFF","red":255,"blue":255,"green":255,"index":3}},"outlet_ids":["70406908-ff12-4710-ad10-a8296cab7c7f","2a559a3d-8b73-479b-a519-4f62538b4f9e"]},{"id":"9999d800-cc31-40f0-a68e-939405eedde9","type":"channel","name":"Cool blue","current_value":"0.00","default_value":"0.00","current_mode":"Cool Blue","mode_options":{"color":{"hex":"49A8FF","red":73,"blue":255,"green":168,"index":4}},"outlet_ids":["3c404627-60c7-4abf-99b1-b4466267fe59","a4ebeb3c-ab08-4afc-a94c-a6caddc127c6"]},{"id":"66210140-918b-4b3a-b976-491a038e2a20","type":"channel","name":"Deep red","current_value":"0.00","default_value":"0.00","current_mode":"Deep Red","mode_options":{"color":{"hex":"E41E2B","red":228,"blue":43,"green":30,"index":0}},"outlet_ids":["871a56d2-5f8d-4025-8717-e5c4b417201b","63b13a64-3693-4280-adac-d5285b60f9b0"]}],"automations":[{"id":"c204b1d5-6802-4d6a-9e3d-c52765418e61","type":"schedule","name":"Suncycle Schedule"}]},"children":[{"id":"cbde30fe-cc10-4e58-8373-b83cc3096239","name":"LEFT"},{"id":"820af75b-5c83-41a5-932c-d86802d3bd62","name":"RIGHT"}]}]

get automations:
curl -H 'Host: api.getfishbit.com' -H 'authorization: Bearer POST_CREDENTIALS_AUTH_BEARER_HHERE' -H 'user-agent: FishbitMobileAndroid/1.18.0 (Samsung SM-G781U)' --compressed 'https://api.getfishbit.com/api/v2/tanks/TANK_UUID_AS_PER_FISHBIT_APP/automations'

response:
[{"id":"c204b1d5-6802-4d6a-9e3d-c52765418e61","name":"Suncycle Schedule","type":"schedule","active":true,"from_share_id":null,"to_share":null,"triggers":[],"actions":[{"id":"7bb737f8-d8a4-4b9e-99d6-c62bc5dd2acd","gadget_id":null,"equipment_id":"54f613ea-d08e-43b6-809a-7d69b4e26fac","type":"suncycle","parameters":{"state":false,"connections":[{"segments":[{"time":"09:00","value":"0.00"},{"time":"10:00","value":"4.00"},{"time":"18:00","value":"4.00"},{"time":"20:00","value":"0.00"}],"connection_id":"66210140-918b-4b3a-b976-491a038e2a20"},{"segments":[{"time":"09:00","value":"0.00"},{"time":"10:00","value":"6.00"},{"time":"18:00","value":"6.00"},{"time":"20:00","value":"0.00"}],"connection_id":"b7a9de2e-1e03-4c80-a079-43d57aee8d68"},{"segments":[{"time":"09:00","value":"0.00"},{"time":"10:00","value":"15.00"},{"time":"18:00","value":"15.00"},{"time":"20:00","value":"0.00"}],"connection_id":"1cc83230-fab6-4a6b-917a-47d81b79475c"},{"segments":[{"time":"09:00","value":"0.00"},{"time":"10:00","value":"3.00"},{"time":"18:00","value":"3.00"},{"time":"19:00","value":"0.00"}],"connection_id":"7f7b91d6-5e7e-4f4a-8d8c-f53102c40282"},{"segments":[{"time":"08:00","value":"0.00"},{"time":"09:00","value":"4.00"},{"time":"10:00","value":"15.00"},{"time":"18:00","value":"15.00"},{"time":"20:00","value":"1.00"},{"time":"23:00","value":"0.00"}],"connection_id":"9999d800-cc31-40f0-a68e-939405eedde9"},{"segments":[{"time":"09:00","value":"0.00"},{"time":"10:00","value":"15.00"},{"time":"18:00","value":"15.00"},{"time":"20:00","value":"0.00"}],"connection_id":"811b1699-1f15-489b-a50c-84ef0a82305e"}],"moon_phases":false}}]}]












