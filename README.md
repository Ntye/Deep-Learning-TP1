# Deep Learning TP1
 
**Authors**: Louis Fippo Fitime, Claude Tinku, Kerolle Sonfack  
**Department of Computer Engineering, ENSPY**  

## Overview

This repository contains the practical work for the Deep Learning Engineering module. The goal is to provide hands-on experience with the entire lifecycle of a deep learning model—from design to production deployment.

The project is aimed at students who want to deepen their skills in development, tracking, packaging, and deploying deep learning models, using Git, GitHub, MLflow, Flask, and Docker.


## Learning Objectives

- Understand fundamental concepts of deep learning.
- Master each step of a deep learning model’s lifecycle.
- Use Git and GitHub for version control and collaboration.
- Track experiments with MLflow.
- Deploy a deep learning model using a Flask web API, containerized with Docker.


## Project Structure

```
.
├── train_model.py        # Build, train, and save the MNIST model with Keras
├── app.py                # Flask API to serve the trained model
├── requirements.txt      # Project dependencies
├── Dockerfile            # Containerization of the application
├── mnist_model.h5        # Trained model (generated after training)
└── README.md             # Project description and instructions
```

## 1. Deep Learning Foundations

- **Linear models and stochastic optimization**
- **Fully-connected neural networks**
- **Using Keras for MNIST classification**

The `train_model.py` file contains code to build and train a dense neural network for the MNIST dataset using TensorFlow/Keras.  
Data normalization and vectorization are applied for efficient computation.


## 2. Deep Learning Engineering

### 2.1 Version Control and Collaboration

The project uses **Git** and **GitHub** for version tracking and collaborative work.  
Main commands:
```sh
git init
git add .
git commit -m "Initial commit of the project"
git remote add origin https://github.com/Ntye/Deep-Learning-TP1.git
git push -u origin master
```

### 2.2 Experiment Tracking with MLflow

The `train_model.py` script is updated to integrate **MLflow**:
- Logging hyperparameters: epochs, batch_size, dropout_rate
- Logging metrics (accuracy, loss, etc.)
- Saving the model in MLflow

### 2.3 Deploying a Flask API

The `app.py` file provides a `/predict` route for predictions on MNIST images in JSON format.
- Example request:
```json
POST /predict
{
  "image": [pixel_0, pixel_1, ..., pixel_783]
}
```
The response includes the predicted class and probabilities.

### 2.4 Containerization with Docker

The project includes a `Dockerfile`:
- Python 3.9 base image
- Installs dependencies
- Exposes port 5000
- Starts the Flask application

### 2.5 CI/CD and Deployment

This project can be integrated into a CI/CD pipeline (e.g., with GitHub Actions) to automate:
- Building the Docker image
- Pushing to a registry
- Deploying on services like Google Cloud Run or AWS ECS

Key monitoring indicators for production:
- Prediction error rate
- API response time
- Usage and traffic logs


## Quick Installation

1. Clone the repository:
    ```sh
    git clone https://github.com/Ntye/Deep-Learning-TP1.git
    cd Deep-Learning-TP1
    ```
2. Create a Python virtual environment and install dependencies:
    ```sh
    python3 -m venv venv
    source venv/bin/activate
    pip install -r requirements.txt
    ```
3. Train the model:
    ```sh
    python train_model.py
    ```
4. Launch the Flask API:
    ```sh
    python app.py
    ```
5. (Optional) Build and run the Docker container:
    ```sh
    docker build -t mnist-api .
    docker run -p 5000:5000 mnist-api
    ```

---

## Useful Links

- [TensorFlow Documentation](https://www.tensorflow.org/)
- [MLflow](https://mlflow.org/)
- [Flask](https://flask.palletsprojects.com/)
- [Docker](https://docs.docker.com/)
- [GitHub Actions](https://docs.github.com/en/actions)
