for t in ~/backup/*      #insert the dataset's path
do
	for f in $t/*
	do
		rm -r ~/places365/data
		mkdir ~/places365/data
		python run_placesCNN_unified.py $f
		IFS='/' read -ra NAME <<< "$f"
		IFS='.' read -ra NAME1 <<< "${NAME[-1]}"
		mv ~/places365/json/labels.json ~/places365/json/"${NAME1[0]}".json
		mv ~/places365/txt/labels.txt ~/places365/txt/"${NAME1[0]}".txt
		touch  ~/places365/json/labels.json
	done

done
