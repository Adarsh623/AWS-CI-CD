# 🚀 AWS Continuous Integration Demo

This guide walks you through setting up a complete CI pipeline using **GitHub**, **AWS CodePipeline**, and **AWS CodeBuild** for a Python application.

---

## 📁 Step 1: Set Up Your GitHub Repository

To begin, we'll create a GitHub repository to host the source code of your Python application.

### ✅ Instructions:

1. Go to [github.com](https://github.com) and sign in.
2. Click the **“+”** icon in the top-right corner and choose **“New repository.”**
3. Provide a repository name and optional description.
4. Set visibility (public/private) based on your needs.
5. Check **“Initialize this repository with a README.”**
6. Click **“Create repository.”**

---

## 🔧 Step 2: Create an AWS CodePipeline

AWS CodePipeline automates the integration and deployment workflow from GitHub to AWS.

### ✅ Instructions:

1. Open the **AWS Management Console** and go to **CodePipeline**.
2. Click **“Create pipeline.”**
3. Name your pipeline and proceed to the next step.
4. In the **Source stage**:
   - Choose **GitHub** as the source provider.
   - Connect your GitHub account and select your repository and branch.
5. In the **Build stage**:
   - Choose **AWS CodeBuild** as the build provider.
   - Click **“Create project”** to configure CodeBuild (see Step 3).

---

## 🏗️ Step 3: Configure AWS CodeBuild

CodeBuild will handle building and packaging your Python application.

### ✅ Instructions:

1. Go to **AWS CodeBuild** in the Console.
2. Click **“Create build project.”**
3. Provide a name for the project.
4. For **Source provider**, select **AWS CodePipeline**.
5. Configure the **Environment**:
   - Choose the OS, runtime (Python), and compute size.
6. Add build commands via `buildspec.yml` or inline (e.g. install dependencies, run tests).
7. Define **Artifacts** to output your build result.
8. Click **“Create build project.”**

---

## ✅ Step 4: Trigger the CI Process

Let’s see the pipeline in action by pushing a code change.

### ✅ Instructions:

1. Make a change in your code and commit it to the configured branch.
2. Push the change to GitHub.
3. Go to **AWS CodePipeline** and monitor your pipeline.
4. The pipeline will automatically:
   - Pull your latest code
   - Trigger the build process via CodeBuild
   - Deploy your app 

---

## 🎉 You're All Set!

