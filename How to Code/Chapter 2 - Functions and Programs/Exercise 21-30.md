![image](https://user-images.githubusercontent.com/94638717/173210273-afaa2f01-723a-4f01-8038-8d44c495fad3.png)
```
;; yes
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173210310-d72fa934-fcc2-413a-8325-e331d162bfd4.png)
```
;; yes
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173210351-5e2ed493-0a0b-44c2-9a52-70ed2b65a6a1.png)
```
;; Step 1. (substring "hello world" 0 1)
;; Step 2. "h"
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173210396-e3438782-b07a-404e-815d-18c18f418e1b.png)
```
;; Step 1. (or (not #true) #false)
;; Step 2. (or #false #false)
;; Step 3. #false
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173210447-69bb92fc-24eb-480c-9262-1f248cacdaa1.png)
```
;; yes. We could immediately see that the image was evaluated to #true in the "tall" case
;; This resulted in the program not evaluating other conditions
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173210558-54d0b22f-fe0a-4a1b-9fe2-92d0545bf9f0.png)
```
;; "helloworld"
;;  0123456789 
;; The result was "hellow_orld"
```
<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173237734-f6b24590-c1a1-463c-9ab1-b44758daabb0.png)
![image](https://user-images.githubusercontent.com/94638717/173237698-2e02a76d-7793-492d-83a8-495eb828da1e.png)
![image](https://user-images.githubusercontent.com/94638717/173237710-fc60a0b0-47be-44e6-ab23-8b409ea2e418.png)
```
(define ticket-price 5)

;; constants
(define base-attendance 120)
(define base-price 5)
(define price-change 0.1)
(define attendance-change 15)
(define fixed-cost 180)
(define variable-cost 0.04)

(define (attendees ticket-price)
  (- base-attendance (* (- ticket-price base-price) (/ attendance-change price-change))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (+ fixed-cost (* variable-cost (attendees ticket-price))))

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(attendees ticket-price) ; 120
(revenue ticket-price) ; 600
(cost ticket-price) ; 184.8
(profit ticket-price) ; 415.2
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173238014-ce44d64b-d9ab-4724-b72f-b8af8dbdb4ec.png)
```
;; constants
(define base-attendance 120)
(define base-price 5)
(define price-change 0.1)
(define attendance-change 15)
(define fixed-cost 180)
(define variable-cost 0.04)

(define (profit price)
  (- (* (+ base-attendance
           (* (/ attendance-change price-change)
              (- base-price price)))
        price)
     (+ fixed-cost
        (* variable-cost
           (+ base-attendance
              (* (/ attendance-change price-change)
                 (- base-price price)))))))


(profit 5) ; 415.2
(profit 4) ; 889.2
(profit 3) ; 1063.2
(profit 2) ; 937.2
(profit 1) ; 511.2

;; the best price is $2.90/ticket with a profit of $1,064.10
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173239253-f60dfd0d-d409-4c62-ab0b-9f10da6e69f9.png)
```
;; constants
(define base-attendance 120)
(define base-price 5)
(define price-change 0.1)
(define attendance-change 15)
(define fixed-cost 180)
(define variable-cost 0.04)

(define (attendees ticket-price)
  (- base-attendance (* (- ticket-price base-price) (/ attendance-change price-change))))

(define (revenue ticket-price)
  (* ticket-price (attendees ticket-price)))

(define (cost ticket-price)
  (* variable-cost (attendees ticket-price)))

(define (profit ticket-price)
  (- (revenue ticket-price) (cost ticket-price)))

(profit 3) ; 1243.2
(profit 4) ; 1069.2
(profit 5) ; 595.2
```

<br/><br/>![image](https://user-images.githubusercontent.com/94638717/173239736-f2776849-29af-4bb8-b4ef-bc814528ed3a.png)
```
(define PRICE-SENSITIVITY (/ attendance-change price-change))
```
