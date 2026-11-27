;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |Exercise 5|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define SCALE .942)

(above (overlay/xy (triangle (* 50 SCALE) "solid" "green")
                   (* -10 SCALE) (* 10 SCALE)
                   (triangle (* 70 SCALE) "solid" "green"))
       (rectangle (* 8 SCALE) (* 30 SCALE) "solid" "brown"))
