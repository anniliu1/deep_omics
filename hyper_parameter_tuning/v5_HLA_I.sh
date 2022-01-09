#!/bin/bash



for enc_method in one_hot blosum62 atchley pca; do
  for n_fold in 100; do
    for lr in 0.0001; do
      for V_cdrs in 1 2; do
        for CNN_flag in True; do
          for n_filters in 816; do
            for pl_size in 2; do
              for strides in 1; do
                for n_dense in 1; do
                  for n_units in [16] [32] [64]; do
                    for dropout_flag in True; do
                      for p_dropout in 0.2 0.5; do
                        . ../../anaconda3/etc/profile.d/conda.sh
                        conda activate sliu3_gpu
                        export OMP_NUM_THREADS=1
                        sbatch --gres=gpu -t 01-10:00:00 -o v5.log \
                                -p campus-new --job-name=v5 \
                                v5_template_HLA_I_gpu.py $enc_method $n_fold $lr $V_cdrs $CNN_flag [1,3,5,7,9] $n_filters $pl_size $strides $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                      done
                    done
                  done
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
          for n_filters in 816; do
            for pl_size in 2; do
              for strides in 1; do
                for n_dense in 2; do
                  for n_units in [32,16] [64,16]; do
                    for dropout_flag in True; do
                      for p_dropout in 0.2 0.5; do
                        . ../../anaconda3/etc/profile.d/conda.sh
                        conda activate sliu3_gpu
                        export OMP_NUM_THREADS=1
                        sbatch --gres=gpu -t 01-10:00:00 -o v5.log \
                                -p campus-new --job-name=v5 \
                                v5_template_HLA_I_gpu.py $enc_method $n_fold $lr $V_cdrs $CNN_flag [1,3,5,7,9] $n_filters $pl_size $strides $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                      done
                    done
                  done
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
          for n_filters in 816; do
            for pl_size in 2; do
              for strides in 1; do
                for n_dense in 1; do
                  for n_units in [16] [32] [64]; do
                    for dropout_flag in False; do
                      for p_dropout in 0.2; do
                        . ../../anaconda3/etc/profile.d/conda.sh
                        conda activate sliu3_gpu
                        export OMP_NUM_THREADS=1
                        sbatch --gres=gpu -t 01-10:00:00 -o v5.log \
                                -p campus-new --job-name=v5 \
                                v5_template_HLA_I_gpu.py $enc_method $n_fold $lr $V_cdrs $CNN_flag [1,3,5,7,9] $n_filters $pl_size $strides $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                      done
                    done
                  done
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
          for n_filters in 816; do
            for pl_size in 2; do
              for strides in 1; do
                for n_dense in 2; do
                  for n_units in [32,16] [64,16]; do
                    for dropout_flag in False; do
                      for p_dropout in 0.2; do
                        . ../../anaconda3/etc/profile.d/conda.sh
                        conda activate sliu3_gpu
                        export OMP_NUM_THREADS=1
                        sbatch --gres=gpu -t 01-10:00:00 -o v5.log \
                                -p campus-new --job-name=v5 \
                                v5_template_HLA_I_gpu.py $enc_method $n_fold $lr $V_cdrs $CNN_flag [1,3,5,7,9] $n_filters $pl_size $strides $n_dense $n_units $dropout_flag $p_dropout 1216 2207
                      done
                    done
                  done
                done
              done
            done
          done
        done
      done
    done
  done
done
