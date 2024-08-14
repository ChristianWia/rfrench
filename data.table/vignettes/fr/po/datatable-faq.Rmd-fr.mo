��          T      �       �   �   �   \   �  �   �  �   d  a   �  a  R  �   �  �   �  \   J  �   �  �   +  a   �  ^                                          #===== r, echo = FALSE, message = FALSE
library(data.table)
knitr::opts_chunk$set(
  comment = "#",
    error = FALSE,
     tidy = FALSE,
    cache = FALSE,
 collapse = TRUE)
.old.th = setDTthreads(1)
 A = data.frame(A = 1:4, B = letters[11:14], C = pi*1:4)
rownames(A) = letters[1:4]
A
B
A[B]
 DT = data.table(a = rep(1:3, 1:3), b = 1:6, c = 7:12)
DT
DT[ , { mySD = copy(.SD)
      mySD[1, b := 99L]
      mySD},
    by = a]
 DT[ , {
  cat("Objects:", paste(objects(), collapse = ","), "\n")
  cat("Trace: x=", as.character(x), " y=", y, "\n")
  sum(y)},
  by = x]
 rownames(A) = letters[1:4]
colnames(A) = LETTERS[1:3]
A
B = cbind(c("a", "c"), c("B", "C"))
A[B]
 title: "Frequently Asked Questions about data.table"
date: "`r Sys.Date()`"
output:
  markdown::html_format:
    options:
      toc: true
      number_sections: true
    meta:
      css: [default, css/toc.css]
vignette: >
  %\VignetteIndexEntry{Frequently Asked Questions about data.table}
  %\VignetteEngine{knitr::knitr}
  \usepackage[utf8]{inputenc}
 Project-Id-Version: 
PO-Revision-Date: 
Last-Translator: 
Language-Team: 
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 3.4.4
 #===== r, echo = FALSE, message = FALSE
library(data.table)
knitr::opts_chunk$set(
  comment = "#",
    error = FALSE,
     tidy = FALSE,
    cache = FALSE,
 collapse = TRUE)
.old.th = setDTthreads(1)
 A = data.frame(A = 1:4, B = letters[11:14], C = pi*1:4)
rownames(A) = letters[1:4]
A
B
A[B]
 DT = data.table(a = rep(1:3, 1:3), b = 1:6, c = 7:12)
DT
DT[ , { mySD = copy(.SD)
      mySD[1, b := 99L]
      mySD},
    by = a]
 DT[ , {
  cat("Objets :", paste(objects(), collapse = ","), "\n")
  cat("Trace : x=", as.character(x), " y=", y, "\n")
  sum(y)},
  by = x]
 rownames(A) = letters[1:4]
colnames(A) = LETTERS[1:3]
A
B = cbind(c("a", "c"), c("B", "C"))
A[B]
 title : "Foire aux questions sur data.table"
date : "`r Sys.Date()`"
output :
  markdown::html_format :
    options :
      toc : true
      number_sections : true
    meta :
      css : [default, ../css/toc.css]
vignette : >
  %\VignetteIndexEntry{Foire aux questions sur data.table}
  %\VignetteEngine{knitr::knitr}
  \N-usepackage[utf8]{inputenc}
 