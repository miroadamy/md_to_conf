FROM python:3.9-alpine

ENV CONFLUENCE_USERNAME default-user
ENV CONFLUENCE_API_KEY default-key
ENV CONFLUENCE_ORGNAME pivotree

RUN mkdir /app
ADD md2conf.py requirements.txt  /app/
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python3", "md2conf.py"]
CMD ["readme.md"]