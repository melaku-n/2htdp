;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ufo) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
(require 2htdp/universe)

; properties of the world
(define WIDTH 200)
(define HEIGHT 400)
(define V 3)
(define CNTR-X (/ WIDTH 2))
(define ROCK-WIDTH 20)
(define ROCK-HEIGHT 10)

; graphical constants
(define UFO (overlay (circle 10 "solid" "green")
                     (rectangle 40 4 "solid" "green")))
(define ROCK (rectangle ROCK-WIDTH ROCK-HEIGHT "solid" "grey"))
(define MTS (place-image ROCK
                         CNTR-X
                         (- HEIGHT (/ (image-height ROCK) 2))
                         (empty-scene WIDTH HEIGHT "blue")))
(define UFO-CENTER-TO-TOP
  (- HEIGHT (+ (/ (image-height UFO) 2) ROCK-HEIGHT)))

; functions
(define (distance t)
  (* V t))

(define (picture-of-ufo t)
  (if (< (distance t) UFO-CENTER-TO-TOP)
      (place-image UFO CNTR-X (distance t) MTS)
      (place-image UFO CNTR-X UFO-CENTER-TO-TOP MTS)))

(animate picture-of-ufo)
