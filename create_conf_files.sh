
# spark-env.sh (SPARK)
# ============
echo 'export JAVA_HOME=/usr/local/jre1.8.0_181' >$SPARK_HOME/conf/spark-env.sh
chmod +x $SPARK_HOME/conf/spark-env.sh

# log4j.properties (SPARK)
# ================
sed '0,/log4j.rootCategory=INFO, console/{s/log4j.rootCategory=INFO, console/log4j.rootCategory=WARN, console/}' $SPARK_HOME/conf/log4j.properties.template >$SPARK_HOME/conf/log4j.properties
