#! /usr/bin/env python3

#  Copyright (c) 2015-2020, Oracle and/or its affiliates. All rights reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
#

import numpy as np
import os

def generate_data(mode='train', problem_type='binary'):
    assert mode == 'train' or mode == 'test'
    rng = np.random.RandomState(1)
    if problem_type == 'binary':
        labels = ['POS', 'NEG']
    else:
        labels = ['POS', 'NEG', 'NEU']
    texts = ['aaa', 'bbb', 'ccc', 'ddd', 'eee', 'fff', 'ggg']
    counts = {label: 0 for label in labels}
    if mode == 'train':
        n = 1000
    else:
        n = 100
    lns = []
    for i in range(n):
        y = rng.choice(labels)
        counts[y] += 1
        num_features = rng.randint(1,10)
        feature_str = ''
        for j in range(num_features):
            x = rng.choice(texts)
            feature_str = x + ' ' + feature_str
        lns.append('%s##%s\n' % (y, feature_str))
    print(counts)
    with open('%s_input_%s.tribuo' % (mode, problem_type), 'w') as f:
        for ln in lns:
            f.write(ln)


def generate_models():
    num_trees = [
        '1',
        '5',
        '10',
        '50'
    ]
    for trees in num_trees:
        cmd = './src/test/scripts/generate-model.sh %s %s %s %s' % (trees, trees, 'train_input_binary.tribuo', 'test_input_binary.tribuo')
        print(cmd)
        os.system(cmd)
        cmd = './src/test/scripts/generate-model.sh %s %s %s %s' % (trees, trees+'_multiclass', 'train_input_multiclass.tribuo', 'test_input_multiclass.tribuo')
        print(cmd)
        os.system(cmd)


if __name__ == '__main__':
    generate_data(mode='train')
    generate_data(mode='test')
    generate_data(mode='train', problem_type='multiclass')
    generate_data(mode='test', problem_type='multiclass')
    generate_models()
