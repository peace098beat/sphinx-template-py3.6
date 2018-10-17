
# sphinxの作り方
2018/10/17


[sphinx でドキュメント作成からWeb公開までをやってみた - Qiita](https://qiita.com/kinpira/items/505bccacb2fba89c0ff0)

[Sphinxの使い方．docstringを読み込んで仕様書を生成 - Qiita](https://qiita.com/futakuchi0117/items/4d3997c1ca1323259844)

## インストール
```
pip install sphinx
```

## プロジェクト作成
```
sphinx-quickstart docs

※ プロジェクト名とAutor以外
※ 全部エンター
```

## docs/conf.py
```
import os
import sys
sys.path.insert(0, os.path.abspath('../myapp'))

extensions = ['sphinx.ext.autodoc', 'sphinx.ext.napoleon'
]
```

## コンパイル方法

```bash
# ソースからdoc(rst)を作成
sphinx-apidoc -f -o ./docs ./app

# rstからHTMLを作成
sphinx-build -b singlehtml ./docs ./docs/_build
```

## sphinx_rtd_themeを使う
sphinx_rtd_themeをインストール
```
pip install sphinx_rtd_theme
```
conf.pyを開いて，html_themeを修正
```
html_theme = 'sphinx_rtd_theme'
```

## UML図を描けるようにしておく

[ブロック図生成ツール blockdiag — blockdiag 1.0 ドキュメント](http://blockdiag.com/ja/index.html)

ブロック図生成ツール blockdiag
シーケンス図生成ツール seqdiag
アクティビティ図生成ツール actdiag
ネットワーク図生成ツール nwdiag


```
ブロック図生成ツール blockdiag
pip install sphinxcontrib-blockdiag 
シーケンス図生成ツール seqdiag
pip install sphinxcontrib-seqdiag
ネットワーク図生成ツール nwdiag
pip install sphinxcontrib-nwdiag
アクティビティ図生成ツール actdiag
pip install sphinxcontrib-actdiag 
```

conf.py
```
extensions = [
    'sphinxcontrib.blockdiag',
    'sphinxcontrib.seqdiag',
    'sphinxcontrib.actdiag',
    'sphinxcontrib.nwdiag',
    'sphinxcontrib.rackdiag',
    'sphinxcontrib.packetdiag',
]

blockdiag_html_image_format = 'SVG'
seqdiag_html_image_format = 'SVG'
actdiag_html_image_format = 'SVG'
nwdiag_html_image_format = 'SVG'
rackiag_html_image_format = 'SVG'
packetdiag_html_image_format = 'SVG'
```


.. blockdiag::

    blockdiag {
       A -> B -> C;
       A -> E -> F;
    }

blockdiag {
   A -> B -> C;
   A -> E -> F;
}