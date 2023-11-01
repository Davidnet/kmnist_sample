FROM tensorflow/tensorflow:2.14.0-gpu
RUN python -m pip install tensorflow-datasets
WORKDIR /usr/src/app
COPY README.md ./README.md
COPY pyproject.toml ./pyproject.toml
COPY kmnist_sample ./kmnist_sample
RUN python -m pip install -e .
ENV PYTHONUNBUFFERED=1
CMD ["python", "-m", "kmnist_sample.train"]
