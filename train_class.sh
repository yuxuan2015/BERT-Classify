#!/usr/bin/env bash

export data_dir=/data/NLP_projects/Represstion/BERT-BiLSTM-CRF-NER/data
export output_dir=/data/NLP_projects/Represstion/BERT-BiLSTM-CRF-NER/result/class_output
export BERT_BASE_DIR=/data/NLP_projects/Represstion/BERT/models/chinese_L-12_H-768_A-12

rm -rf $output_dir
mkdir -p $output_dir

bert-base-ner-train \
    -data_dir $data_dir/class_data \
    -output_dir $output_dir \
    -init_checkpoint $BERT_BASE_DIR/bert_model.ckpt \
    -bert_config_file $BERT_BASE_DIR/bert_config.json \
    -vocab_file $BERT_BASE_DIR/vocab.txt