rm -rf /opt/PHANTX/WAFninja

rm -rf .git*

cp -Rf $(pwd) /opt/PHANTX/WAFninja

if [ $? -eq 0 ]
then
  # Result is OK! Just continue...
  echo "Copy PACKAGE... PASS!"
else
  # houston we have a problem
  exit 1
fi

cp -Rf phantxbin/* /opt/PHANTX/bin

chown -R phantx:phantx /opt/PHANTX
chmod -R 755 /opt/PHANTX/bin
