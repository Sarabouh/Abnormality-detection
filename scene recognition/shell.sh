for t in ~/dtest/*      #insert the dataset's path
do
	for f in $t/*
	do
		rm -r ~/places365/data
		mkdir ~/places365/data
		python run_placesCNN_unified.py $f
		IFS='/' read -ra NAME <<< "$f"
		IFS='.' read -ra NAME1 <<< "${NAME[-1]}"
		mv ~/places365/json/labels.json ~/places365/json/"${NAME1[0]}".json
		echo ${NAME1[0]}
		touch  ~/places365/json/labels.json
	done

done
