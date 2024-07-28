# この章でのまとめ

- `BuildContext` = `Element`クラス

- `State`のライフサイクルの方が`Widget`のそれよりも**長い**

- `State`は`Element`とライフサイクルが**同じ**

- つまり、`Widget`よりも`Element`の方がライフサイクルは**長い**

- `Widget`のライフサイクルと`Element`のそれが一緒になってしまうと辻褄が合わないので、Flutterでは内部的に**Elementの再利用**をしている

- `RenderObject`は`Element`が管理しており、レイアウト計算や描画といったコストの高い処理を行っている

- `RenderObject`はレイアウト計算や描画に必要な情報を保持しており、その更新が不要な場合はスキップする

- つまり、**Elementの再利用**は`RenderObject`が行うコストの高い処理をスキップさせることに繋がる