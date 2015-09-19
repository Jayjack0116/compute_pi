#!/bin/bash
rm time_baseline.txt
rm time_avx.txt
rm time_leibniz.txt
rm time_leibniz_avx.txt
rm error_baseline.txt
rm error_avx.txt
rm error_leibniz.txt
rm error_leibniz_avx.txt
N=(1 2 4 8 16 32 64 128 256 512 1024)
for i in {0..3}
do
	for n in ${N[@]}
	do
		./compute_pi $i $n
	done
done
