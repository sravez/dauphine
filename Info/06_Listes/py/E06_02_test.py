import pytest

from E06_02 import get_stats

def test_get_stats():
    notes = [10,15,20,5,20]
    stats = {
        "mean": 14,
        "good":  3,
        "max" : 20,
        "best": [2,4]
    }
    res = get_stats(notes)
    assert res == stats