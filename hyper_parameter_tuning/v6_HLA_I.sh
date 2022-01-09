#!/bin/bash



for enc_method in one_hot blosum62 atchley pca; do
  for n_fold in 100; do
    for lr in 0.0001; do
      for V_cdrs in 1 2; do
        for CNN_flag in True; do
          for n_dense in 1; do
            for n_units in [16] [32] [64]; do
              for dropout_flag in True; do
                for p_dropout in 0.2 0.5; do
                  v6_2CNNs_encodedCDR3_separate_dense_template_HLA_I_gpu.py \
                  $enc_method $n_fold $lr $V_cdrs $CNN_flag $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                done
              done
            done
          done
        done
      done
    done
  done
done

for enc_method in one_hot blosum62 atchley pca; do
  for n_fold in 100; do
    for lr in 0.0001; do
      for V_cdrs in 1 2; do
        for CNN_flag in True; do
          for n_dense in 2; do
            for n_units in [32,16] [64,16]; do
              for dropout_flag in True; do
                for p_dropout in 0.2 0.5; do
                  v6_2CNNs_encodedCDR3_separate_dense_template_HLA_I_gpu.py \
                  $enc_method $n_fold $lr $V_cdrs $CNN_flag $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                done
              done
            done
          done
        done
      done
    done
  done
done

for enc_method in one_hot blosum62 atchley pca; do
  for n_fold in 100; do
    for lr in 0.0001; do
      for V_cdrs in 1 2; do
        for CNN_flag in True; do
          for n_dense in 1; do
            for n_units in [16] [32] [64]; do
              for dropout_flag in False; do
                for p_dropout in 0.2; do
                  v6_2CNNs_encodedCDR3_separate_dense_template_HLA_I_gpu.py \
                  $enc_method $n_fold $lr $V_cdrs $CNN_flag $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                done
              done
            done
          done
        done
      done
    done
  done
done

for enc_method in one_hot blosum62 atchley pca; do
  for n_fold in 100; do
    for lr in 0.0001; do
      for V_cdrs in 1 2; do
        for CNN_flag in True; do
          for n_dense in 2; do
            for n_units in [32,16] [64,16]; do
              for dropout_flag in False; do
                for p_dropout in 0.2; do
                  v6_2CNNs_encodedCDR3_separate_dense_template_HLA_I_gpu.py \
                  $enc_method $n_fold $lr $V_cdrs $CNN_flag $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                done
              done
            done
          done
        done
      done
    done
  done
done
