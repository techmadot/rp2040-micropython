#!/bin/bash
pyboard.py -f ls

## デバイス上へプログラムをコピー
pyboard.py -f cp sample.py :app.py
