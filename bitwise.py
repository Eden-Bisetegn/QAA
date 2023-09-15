#!/usr/bin/env python

bit_wise=[] 
mapped=0
unmapped=0

with open("Undetermined_aligned_readsAligned.out.sam", "r")as fh:
    for line in fh:
        line=line.strip("\n")     
        if line.startswith("@"):
            pass

        else:
            # print(line)
            bit_wise=line.split('\t')[1]
            flag=int(bit_wise)
            # print(flag)
            if((flag & 256) != 256):
                if((flag & 4) != 4):
                    mapped += 1
                else:
                    unmapped += 1
print(mapped)
print(unmapped)