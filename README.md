"# AWS-CI-CD" 


1. Install Flask
--> pip install flask
   
2.  Activate your virtual environment 
-->On Windows: venv\Scripts\activate

3.After installation, you can verify Flask is installed by running this command:
-> pip show flask

4. Run Your Flask Application
--> python app.py





🚀 AWS Continuous Integration Demo
Step 1: Set Up Your GitHub Repository
To start our CI journey, we’ll first create a GitHub repository to host the source code of your Python application. If you already have one, feel free to skip this step. Otherwise, follow these instructions:

Visit github.com and sign in to your account.

Click the “+” icon in the top-right corner and choose “New repository.”

Enter a repository name and optionally add a description.

Choose the visibility (public or private) based on your preference.

Select “Initialize this repository with a README.”

Click “Create repository.”

Awesome! Now that your GitHub repo is ready, let’s set up our pipeline.

Step 2: Create an AWS CodePipeline
Now, we’ll create an AWS CodePipeline to automate the CI process for your Python app. CodePipeline will manage the flow from GitHub commits to deployment.

Go to the AWS Management Console and navigate to CodePipeline.

Click “Create pipeline.”

Provide a name for your pipeline and click “Next.”

In the Source stage:

Choose GitHub as the source provider.

Connect your GitHub account.

Select your repository and the desired branch.

In the Build stage:

Select AWS CodeBuild as the build provider.

Click “Create project” to open the CodeBuild setup.

Proceed to the next step to configure CodeBuild.

Step 3: Configure AWS CodeBuild
AWS CodeBuild will handle building and packaging your application. Here's how to set it up:

In the AWS Console, go to CodeBuild and click “Create build project.”

Give your project a name.

Under Source provider, choose AWS CodePipeline.

Select the pipeline created earlier.

Set the Environment configuration:

Choose the OS, runtime (e.g., Python), and compute type.

Define the Buildspec:

Add build commands for installing dependencies, running tests, etc.

Configure Artifacts to specify what the build will output.

Review the settings and click “Create build project.”

Nice work! CodeBuild is now set up and linked to your pipeline.

Step 4: Trigger the CI Process
Time to see everything in action! Let’s trigger a build through GitHub:

Make a change in your Python app's source code on GitHub (e.g., fix a bug or add a feature).

Commit and push the changes to the branch connected to CodePipeline.

Go to AWS CodePipeline in the console.

Watch the pipeline automatically start—fetching the latest code, triggering CodeBuild, and deploying (if configured).
