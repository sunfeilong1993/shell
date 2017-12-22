#!/bin/bash

# declare variable
a=123
echo "a=${a}"

# arr
echo "arr: "
arr=(6 5 4 3 2 1)

echo "arr = ${arr[@]}"
echo "arr[3] = ${arr[3]}"
echo "arr.length =  ${#arr[@]}"

for((i=0; i<${#arr[@]}; i++));
do 
echo "arr[${i}] = ${arr[i]}"
done

# for in
echo "for in: "
for n in my name is sunfeilong
do 
echo ${n}
done

# case
read -p "please input you select: 1 or 2:" select
case ${select:-1} in
1) echo "1"
;;
2) echo "2"
;;
*) echo "others"
;;
esac

# caclute
echo "caclute: "
sum=$(expr 1 + 2)
echo "1+2=${sum}"
echo "sum==3?"$(expr 3 =  ${sum})
echo "2*3 = "$(expr 2 \* 3)

# -eq -ne -gt -lt -ge -le
if [ 3 -eq 3 ]
then
  echo "3 == 3"
fi

# ! -o(or) -a(and)
if [ 2 -eq 2 -a 3 -eq 3 ]
then
  echo "2==2 and 3==3"
fi

# && ||
if [[ 2 -eq 2 && 3 -eq 3 ]]
then
  echo "2==2 and 3==3"
fi


# string 
name="sunfeilong"
echo "name=: "${name}
echo "name.length: "${#name}
echo "my name is ${name}"
echo ${name:0:5} # sunf
# echo `expr index "${name}" n`
echo $(expr index "${name}" n)

unset name;
echo ${name}

# use for
echo "for"
for((i=0; i<10; i++));
  do 
    if [ ${i} -eq 3 ] 
      then
        continue
    fi	
    echo ${i} 
    if [ ${i} -eq 5 ] 
      then
        break
    fi	
  done

# fucntion

sayHello( ){
  echo "Hello Shell!"
}

echo "invok sayHello():" 
sayHello

# have arguments and retun value($?)
sum(){
  return $(expr $1 + $2)
}

sum 2 3
echo $?
# date

echo $(date --date='2 days ago' +%Y-%m-%d)
echo $(date --date='-2 days ago' +%Y-%m-%d)

