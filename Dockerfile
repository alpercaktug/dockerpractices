FROM alpine

RUN mkdir /test_dir && cd /test_dir

RUN echo "test file" > test.txt

CMD cat /test_dir/test.txt
