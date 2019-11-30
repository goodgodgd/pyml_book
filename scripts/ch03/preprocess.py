import numpy as np
from sklearn import datasets
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler


def get_iris_normalized():
    iris = datasets.load_iris()
    X = iris.data[:, [2, 3]]
    y = iris.target
    print('클래스 레이블:', np.unique(y))

    X_train, X_test, y_train, y_test = train_test_split(
        X, y, test_size=0.3, random_state=1, stratify=y)
    print('y의 레이블 카운트:', np.bincount(y))
    print('y_train의 레이블 카운트:', np.bincount(y_train))
    print('y_test의 레이블 카운트:', np.bincount(y_test))

    sc = StandardScaler()
    sc.fit(X_train)
    X_train_std = sc.transform(X_train)
    X_test_std = sc.transform(X_test)
    return X_train_std, y_train, X_test_std, y_test
