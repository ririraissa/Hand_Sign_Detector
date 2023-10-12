
# Hand Sign Detector

I trained a hand sign detector using CNN (Convolutional Neural Networks) model in MATLAB. This was my final project for one of my subjects when I was pursuing my bachelor's degree. Below, you can find the full tutorial and source code I discovered on YouTube.

https://www.youtube.com/watch?v=P2oJVMMZXD8

https://www.youtube.com/watch?v=JU2qHAE0h2Q

# Dataset and Model

Due to limitations on GitHub, I have placed the training dataset and the model (named MyNet.mat) on this Google Drive link.

https://drive.google.com/drive/u/0/folders/1TETWqbW1_QdehxAYFM6bRY5Zavwafj1g

# How?
**1. run.mat**

Execute this in your MATLAB, and it will create a training dataset based on your webcam. Make sure to place your hand inside the box while the program is running. I repeated this step for all 26 alphabets (A - Z) and created one blank sample for my identity (13319061 Riri Raissa).

**2. test.mat**

Once I obtained my dataset, I ran the training data using this module. I can customize the layers, but I chose the default ones from the tutorial.
```bash
g=alexnet;
layers=g.Layers;
layers(23)=fullyConnectedLayer(26);
layers(25)=classificationLayer;
```
I used an alexnet (8 layers deep), 26 connected layers for the 26 alphabets, and a classification layer at the end to identify the displayed alphabet.

**3.programtrue.mat**

After obtaining the model named MyNet.mat (which I didn't upload here because it's over 600 MB), I can run the program to identify the displayed alphabet.

![App Screenshot](<https://github.com/ririraissa/Hand_Sign_Detector/assets/134708068/ec66d2a9-7027-48ba-8a63-1e24f34f61b7>
)

For futher explanation, you can see my video demo in here:

https://drive.google.com/file/d/1JVB644wSrpZrQWNSZ_MRfQSL4UeIf3ld/view

This the details of the model that i trained:

![App Screenshot](<https://github.com/ririraissa/Hand_Sign_Detector/assets/134708068/2172a11b-6df3-4d6d-83f6-5d7f47005e9c>
)
![App Screenshot](<https://github.com/ririraissa/Hand_Sign_Detector/assets/134708068/8dd51211-43ea-4ac8-be51-45600b4403e1>
)

# Recommendation

In the future, when i've  super pc,  I would like to recreate this project with TensorFlow in Python langauge. Maybe it will perform better at detecting hands instead of pictures.

**Cheers to the author of AlexNet and Knowledge Amplifier on YouTube for their awesome tutorial videos!**