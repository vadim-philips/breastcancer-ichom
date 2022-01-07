echo =================================================
echo run sushi
echo =================================================
sushi .
echo =================================================
echo upload data
echo =================================================
java -cp tools/Connecthaton29-seedresources-4.29.1-SNAPSHOT-jar-with-dependencies.jar com.philips.research.connect.fhirplayground.r4.examples.connecthaton27.seed.SeedResourcesInDir -dir $(pwd)/fsh-generated/resources -fhirserver http://212.187.34.124:9404/fhir
