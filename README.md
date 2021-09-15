# WSL 1 System Startup Task
A vbs script called by a Windows scheduled task to automatically start WSL1.

# Usage 

1. Clone this repository.
2. Import `wsl-start-scheduled-task.xml` into Windows Task Scheduler. It should be located in a WSL folder.
3. Update the Action to point at `wsl_start.vbs` in the repo. 
4. Update `wsl_start.sh` to start any custom services you want to start.
5. Update the path in `wsl_start.vbs` to point to the `wsl_start.sh` wherever you cloned the repo.

If you have problems importing the task, but here are the Task Scheduler settings so you can create it manually:

![image](https://user-images.githubusercontent.com/2808553/133480177-892a8535-201c-45ec-aae8-b66bd240ffb3.png)

![image](https://user-images.githubusercontent.com/2808553/133480198-4f79c80d-3d7f-4527-a6af-933f926b4207.png)

![image](https://user-images.githubusercontent.com/2808553/133480243-f3c269fb-fcaa-4cb4-8d79-a92f193443f8.png)

![image](https://user-images.githubusercontent.com/2808553/133480285-b8ea1bb4-925c-435b-8805-8ce3d0b38ca6.png)

![image](https://user-images.githubusercontent.com/2808553/133480321-759cc825-6590-4d10-98e5-9d49b32a3bbe.png)


