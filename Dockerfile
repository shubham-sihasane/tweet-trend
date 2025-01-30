FROM openjdk:11
ADD /home/ubuntu/jenkins/workspace/FullstackPipeline/target/demo-workshop-2.1.2.jar ttrend.jar
ENTRYPOINT [ "java", "-jar","ttrend.jar"]
