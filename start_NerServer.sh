#!/usr/bin/env bash

bert-base-serving-start \
    -model_dir /data/NLP_projects/Represstion/BERT-BiLSTM-CRF-NER/result/BERT_NER \
    -bert_model_dir /data/NLP_projects/Represstion/BERT/models/chinese_L-12_H-768_A-12 \
    -model_pb_dir /data/NLP_projects/Represstion/BERT-BiLSTM-CRF-NER/result/BERT_NER \
    -mode NER \
    -http_port 8655