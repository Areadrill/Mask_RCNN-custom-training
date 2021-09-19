# Mask_RCNN_simplified_training

This repo represents a trimmed-down, ready to use version of [Matterport/Mask_RCNN](https://github.com/matterport/Mask_RCNN).

Note that by "ready to use", what is meant is that it's ready to train custom models.

## Usage

To use this repo to create custom models based on the Mask_RCNN model, one should follow these steps:

- Add to the `dataset` directory:
    - A `train` directory containing the training set
    - A `val`directory containing the validations set
    - Both should contain an annotation file by the name `via_region_data.json`
        - In case you have your own, yet unlabelled dataset, you can do the labelling [here](https://www.makesense.ai/)
        - Make sure the annotation format is correct. An example can be found in the `dataset` directory

- Modify the `model_template.py` file
    - The lines that may need editing are marked with an `# CHANGE THIS` comment
    - Note that some of the indicated lines may not need to be changes
        - The only essential changes are:
            - Line 69, to input the correct number of classes
            - Line 93, to add the name of the classes
            - Line 143, so that the model can correctly attribute the classes

- Optionally, a docker image can be built from the `Dockerfile` present in this repository
    - The docker image will start the training process as soon as it is run

- Available commands can be seen [here](https://github.com/matterport/Mask_RCNN#training-on-ms-coco)
