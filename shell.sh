for t in ~/dtest/*					#insert the dataset's path
do
	for f in $t/*
	do
		./darknet detector demo cfg/coco.data cfg/yolov3.cfg yolov3.weights $f
		IFS='/' read -ra NAME <<< "$f"
		IFS='.' read -ra NAME1 <<< "${NAME[-1]}"
		mv ~/darknet/json/labels.json ~/darknet/json/"${NAME1[0]}".json
		echo ${NAME1[0]}
		touch  ~/darknet/json/labels.json
		truncate -s 0 ~/darknet/json/frame.txt
	done

done
