#!/bin/Bash
read -p "enter name project: " MY_NAME
if [ -z "$MY_NAME" ] 
then echo "name empty"
exit 1
fi
mkdir "$MY_NAME"
cd "$MY_NAME"
python3 -m venv venv
echo "venv/" > .gitignore
echo 'print("HELLO")'>my_firstt_script.py
read -p "enter name of libs: " LIBS
if [ -n "$LIBS" ]
then echo "install libs..."
venv/bin/pip install $LIBS
venv/bin/pip freeze>requirements.txt
echo "move libs names to requirements.txt"
else 
echo "ok, without libs."
fi
echo "DONE, project with name $MY_NAME зібрано!!!"

