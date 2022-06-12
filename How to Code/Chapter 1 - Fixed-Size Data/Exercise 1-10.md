![image](https://user-images.githubusercontent.com/94638717/173207441-e93fdd18-0de5-4f91-a319-d896114641c6.png)
```
(define (distance x y)
  (sqrt (+ (sqr x) (sqr y))))

(distance 12 5) ; 13
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173207416-27b4a8f5-2c9c-41e9-9f19-06f7e80cf1bf.png)
```
(define prefix "hello")
(define suffix "world")

(string-append prefix "_" suffix) ; "hello_world"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173207593-b1c23486-794f-4261-8220-2f7358ed116a.png)
```
(define str "helloworld")
(define i 5)

(string-append (substring str 0 i) "_" (substring str i (string-length str))) ; "hello_world"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173207820-00c3a968-b9f1-43c5-800a-354a252a06b0.png)
```
(define str "helloworld")
(define i 5)

(string-append (substring str 0 i) (substring str (+ i 1) (string-length str))) ; "helloorld"
;; i is between 0 and the last index (in this case, 9)
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173208159-afca1a2d-6cd6-44ae-baae-9593c6dbc51e.png)
```
(require 2htdp/image)

(define (tree scale)
  (above (triangle (* 20 scale) "solid" "green")
         (triangle (* 40 scale) "solid" "green")
         (triangle (* 60 scale) "solid" "green")
         (rectangle (* 10 scale) (* 30 scale) "solid" "green")))
(tree 1.2)
```
![image](https://user-images.githubusercontent.com/94638717/173208178-2852ee3a-ee65-4dfa-ab31-805bcc8ca647.png)

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173208198-d0fc3ec5-dd64-4232-88a7-3bb3504efffe.png)
```
(require 2htdp/image)

(define cat cat.image)

(* (image-width cat) (image-height cat)) ; 8775
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173208370-1a0672e1-4e5e-4c13-8beb-8393b729f7d8.png)
```
(define sunny #true)
(define friday #false)

(or (boolean=? sunny #f) (boolean=? friday #t)) ; #false
;; because "sunny is false?" returns #f and "friday is true?" also returns #f
;; the OR of two #false is also #false
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173208721-f85a2456-6275-437a-8806-1f230ed88624.png)

```
(require 2htdp/image)

(define cat cat.image)

(if (= (image-width cat) (image-height cat)) "square"
      (if (> (image-width cat) (image-height cat)) "wide" "tall")) ; "tall"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173208991-63c9a9f2-109c-401d-acca-3534236779b7.png)

```
(require 2htdp/image)

(define (in value)
  (cond
    [(string? value) (string-length value)]
    [(image? value) (* (image-width value) (image-height value))]
    [(number? value) (abs value)]
    [(boolean? value) (if (boolean=? value #t) 10 20)]))

(in "hello world") ; 11
(in cat.image) ; 8775
(in -1000) ; 1000
(in #t) ; 10
(in #f) ; 20
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209248-022c3ea3-aff1-466e-861c-f93be579ef27.png)
