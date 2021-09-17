FROM python:3.6

 RUN mkdir /code
 WORKDIR /code
 ADD . /code/
 RUN pip install -r requirements.txt

 ENTRYPOINT ["python", "training_template.py", "train", "--dataset=./dataset", "--weights=coco"]
