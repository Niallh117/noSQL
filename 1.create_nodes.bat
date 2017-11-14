REM #
REM #-------------------------------------------------#
REM #						      #
REM # 0. Set myName to the name of the computer       #
REM #						      #
REM #-------------------------------------------------#
REM #	
SET myName=LAPTOP-NEIL
REM #
REM #-------------------------------------------------#
REM #						      #
REM # 1. Start the config server database instances   #
REM #						      #
REM #-------------------------------------------------#
REM #	
REM # 1.1. Create the data directory for each of the config servers
REM #	
mkdir C:\Users\niall\Desktop\Finalyear\nosql\cfg0
mkdir C:\Users\niall\Desktop\Finalyear\nosql\cfg1
mkdir C:\Users\niall\Desktop\Finalyear\nosql\cfg2
REM #	
REM # 1.2. Start the config server instances 
REM #	
start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --configsvr --dbpath C:\Users\niall\Desktop\Finalyear\nosql\cfg0 --port 26050
start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --configsvr --dbpath C:\Users\niall\Desktop\Finalyear\nosql\cfg1 --port 26051
start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --configsvr --dbpath C:\Users\niall\Desktop\Finalyear\nosql\cfg2 --port 26052
REM #	
REM #-------------------------------------------------#


REM #						      #
REM # 2. Start the C:\Program Files\MongoDB\Server\3.4\bin\mongos instances   		      #
REM #	C:\Program Files\MongoDB\Server\3.4\bin					      #
REM #-------------------------------------------------#
REM #	
REM # 2.1. A first C:\Program Files\MongoDB\Server\3.4\bin\mongos process listens to the default port 27017
REM #	
start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongos.exe" --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052


REM #	
REM # 2.2. Remaining C:\Program Files\MongoDB\Server\3.4\bin\mongos processes listen to the explicit ports assigned by us
REM #	
start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongos.exe" --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052 --port 26061


start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongos.exe" --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052 --port 26062

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongos.exe" --configdb %myName%.local:26050,%myName%.local:26051,%myName%.local:26052 --port 26063

REM #	
REM #-------------------------------------------------#
REM #						      #
REM # 3. Create the shards of our cluster	      #
REM #						      #
REM #-------------------------------------------------#
REM #	
REM # 3.1. Create the data directory for each of the replica sets servers
REM #	
mkdir C:\Users\niall\Desktop\Finalyear\nosql\dublin0
mkdir C:\Users\niall\Desktop\Finalyear\nosql\dublin1
mkdir C:\Users\niall\Desktop\Finalyear\nosql\dublin2
mkdir C:\Users\niall\Desktop\Finalyear\nosql\cork0
mkdir C:\Users\niall\Desktop\Finalyear\nosql\cork1
mkdir C:\Users\niall\Desktop\Finalyear\nosql\cork2
mkdir C:\Users\niall\Desktop\Finalyear\nosql\limerick0
mkdir C:\Users\niall\Desktop\Finalyear\nosql\limerick1
mkdir C:\Users\niall\Desktop\Finalyear\nosql\limerick2
mkdir C:\Users\niall\Desktop\Finalyear\nosql\galway0
mkdir C:\Users\niall\Desktop\Finalyear\nosql\galway1
mkdir C:\Users\niall\Desktop\Finalyear\nosql\galway2
REM #	
REM # 3.2. Start each member of the replica set 
REM #	

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet dublin --dbpath C:\Users\niall\Desktop\Finalyear\nosql\dublin0 --port 27000

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet dublin --dbpath C:\Users\niall\Desktop\Finalyear\nosql\dublin1 --port 27001

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet dublin --dbpath C:\Users\niall\Desktop\Finalyear\nosql\dublin2 --port 27002

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet cork --dbpath C:\Users\niall\Desktop\Finalyear\nosql\cork0 --port 27100

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet cork --dbpath C:\Users\niall\Desktop\Finalyear\nosql\cork1 --port 27101

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet cork --dbpath C:\Users\niall\Desktop\Finalyear\nosql\cork2 --port 27102

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet limerick --dbpath C:\Users\niall\Desktop\Finalyear\nosql\limerick0 --port 27200

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet limerick --dbpath C:\Users\niall\Desktop\Finalyear\nosql\limerick1 --port 27201

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet limerick --dbpath C:\Users\niall\Desktop\Finalyear\nosql\limerick2 --port 27202

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet galway --dbpath C:\Users\niall\Desktop\Finalyear\nosql\galway0 --port 27300

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet galway --dbpath C:\Users\niall\Desktop\Finalyear\nosql\galway1 --port 27301

start /b C:\"Program Files\MongoDB\Server\3.0\bin\mongod.exe" --replSet galway --dbpath C:\Users\niall\Desktop\Finalyear\nosql\galway2 --port 27302

REM #	
