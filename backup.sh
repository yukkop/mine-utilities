path="$(docker volume inspect aof6-server_data | jq -r '.[].Mountpoint')"
new_path="./backup/_data_$(date +%Y-%m-%d).backup"
cp -r $path $new_path
chmod -R 777 $new_path
