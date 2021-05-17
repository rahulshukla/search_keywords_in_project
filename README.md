How to run the script

* download the folder
* change the FOLDERLOCATION variable in config.sh based on this folder path
* in command line run following command

		cd <this folder path>
		sh paperclip.sh
		sh cloud6.sh
		sh xenia.sh

* each script will create files under respective folders. 
* Inside each folder filename will be same as keywords name
* if file is blank means no match and if it has data we can check in it 

After file generation we can check file wich have data with this command
ls -l | awk '{if ($5 != 0) print $9}'

Can be extended for other folders as well... 