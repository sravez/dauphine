import pytest
from E05_13 import add_to_words

def test_add_to_words():
    d = {}
    assert len(d) == 0
    w1 = "word1"
    w2 = "word2"

    add_to_words(d, w1, 1)
    assert len(d) == 1
    assert len(d[w1]) == 1
    add_to_words(d, w2, 10)
    assert len(d) == 2
    add_to_words(d, w1, 15)
    assert len(d) == 2
    assert len(d[w1]) == 2
