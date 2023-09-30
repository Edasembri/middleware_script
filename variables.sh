dir_name=$1
echo $1 #this recuperate the first argument 
echo $# #number or argument provided
echo $* #all the argument provided

mkdir $dir_name
ls $dir_name
touch $dir_name/report.log
cat $dir_name/report.log
echo "hello" >> $dir_name/report.log
