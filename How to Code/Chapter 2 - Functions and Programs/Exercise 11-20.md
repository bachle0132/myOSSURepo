![image](https://user-images.githubusercontent.com/94638717/173209420-60d9faa5-3d3e-4ba6-9695-83cdea97933c.png)
```
;; same as Exercise 1
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209453-bc8bd716-a2af-4cd0-94fc-0b0616ba3234.png)
```
(define (cvolume a)
  (* a a a))

(define (csurface a)
  (* 8 (sqr a)))

(cvolume 2) ; 8
(csurface 2) ; 32
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209521-25688847-704c-406b-a110-edba8b187533.png)

```
(define (string-first str)
  (substring str 0 1))

(string-first "
hello world") ; "\n"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209657-ef547a8d-83f7-42e6-bf45-9023a2a86d37.png)
```
(define (string-first str)
  (substring str (- (string-length str) 1) (string-length str)))

(string-first "
hello world") ; "d"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209681-8e5a2a6a-9908-4574-bf21-4c06dc22c1fe.png)
```
(define (==> sunny friday)
  (or (not sunny) friday))

;(define sunny #t)
;(define friday #t)
;(==> sunny friday) ; #true

(define sunny #t)
(define friday #f)
(==> sunny friday) ; #false
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209783-493f80ba-7144-41bf-92b2-f73a0e0357fb.png)
```
(require 2htdp/image)

(define cat cat.image)

(define (num-of-pixels image)
  (string-append "Area = "
                 (number->string (* (image-width image) (image-height image)))
                 " pixels"))

(num-of-pixels cat) ; "Area = 8775 pixels"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209807-c1d94d63-d991-4640-894b-7ec1870b4613.png)
```
(require 2htdp/image)

(define cat cat.image)

(define (tall-or-wide image)
  (if (= (image-width image) (image-height image)) "square"
      (if (> (image-width image) (image-height image)) "wide" "tall")))

(tall-or-wide cat) ; "tall"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209816-e89fbdcb-0d5d-4450-9c98-7b2b45cdd2bf.png)
```
(define (string-join str1 str2)
  (string-append str1 "_" str2))

(string-join "hello" "world") ; "hello_world"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173209826-be1f68a7-ff10-48f6-9aa4-607482bbb144.png)
```
(define (string-insert str i)
  (string-append (substring str 0 i) "_" (substring str i (string-length str))))

(string-insert "helloworld" 5) ; "hello_world"
;; when str == "", the only value for i is 0 and the result is "_"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173210122-b68db8c0-975e-4c1b-bc31-d56bc983db97.png)
```
(define (string-delete str i)
  (string-append (substring str 0 i) (substring str (+ i 1) (string-length str))))

(string-delete "helloworld" 4); "hellworld"
;; string-delete cann't handle empty strings
```
