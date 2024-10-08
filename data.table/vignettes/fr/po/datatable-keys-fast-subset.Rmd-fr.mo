��    �      �  �   �
      �  ;   �  ,   �  L   
  ?   W  U   �  �   �  +   �  W   �  E   ;  r   �  <   �  ;   1  K   m  V   �  d     �   u  K   �  J   C  m   �  |   �  Z   y     �     �  #   �  .         I  a   j  �   �  �   �  Q   a  U   �  h   	  �   r  0     -  E  A   s  e   �  0       L  �   ]  �   �  �   �  �   E  ,  =   m   j!  t   �!  W  M"  �   �#  h   *$  �   �$  �   .%  �   �%  E   �&    �&  (  �'  {   !)  �   �)  �   c*  d   :+  h   �+  D   ,  :   M,  f   �,  N   �,  �   >-  h   �-  �   ).  �   �.  �   �/  �   0  ~   �0  �   @1  M   �1  n   2  ?   �2  R   �2  ;   3  �   Y3  .   *4  �   Y4  /   5  ]   55  $  �5  �   �6     p7  �   �7  �   8  
   �8  (   �8     �8  C   �8  �   89  S   �9  4   :  �   N:  �   �:  �   �;  �   y<  �   a=     5>  _   O>     �>  ?  �>  #  �?  +    A  /   LA  �  |A  '   'C  &   OC  6   vC  �   �C  |   ZD     �D  �   �D  �   �E  o  IF  {   �G  {   5H  T   �H     I     "I  C   7I  t   {I  �   �I  s   �J  �   (K  �   �K  V   nL     �L  P   �L  h   -M  c   �M  �   �M  �   �N  (   �O     �O     P     P  \  3P  H   �Q     �Q  *   �Q     R  A   *R     lR     �R  .   �R     �R  =   �R     *S  T   IS  )   �S     �S  :   �S  )   T  I   GT  9   �T  "   �T  O   �T  �   >U     �U  Z   �U  4   2V     gV     vV  �   wW  K   -X  �   yX  �   %Y  +   �Y  �   �Y  �   �Z     �[  �   �[  I   �\  +   �\  N   ]  ?   V]  U   �]  �   �]  +   �^  \   �^  _   ?_  �   �_  M   '`  T   u`  S   �`  t   a  q   �a  �   b  `   �b  ^   c  �   zc  �   d  �   �d     5e     Oe  &   Xe  3   e  *   �e  s   �e    Rf    ^g  h   vh  _   �h  �   ?i  �   �i  ?   �j  P  �j  g   ,l  n   �l  D   m  G  Hm  �   �n    Po  �   ]p  ,  :q  �  gr  �   �s  �   �t  �  u  �   �v  �   w  �   x  �   �x  �   �y  U   xz  ^  �z  L  -|  �   z}  �   ~  �   �~  i   �  g   ]�  U   ŀ  D   �  x   `�  Y   ف  �   3�  �   ׂ  �   k�  �   6�  �   �  �   ƅ  �   ��  �   ?�  A   ��  �   8�  j   Ј  j   ;�  G   ��  �   �  :   �  �   '�  6   �  h   9�  �  ��    '�     ;�  �   Z�  �   �  
   ��  (   ��     �  S   ��  �   M�  O   ��  L   K�  �   ��  �   g�     $�  P  %�  '  v�      ��  �   ��     P�  �  ]�  �  �  1   ֛  -   �  3  6�  4   j�  E   ��  F   �  �   ,�  �   #�     ɠ  �   Ҡ    ��  �  ��  �   ��  �   �  e   ��  !   �     ;�  �   [�  �   �    o�  �   }�  �   !�  �   ҩ  c   ��     	�  [   !�  `   }�  c   ޫ  �   B�  �   '�  2   �     M�     d�     y�  �  ��  H   R�     ��  ?   ��     �  }    �  #   ~�     ��  @   ��     �  @   �     \�  Q   {�  )   Ͳ     ��  :   �  )   L�  I   v�  9   ��  "   ��  i   �  �   ��     8�  \   F�  4   ��     ص     �  �   �  K   ��  �   �  �   ��  +   R�  �   ~�  5  +�     a�                   c   *       #      ]   �   �              2       3              B       `   5   �       \   0      �   7   �   �                  f   �   �       |               �   8       r       d   �               I       �   h       '       %   :   b   m   �   o            -   U   V       �   g       �   H       	      Z   A   l   a   O   !       C   e   �   v   �   n   �   E   Q   
   p   �      6   k      M   ,   P   �   z   w   �       }       +   )   =   �   _      ?      �   x              ^   s         �   �               �   (       q   W   [   @   i   .   �   ~       �   $   9       ;   "   t   �   /      &   N           �       j       1   T   �   �             X          >   �             �       K   R       �       F   �   <   �       Y               �   �   {   y       �   u       �   S   G      �      �       D   J   �      L           4         �   �       �       �    # get all 'hours' in flights
flights[, sort(unique(hour))]
 #===== r echo = FALSE
options(width = 100L)
 #===== r eval = FALSE
# key by origin,dest columns
flights[.("JFK", "MIA")]
 #===== r eval = FALSE
flights[origin == "JFK" & dest == "MIA"]
 #===== r eval = FALSE
setkey(flights, NULL)
flights[origin == "JFK" & dest == "MIA"]
 #===== r, echo = FALSE, message = FALSE
require(data.table)
knitr::opts_chunk$set(
  comment = "#",
    error = FALSE,
     tidy = FALSE,
    cache = FALSE,
 collapse = TRUE)
.old.th = setDTthreads(1)
 #===== r, echo=FALSE
setDTthreads(.old.th)
 -- Find the maximum arrival delay corresponding to `origin = "LGA"` and `dest = "TPA"`. -- From the previous example, Subset all rows only if there's a match -- Get the maximum departure delay for each `month` corresponding to `origin = "JFK"`. Order the result by `month` -- How can I set keys on both `origin` *and* `dest` columns? -- How can we get the column(s) a *data.table* is keyed by? -- How can we set the column `origin` as key in the *data.table* `flights`? -- On the result obtained above, use chaining to order the column in decreasing order. -- Return `arr_delay` column as a *data.table* corresponding to `origin = "LGA"` and `dest = "TPA"`. -- Subset all rows using key columns where first key column `origin` matches *"JFK"* and second key column `dest` matches *"MIA"* -- Subset all rows where just the first key column `origin` matches *"JFK"* -- Subset all rows where just the second key column `dest` matches *"MIA"* -- Subset only the first matching row from all rows where `origin` matches *"JFK"* and `dest` matches *"MIA"* -- Subset only the last matching row of all the rows where `origin` matches *"LGA", "JFK", "EWR"* and `dest` matches *"XNA"* -- Use the key column `origin` to subset all rows where the origin airport matches *"JFK"* 1, 5, 10, 19, 22, 23, 30
 1. Keys 2. Combining keys with `j` and `by` 3. Additional arguments - `mult` and `nomatch` 4. binary search vs vector scans =====* *"MIA"* is automatically recycled to fit the length of `unique(origin)` which is *3*.===== =====* *data.tables* never uses row names. Since *data.tables* **inherit** from *data.frames*, it still has the row names attribute. But it never uses them. We'll see in a moment as to why.===== =====* Alternatively you can pass a character vector of column names to the function `setkeyv()`. This is particularly useful while designing functions to pass columns to set key on as function arguments.===== =====* And on that subset, we group by *month* and compute `max(dep_delay)`.===== =====* And on those row indices, we replace the `key` column with the value `0`.===== =====* Default value for `nomatch` is `NA`. Setting `nomatch = NULL` skips queries with no matches.===== =====* Element wise `&` operations are performed on the intermediate logical vectors and all the rows where the expression evaluates to `TRUE` are returned.===== =====* If no key is set, it returns `NULL`.===== =====* It is important to understand how this works internally. *"JFK"* is first matched against the first key column `origin`. And *within those matching rows*, *"MIA"* is matched against the second key column `dest` to obtain *row indices* where both `origin` and `dest` match the given values.===== =====* It returns a character vector of all the key columns.===== =====* It sorts the *data.table* first by the column `origin` and then by `dest` *by reference*.===== =====* Note that row names have been reset.===== =====* Note that we did not have to assign the result back to a variable. This is because like the `:=` function we saw in the *"Reference semantics"* vignette, `setkey()` and `setkeyv()` modify the input *data.table* *by reference*. They return the result invisibly.===== =====* Now we can subset on `hour` by using the `.()` notation. We subset for the value *24* and obtain the corresponding *row indices*.===== =====* On single column key of *character* type, you can drop the `.()` notation and use the values directly when subsetting, like subset using row names on *data.frames*.===== =====* Once again, the query for second key column `dest`, *"XNA"*, is recycled to fit the length of the query for first key column `origin`, which is of length 3.===== =====* Once we have the row indices, we look at `j` which requires only the `arr_delay` column. So we simply select the column `arr_delay` for those *row indices* in the exact same way as we have seen in *Introduction to data.table* vignette.===== =====* Once we obtain the row indices, we only need two columns - `month` to group by and `dep_delay` to obtain `max()` for each group. *data.table's* query optimisation therefore subsets just those two columns corresponding to the *row indices* obtained in `i`, for speed and memory efficiency.===== =====* Our set is now reduced to *1, 5, 10*. Grab the middle value once again = 5. Is 1 == 5? No. 1 < 5.===== =====* Our set is reduced to *1*. Is 1 == 1? Yes. The corresponding index is also 1. And that's the only match.===== =====* Read [this](#multiple-key-point) again. The value provided for the second key column *"MIA"* has to find the matching values in `dest` key column *on the matching rows provided by the first key column `origin`*. We can not skip the values of key columns *before*. Therefore, we provide *all* unique values from key column `origin`.===== =====* Similarly, the column `y` is searched for `877` on all 20 million rows one by one, and stored in another logical vector.===== =====* Since no `j` is provided, we simply return *all columns* corresponding to those row indices.===== =====* Since the value we're looking for is smaller than 19, it should be somewhere before 19. So we can discard the rest of the half that are >= 19.===== =====* Since we did not provide any values for the second key column `dest`, it just matches *"JFK"* against the first key column `origin` and returns all the matched rows.===== =====* Since we have replaced values on the *key* column, the *data.table* `flights` isn't sorted by `hour` anymore. Therefore, the key has been automatically removed by setting to NULL.===== =====* Start with the middle value = 19. Is 1 == 19? No. 1 < 19.===== =====* The *data.table* is now reordered (or sorted) by the column we provided - `origin`. Since we reorder by reference, we only require additional memory of one column of length equal to the number of rows in the *data.table*, and is therefore very memory efficient.===== =====* The *key* column has already been set to `origin`. So it is sufficient to provide the value, here *"JFK"*, directly. The `.()` syntax helps identify that the task requires looking up the value *"JFK"* in the key column of *data.table* (here column `origin` of `flights` *data.table*).===== =====* The *row indices* corresponding to `origin == "LGA"` and `dest == "TPA"` are obtained using *key based subset*.===== =====* The *row indices* corresponding to the value *"JFK"* in `origin` is obtained first. And since there is no expression in `j`, all columns corresponding to those row indices are returned.===== =====* The column `x` is searched for the value *"g"* row by row, on all 20 million of them. This results in a *logical vector* of size 20 million, with values `TRUE, FALSE or NA` corresponding to `x`'s value.===== =====* The query *"JFK", "XNA"* doesn't match any rows in `flights` and therefore returns `NA`.===== =====* The query “JFK”, “XNA” doesn’t match any rows in flights and therefore is skipped.===== =====* The speed-up is **~`r round(t1[3]/max(t2[3], .001))`x**!===== =====* We can subset any amount of values as required===== =====* We can verify that the result is identical to first value (486) from the previous example.===== =====* We could have returned the result by using `with = FALSE` as well.===== =====* We first set `key` to `hour`. This reorders `flights` by the column `hour` and marks that column as the `key` column.===== =====* We subset on the `key` column *origin* to obtain the *row indices* corresponding to *"JFK"*.===== =====* We use `keyby` to automatically key that result by *month*. Now we understand what that means. In addition to ordering, it also sets *month* as the `key` column.===== =====* You can also set keys directly when creating *data.tables* using the `data.table()` function using `key` argument. It takes a character vector of column names.===== =====* You can use the function `setkey()` and provide the column names (without quoting them). This is helpful during interactive use.===== =====* and finally conclude by looking at the advantage of setting keys - perform *fast binary search based subsets* and compare with the traditional vector scan approach.===== =====* combine key based subsets with `j` and `by`. Note that the `j` and `by` operations are exactly the same as before.===== =====* first introduce the concept of `key` in *data.table*, and set and use keys to perform *fast binary search* based subsets in `i`,===== =====* look at other additional useful arguments - `mult` and `nomatch`,===== =====* see that we can combine key based subsets along with `j` and `by` in the exact same way as before,===== =====* set key and subset using the key on a *data.table*.===== =====* subset using keys which fetches *row indices* in `i`, but much faster.===== =====1. Each row is limited to *exactly one* row name.===== =====1. We can set keys on *multiple columns* and the column can be of *different types* -- *integer*, *numeric*, *character*, *factor*, *integer64* etc. *list* and *complex* types are not supported yet.===== =====2. And row names should be *unique*.===== =====2. Uniqueness is not enforced, i.e., duplicate key values are allowed. Since rows are sorted by key, any duplicates in the key columns will appear consecutively.===== =====3. Setting a `key` does *two* things:===== A vector scan approach on the other hand would have to scan through all the values (here, 7). All we have seen so far is the same concept -- obtaining *row indices* in `i`, but just using a different method -- using `keys`. It shouldn't be surprising that we can do exactly the same things in `j` and `by` as seen from the previous vignettes. We will highlight this with a few examples. As the time goes `data.table` gets new optimization and currently the latter call is automatically optimized to use *binary search*. To use slow *vector scan* key needs to be removed. Binary search approach But first, let's start by looking at *data.frames*. All *data.frames* have a row names attribute. Consider the *data.frame* `DF` below. But, a person (for example) has at least two names - a *first* and a *second* name. It is useful to organise a telephone directory by *surname* then *first name*.
 DF["C", ]
 DT = as.data.table(DF)
DT

rownames(DT)
 Data {#data} For the rest of the vignette, we will work with `flights` data set. From what we have seen in the Introduction to data.table section, we can subset those rows where columns `x = "g"` and `y = 877` as follows: Here's a very simple illustration. Let's consider the (sorted) numbers shown below: How does the subset work here? {#multiple-key-point} If you would like to preserve the row names, use `keep.rownames = TRUE` in `as.data.table()` - this will create a new column called `rn` and assign row names to this column.
 In *data.table*, the `:=` operator and all the `set*` (e.g., `setkey`, `setorder`, `setnames` etc.) functions are the only ones which modify the input object *by reference*. In addition, since we obtain the matching row indices directly without having to create those huge logical vectors (equal to the number of rows in a *data.table*), it is quite **memory efficient** as well. In the *"Introduction to data.table"* vignette, we saw how to subset rows in `i` using logical expressions, row numbers and using `order()`. In this section, we will look at another way of subsetting incredibly fast - using *keys*. In this vignette, we have learnt another method to subset rows in `i` by keying a *data.table*. Setting keys allows us to perform blazing fast subsets by using *binary search*. In particular, we have seen how to In this vignette, we will Instead, in *data.tables* we set and use `keys`. Think of a `key` as **supercharged rownames**. Introduction It can be seen that with every search we reduce the number of searches by half. This is why *binary search* based subsets are **incredibly fast**. Since rows of each column of *data.tables* have contiguous locations in memory, the operations are performed in a very cache efficient manner (also contributes to *speed*). Key based subsets are **incredibly fast** and are particularly useful when the task involves *repeated subsetting*. But it may not be always desirable to set key and physically reorder the *data.table*. In the next vignette, we will address this using a *new* feature -- *secondary indexes*. Keys and their properties {#key-properties} Let's set the key back to `origin, dest` first. Now let us look at binary search approach (method 2). Recall from [Properties of key](#key-properties) - *setting keys reorders the data.table by key columns*. Since the data is sorted, we don't have to *scan through the entire length of the column*! We can instead use *binary search* to search a value in `O(log n)` as opposed to `O(n)` in case of *vector scan approach*, where `n` is the number of rows in the *data.table*. Now let's convert it to a *data.table*. Now let's try to subset by using keys. Now, there shouldn't be any *24* in the `hour` column. Once you *key* a *data.table* by certain columns, you can subset by querying those key columns using the `.()` notation in `i`. Recall that `.()` is an *alias to* `list()`. One advantage very likely is shorter syntax. But even more than that, *binary search based subsets* are **incredibly fast**. Summary Suppose we'd like to find the matching position of the value *1*, using binary search, this is how we would proceed - because we know that the data is *sorted*. This is what we call a *vector scan approach*. And this is quite inefficient, especially on larger tables and when one needs repeated subsetting, because it has to scan through all the rows each time. This vignette is aimed at those who are already familiar with *data.table* syntax, its general form, how to subset rows in `i`, select and compute on columns, add/modify/delete columns *by reference* in `j` and group by using `by`. If you're not familiar with these concepts, please read the *"Introduction to data.table"* and *"Reference semantics"* vignettes first. To illustrate, let's create a sample *data.table* with 20 million rows and three columns and key it by columns `x` and `y`. To refresh, *keys* are like *supercharged* row names. We can set key on multiple columns and they can be of multiple types. To understand that, let's first look at what *vector scan approach* (method 1) does. Using the function `key()`. Vector scan approach We can *subset* a particular row using its row name as shown below: We can choose if queries that do not match should return `NA` or be skipped altogether using the `nomatch` argument. We can choose, for each query, if *"all"* the matching rows should be returned, or just the *"first"* or *"last"* using the `mult` argument. The default value is *"all"* - what we've seen so far. We have seen so far how we can set and use keys to subset. But what's the advantage? For example, instead of doing: We have seen this example already in the *Reference semantics* vignette. Let's take a look at all the `hours` available in the `flights` *data.table*: We see that there are totally `25` unique values in the data. Both *0* and *24* hours seem to be present. Let's go ahead and replace *24* with *0*, but this time using *key*. We will use the same `flights` data as in the *"Introduction to data.table"* vignette. What's happening here? `DT` is ~380MB. It is not really huge, but this will do to illustrate the point. ```{chunk_with_args}
#===== r eval = FALSE
flights["JFK"]              ## same as flights[.("JFK")]
```
 ```{chunk_with_args}
#===== r eval = FALSE
flights[.("LGA", "TPA"), "arr_delay", with = FALSE]
```
 ```{chunk_with_args}
#===== r eval = FALSE
flights[c("JFK", "LGA")]    ## same as flights[.(c("JFK", "LGA"))]
```

This returns all columns corresponding to those rows where `origin` column matches either *"JFK"* or *"LGA"*.
 ```{chunk_with_args}
#===== r eval = FALSE
rownames(DF) = sample(LETTERS[1:5], 10, TRUE)
# Warning: non-unique values when setting 'row.names': 'C', 'D'
# Error in `.rowNamesDF<-`(x, value = value): duplicate 'row.names' are not allowed
```
 a) Performance of binary search approach a) Select in `j` a) The *mult* argument a) What is a *key*? a. physically reorders the rows of the *data.table* by the column(s) provided *by reference*, always in *increasing* order.

b. marks those columns as *key* columns by setting an attribute called `sorted` to the *data.table*.

Since the rows are reordered, a *data.table* can have at most one key because it can not be sorted in more than one way.
 ans <- flights["JFK", max(dep_delay), keyby = month]
head(ans)
key(ans)
 b) Chaining b) Set, get and use keys on a *data.table* b) The *nomatch* argument b) Why does keying a *data.table* result in blazing fast subsets? c) Compute or *do* in `j` c) Keys and multiple columns d) *sub-assign* by reference using `:=` in `j` e) Aggregation using `by` flights <- fread("flights14.csv")
head(flights)
dim(flights)
 flights[, sort(unique(hour))]
 flights[.("JFK")]

## alternatively
# flights[J("JFK")] (or)
# flights[list("JFK")]
 flights[.("JFK", "MIA"), mult = "first"]
 flights[.("JFK", "MIA")]
 flights[.("LGA", "TPA"), .(arr_delay)][order(-arr_delay)]
 flights[.("LGA", "TPA"), max(arr_delay)]
 flights[.(c("LGA", "JFK", "EWR"), "XNA"), mult = "last", nomatch = NULL]
 flights[.(c("LGA", "JFK", "EWR"), "XNA"), mult = "last"]
 flights[.(unique(origin), "MIA")]
 i.e., row names are more or less *an index* to rows of a *data.frame*. However, key(DT)
## (1) Usual way of subsetting - vector scan approach
t1 <- system.time(ans1 <- DT[x == "g" & y == 877L])
t1
head(ans1)
dim(ans1)
 key(flights)
 key(flights)

flights[.("JFK")] ## or in this case simply flights["JFK"], for convenience
 key(flights)
flights[.("LGA", "TPA"), .(arr_delay)]
 set* and `:=`: set.seed(1L)
DF = data.frame(ID1 = sample(letters[1:2], 10, TRUE),
                ID2 = sample(1:3, 10, TRUE),
                val = sample(10),
                stringsAsFactors = FALSE,
                row.names = sample(LETTERS[1:10]))
DF

rownames(DF)
 set.seed(2L)
N = 2e7L
DT = data.table(x = sample(letters, N, TRUE),
                y = sample(1000L, N, TRUE),
                val = runif(N))
print(object.size(DT), units = "Mb")
 setkey(flights, hour)
key(flights)
flights[.(24), hour := 0L]
key(flights)
 setkey(flights, origin)
head(flights)

## alternatively we can provide character vectors to the function 'setkeyv()'
# setkeyv(flights, "origin") # useful to program with
 setkey(flights, origin, dest)
head(flights)

## or alternatively
# setkeyv(flights, c("origin", "dest")) # provide a character vector of column names

key(flights)
 setkey(flights, origin, dest)
key(flights)
 setkeyv(DT, c("x", "y"))
key(DT)
## (2) Subsetting using keys
t2 <- system.time(ans2 <- DT[.("g", 877L)])
t2
head(ans2)
dim(ans2)

identical(ans1$val, ans2$val)
 title: "Keys and fast binary search based subset"
date: "`r Sys.Date()`"
output:
  markdown::html_format
vignette: >
  %\VignetteIndexEntry{Keys and fast binary search based subset}
  %\VignetteEngine{knitr::knitr}
  \usepackage[utf8]{inputenc}
 we could have done: Project-Id-Version: 
PO-Revision-Date: 
Last-Translator: Elise Maigné <elise.maigne@inrae.fr>
Language-Team: 
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 3.5
 # récupère toutes les 'hours' de flights
flights[, sort(unique(hour))]
 #===== r echo = FALSE
options(with = 100L)
 #===== r eval = FALSE
# clé par origin,dest columns
flights[.("JFK", "MIA")]
 #===== r eval = FALSE
flights[origin == "JFK" & dest == "MIA"]
 #===== r eval = FALSE
setkey(flights, NULL)
flights[origin == "JFK" & dest == "MIA"]
 #===== r, echo = FALSE, message = FALSE
require(data.table)
knitr::opts_chunk$set(
  comment = "#",
    error = FALSE,
     tidy = FALSE,
    cache = FALSE,
 collapse = TRUE)
.old.th = setDTthreads(1)
 #===== r, echo=FALSE
setDTthreads(.old.th)
 -- Trouvez le retard d'arrivée maximal correspondant à `origin = "LGA"` et `dest = "TPA"`. -- D'après l'exemple précédent, extraire toutes les lignes uniquement si elles correspondent -- Obtenir le retard maximum de départ pour chaque mois (`month`) correspondant à `origin = "JFK"`. Classer les résultats par `mois` -- Comment puis-je définir des clés sur les colonnes `origin` *et* `dest` ? -- Comment obtenir la (les) colonne(s) d'une *data.table* définie(s) par une clé ? -- Comment définir la colonne `origin` comme clé dans la *data.table* `flights` ? -- Sur la base du résultat obtenu ci-dessus, utilisez le chaînage pour trier la colonne dans l'ordre décroissant. -- Renvoie la colonne `arr_delay` sous forme de *data.table* correspondant à `origin = "LGA"` et `dest = "TPA"`. -- Extraire toutes les lignes en utilisant les colonnes définies comme clés où la première clé `origin` correspond à *"JFK"* et la deuxième clé `dest` correspond à *"MIA"* -- Extraire toutes les lignes où seule la première colonne clé `origin` correspond à *"JFK"* -- Extraire toutes les lignes où seule la deuxième colonne clé `dest` correspond à *"MIA"* -- Extraire uniquement la première ligne correspondante parmi toutes les lignes où `origin` correspond à *"JFK"* et `dest` correspond à *"MIA"* -- Extraire uniquement la dernière ligne correspondante parmi toutes les lignes où `origin` correspond à *"LGA", "JFK", "EWR"* et `dest` correspond à *"XNA"* -- Utilisez la colonne `origin` définie comme clé pour extraire toutes les lignes dont l'aéroport d'origine correspond à *"JFK"* 1, 5, 10, 19, 22, 23, 30
 1. Clés 2. Combiner les clés avec `j` et `by` 3. Arguments supplémentaires - `mult` et `nomatch` 4. recherche binaire vs balayage vectoriel =====* *"MIA"* est automatiquement recyclée pour s'adapter à la longueur de `unique(origin)` qui est de *3*.===== =====* Les *data.tables* n'utilisent jamais de noms de ligne. Puisque les *data.tables* **héritent** des *data.frames*, ils possèdent toujours l'attribut des noms de lignes (`row names`). Mais ils ne les utilisent jamais. Nous verrons dans un instant pourquoi.===== =====* Alternativement, vous pouvez passer un vecteur de caractères contenant les noms de colonnes à la fonction `setkeyv()`. Cela est particulièrement utile lors de la conception de fonctions pour passer des colonnes à définir comme clé via des arguments de fonction.===== =====* Et sur ce sous-ensemble, nous regroupons par *mois* (*month*) et calculons `max(dep_delay)`.===== =====* Et sur ces indices de lignes, nous remplaçons la colonne `clé` par la valeur `0`.===== =====* La valeur par défaut de `nomatch` est `NA`. En définissant `nomatch = NULL`, on ignore les requêtes qui n'ont pas de correspondance.===== =====* Ensuite, une opération élément par élément `&` est effectuée sur les vecteurs logiques intermédiaires et toutes les lignes où l'expression est évaluée à `TRUE` sont renvoyées.===== =====* Si aucune clé n'est définie, elle renvoie `NULL`.===== =====* Il est important de comprendre comment cela fonctionne en interne. *"JFK"* est d'abord comparé à la première colonne clé `origin`. Et *dans ces lignes correspondantes*, *"MIA"* est comparé à la deuxième colonne clé `dest` pour obtenir des *indices de ligne* où `origin` et `dest` correspondent aux valeurs données.===== =====* Elle renvoie un vecteur de caractères contenant toutes les colonnes définies comme clés.===== =====* Cela trie la *data.table* d'abord par la colonne `origin` et ensuite par `dest` *par référence*.===== =====* Notez que les noms des lignes ont été réinitialisés.===== =====* Notez que nous n'avons pas eu besoin d'assigner le résultat à une variable. C'est parce que, comme la fonction `:=` que nous avons vue dans la vignette *"Sémantique de référence"*, `setkey()` et `setkeyv()` modifient l'entrée *data.table* *par référence*. Elles renvoient le résultat de manière invisible.===== =====* Nous pouvons maintenant faire un sous-ensemble sur `hour` en utilisant la notation `.()`. Nous extrayons les valeurs pour *24* et obtenons les *indices des lignes* correspondants.===== =====* Pour une clé sur une seule colonne de type *caractère*, vous pouvez omettre la notation `.()` et utiliser les valeurs directement lors de l'extraction du sous-ensemble, comme si vous faisiez un sous-ensemble avec les noms de lignes dans un *data.frames*.===== =====* Encore une fois, la requête pour la deuxième colonne clé `dest`, *"XNA"*, est réutilisée pour correspondre à la longueur de la requête pour la première colonne clé `origin`, qui est de longueur de 3.===== =====* Une fois que nous avons les indices des lignes, nous examinons `j` qui ne nécessite que la colonne `arr_delay`. Nous sélectionnons donc simplement la colonne `arr_delay` pour ces *indices de lignes* de la même manière que nous l'avons vu dans la vignette *Introduction à data.table*.===== =====* Une fois que nous avons obtenu les indices des lignes, nous n'avons besoin que de deux colonnes - `month` pour grouper et `dep_delay` pour obtenir `max()` pour chaque groupe. L'optimisation des requêtes de *data.table* permet d'extraire un sous-ensemble juste à partir de ces deux colonnes, correspondant aux *indices de lignes* obtenus dans `i`, pour la rapidité et l'efficacité mémoire.===== =====* Notre ensemble est maintenant réduit à *1, 5, 10*. Prenons à nouveau la valeur centrale = 5. Est-ce que 1 == 5 ? Non. 1 < 5.===== =====* Notre ensemble est réduit à *1*. Est-ce que 1 == 1 ? Oui. L'indice correspondant est également 1. Et c'est la seule correspondance.===== =====* Relisez bien [ceci](#multiple-key-point). La valeur fournie pour la deuxième colonne clé *"MIA"* doit trouver les valeurs correspondantes dans la colonne clé `dest` *parmi les lignes correspondantes fournies par la première colonne clé `origin`*. Nous ne pouvons pas ignorer les valeurs des colonnes clés *précédentes*. Par conséquent, nous fournissons *toutes* les valeurs uniques de la colonne clé `origin`.===== =====* De même, la colonne `y` est parcourue pour rechercher la valeur `877` parmi les 20 millions de lignes, et les résultats sont stockés dans un autre vecteur logique.===== =====* Étant donné qu'il n'y a pas d'expression dans `j`, nous renvoyons simplement *toutes les colonnes* correspondant à ces indices de ligne.===== =====* Comme la valeur recherchée est plus petite que 19, elle doit se trouver quelque part avant 19. Nous pouvons donc écarter le reste de la moitié qui est >= 19.===== =====* Puisque nous n'avons pas fourni de valeurs pour la deuxième colonne clé `dest`, il fait simplement correspondre *"JFK"* à la première colonne clé `origin` et renvoie toutes les lignes correspondantes.===== =====* Comme nous avons remplacé les valeurs de la colonne *clé*, le *data.table* `flights` n'est plus triée par `hour`. Par conséquent, la clé a été automatiquement supprimée en la définissant sur NULL.===== =====* Commencez par la valeur du milieu = 19. Est-ce que 1 == 19 ? Non. 1 < 19.===== =====* La *data.table* est maintenant réordonnée (ou triée) par la colonne que nous avons fournie - `origin`. Comme nous réorganisons par référence, nous n'avons besoin que de la mémoire supplémentaire d'une colonne dont la longueur est égale au nombre de lignes de la *data.table*, ce qui est donc très efficace en termes de mémoire.===== =====* La `clé` a déjà été définie sur la colonne `origin`. Il suffit donc de fournir la valeur, ici *"JFK"*, directement. La syntaxe `.()` permet d'identifier que la tâche nécessite de rechercher la valeur *"JFK"* dans la colonne définie comme clé de *data.table* (ici la colonne `origin` du *data.table* `flights`).===== =====* Les *indices de ligne* correspondant à `origin == "LGA"` et `dest == "TPA"` sont obtenus à l'aide d'un *sous-ensemble basé sur une clé*.===== =====* Les *indices de ligne* correspondant à la valeur *"JFK"* dans `origin` sont obtenus en premier. Et comme il n'y a pas d'expression dans `j`, toutes les colonnes correspondant à ces indices de ligne sont renvoyées.===== =====* La colonne `x` est parcourue ligne par ligne pour rechercher la valeur *"g"* parmi les 20 millions de lignes. Cela produit un *vecteur logique* de taille 20 millions, avec les valeurs `TRUE, FALSE ou NA` correspondant à la valeur de `x`.===== =====* La requête *"JFK", "XNA"* ne correspond à aucune ligne dans `flights` et renvoie donc `NA`.===== =====* La requête "JFK", "XNA" ne correspond à aucune ligne dans `flights` et est donc ignorée.===== =====* Le gain de vitesse est d'envrion **~`r round(t1[3]/max(t2[3], .001))`x**!===== =====* Nous pouvons extraire autant de valeurs que nécessaire ===== =====* Nous pouvons vérifier que le résultat est identique à la première valeur (486) de l'exemple précédent.===== =====* Nous aurions également pu renvoyer le résultat en utilisant `with = FALSE`.===== =====* Nous définissons d'abord la clé (`key`) sur `hour`. Cela réorganise `flights` en fonction de la colonne `hour` et marque cette colonne comme `clé`.===== =====* Nous extrayons un sous-ensemble à partir de la colonne `clé` *origin* pour obtenir les *indices des lignes* correspondant à *"JFK"*.===== =====* Nous utilisons `keyby` pour définir automatiquement cette clé par *mois*. Nous comprenons maintenant ce que cela signifie. En plus de l'ordre, cela définit *month* comme la colonne `key`.===== =====* Vous pouvez également définir les clés directement lors de la création de *data.tables* en utilisant la fonction `data.table()` avec l'argument `key`. Elle prend un vecteur de caractères de noms de colonnes.===== =====* Vous pouvez utiliser la fonction `setkey()` et fournir les noms des colonnes (sans les entourer de guillemets). Ceci est utile lors d'une utilisation interactive.===== =====* et enfin conclure en examinant l'avantage de définir des clés - extraire des *sous-ensembles basés sur la recherche binaire rapide* et comparer avec l'approche traditionnelle du balayage vectoriel.===== =====* combiner les sous-ensembles basés sur les clés avec `j` et `by`. Notez que les opérations `j` et `by` sont exactement les mêmes que précédemment.===== =====* introduire le concept de `clé` dans une *data.table*, définir et utiliser des clés pour extraire des sous-ensembles basés sur une *recherche binaire rapide* dans `i`,===== =====* voir d'autres arguments utiles - `mult` et `nomatch`,===== =====* voir que nous pouvons combiner des sous-ensembles basés sur les clés avec `j` et `by` exactement de la même manière que précédemment,===== =====* définir une clé et utiliser cette clé pour créer des sous-ensembles dans une *data.table*.===== =====* utiliser les clés pour obtenir des *indices de lignes* en `i`, mais beaucoup plus rapidement.===== =====1. Chaque ligne est limitée à *exactement* un nom de ligne.===== =====1. Nous pouvons définir des clés sur *plusieurs colonnes* et les colonnes peuvent être de *différents types* -- *entier*, *numérique*, *caractère*, *facteur*, *entier64* etc. Les types *liste* et *complexe* ne sont pas encore supportés.===== =====2. Et les noms de ligne doivent être *uniques*.===== =====2. L'unicité n'est pas requise, c'est-à-dire que les valeurs de clé dupliquées sont autorisées. Les lignes étant triées par clé, tout doublon dans les colonnes de la clé apparaîtra consécutivement.===== =====3. Définir une `clé` fait *deux* choses : ===== Avec une approche de balayage vectoriel, nous aurions dû parcourir toutes les valeurs (ici, 7 valeurs). Tout ce que nous avons vu jusqu'à présent repose sur le même concept -- obtenir les *indices de lignes* dans `i`, mais en utilisant une méthode différente -- en utilisant des `clés`. Il n'est donc pas surprenant que nous puissions faire exactement les mêmes opérations pour `j` et `by`, comme vu dans les vignettes précédentes. Nous allons illustrer cela avec quelques exemples. Au fil du temps, `data.table` bénéficie de nouvelles optimisations et actuellement, obtenir un sous-ensemble basé sur cette méthode applique automatiquement la *recherche binaire*. Afin d'utiliser la méthode lente par *balayage vectoriel*, la clé doit être supprimée. Approche par recherche binaire Mais tout d'abord, commençons par examiner les *data.frames*. Tous les *data.frames* ont un attribut de noms de lignes (row names). Considérons le *data.frame* `DF` ci-dessous. Mais une personne (par exemple) a au moins deux noms - un *prénom* et un *second* nom. Il est utile d'organiser un annuaire téléphonique par *nom* puis *prénom*.
 DF["C", ]
 DT = as.data.table(DF)
DT

rownames(DT)
 Données {#data} Pour le reste de la vignette, nous travaillerons avec le jeu de données `flights`. D'après ce que nous avons vu dans la section Introduction à data.table, nous pouvons faire un sous-ensemble des lignes où les colonnes `x = "g"` et `y = 877` comme suit : Prenons un exemple très simple. Considérons les nombres (triés) ci-dessous : Comment l'extraction du sous-ensemble fonctionne ici ? {#multiple-key-point} Si vous souhaitez conserver les noms des lignes, utilisez `keep.rownames = TRUE` dans `as.data.table()` - cela créera une nouvelle colonne appelée `rn` et attribuera les noms des lignes à cette colonne.
 Dans *data.table*, l'opérateur `:=` et toutes les fonctions `set*` (par exemple, `setkey`, `setorder`, `setnames`, etc.) sont les seules qui modifient l'objet d'entrée *par référence*. De plus, comme nous obtenons directement les indices des lignes correspondantes sans avoir à créer ces énormes vecteurs logiques (égal au nombre de lignes d'un *data.table*), cette méthode est également très **très efficace en termes de mémoire**. Dans la vignette *"Introduction à data.table"*, nous avons vu comment sous-diviser des lignes dans `i` en utilisant des expressions logiques, des numéros de lignes et en utilisant `order()`. Dans cette section, nous allons voir une autre façon d'extraire des sous-ensembles de façon incroyablement rapide - en utilisant les *clés*. Dans cette vignette, nous avons appris une autre méthode pour subdiviser les lignes dans `i` en utilisant les clés d'une *data.table*. Définir des clés nous permet de créer des sous-ensembles extrêmement rapidement en utilisant la *recherche binaire*. En particulier, nous avons vu comment Dans cette vignette, nous allons Au lieu de cela, dans les *data.tables*, nous définissons et utilisons des `clés`. Pensez aux `clés` comme à des **"super" noms de lignes**. Introduction On peut constater qu'à chaque recherche, le nombre de recherches est réduit de moitié. C'est pourquoi la construction de sous-ensembles en utilisant la recherche binaire est **incroyablement rapide**. Étant donné que les lignes de chaque colonne des *data.tables* sont stockées de manière contiguë en mémoire, les opérations sont effectuées de manière très efficace en termes de cache (ce qui contribue également à la *vitesse*). La création de sous-ensembles basés sur les clés est **incroyablement rapide** et particulièrement utile lorsque la tâche implique de créer des *sous-ensembles de manière répété*. Cependant, il peut ne pas toujours être souhaitable de définir une clé et de réorganiser physiquement la *data.table*. Dans la prochaine vignette, nous aborderons ce problème en utilisant une *nouvelle* fonctionnalité -- les *indices secondaires*. Les clés et leurs propriétés {#key-properties} Remettons d'abord la clé sur `origin, dest`. Examinons maintenant l'approche de la recherche binaire (méthode 2). Rappelons que dans [Les clés et leurs propriétés](#key-properties) - *lorsque l’on définit des clés, cela réorganise la data.table selon les colonnes clés*. Étant donné que les données sont triées, nous n'avons pas besoin de *parcourir toute la longueur de la colonne* ! Nous pouvons utiliser *la recherche binaire* pour rechercher une valeur en `O(log n)` au lieu de `O(n)` dans le cas de *l'approche par balayage vectoriel*, où `n` est le nombre de lignes dans la *data.table*. Nous allons maintenant le convertir en *data.table*. Essayons maintenant de faire un sous-ensemble en utilisant des clés. Maintenant, Il ne devrait plus y avoir de *24* dans la colonne `hour`. Une fois que vous avez défini une *clé* pour une *data.table* par certaines colonnes, vous pouvez sous-sélectionner en interrogeant ces colonnes clés en utilisant la notation `.()` dans `i`. Rappelez-vous que `.()` est un *alias de* `list()`. Un avantage évident est d'avoir une syntaxe plus courte. Mais plus encore, *extraire des sous-ensembles basés par recherche binaire* est **incroyablement rapide**. Résumé Supposons que nous voulions trouver la position correspondant à la valeur *1*, en utilisant la recherche binaire. Voici comment nous procéderions -(en sachant que les données sont *triées*). C'est ce que nous appelons une *approche par balayage vectoriel*. Cette méthode est assez inefficace, en particulier pour les tableaux volumineux ou lorsque des sous-ensembles doivent être créés de manière répétée, car elle doit parcourir toutes les lignes à chaque fois. Cette vignette s'adresse à ceux qui sont déjà familiers avec la syntaxe de *data.table*, sa forme générale, comment extraire des sous-ensembles de lignes dans `i`, sélectionner et faire des opérations sur des colonnes, ajouter/modifier/supprimer des colonnes *par référence* dans `j` et grouper en utilisant `by`. Si vous n'êtes pas familier avec ces concepts, veuillez d'abord lire les vignettes *"Introduction à data.table"* et *"Sémantique de référence"*. Pour illustrer cela, créons un *data.table* avec 20 millions de lignes et trois colonnes, avec pour clés les colonnes `x` et `y`. Pour rappel, les clés sont comme des noms de lignes *surpuissants*. Nous pouvons définir des clés sur plusieurs colonnes, et elles peuvent être de types multiples. Pour comprendre cela, examinons d'abord ce que fait l'approche par *balayage vectoriel* (méthode 1). En utilisant la fonction `key()`. Approche par balayage vectoriel Nous pouvons récupérer un *sous-ensemble* composé d'une ligne particulière en utilisant son nom de ligne comme indiqué ci-dessous : Nous pouvons choisir si les requêtes qui ne correspondent pas doivent renvoyer `NA` ou être ignorées en utilisant l'argument `nomatch`. Nous pouvons choisir, pour chaque requête, si *"toutes"* les lignes correspondantes doivent être retournées, ou seulement la *"première"* ou la *"dernière"* en utilisant l'argument `mult`. La valeur par défaut est *"all"* - ce que nous avons vu jusqu'à présent. Nous avons vu jusqu'à présent comment définir et utiliser des clés pour extraire des sous-ensembles. Mais quel est l'avantage ? Par exemple, au lieu de faire : Nous avons déjà vu cet exemple dans la vignette *Sémantique de référence*. Jetons un coup d'œil à toutes les heures (`hour`) disponibles dans la *data.table* `flights` : Nous voyons qu'il y a au total `25` valeurs uniques dans les données. Les heures *0* et *24* semblent toutes les deux être présentes. Allons-y et remplaçons *24* par *0*, mais cette fois en utilisant *key*. Nous utiliserons les mêmes données `flights` que dans la vignette *"Introduction à data.table"*. Que se passe-t-il ici ? `DT` est de ~380Mo. Ce n'est pas vraiment énorme, mais suffisant pour illustrer le propos. ```{chunk_with_args}
#===== r eval = FALSE
flights["JFK"] ## identique à flights[.("JFK")]
```
 ```{chunk_with_args}
#===== r eval = FALSE
flights[.("LGA", "TPA"), "arr_delay", with = FALSE]
```
 ```{chunk_with_args}
#===== r eval = FALSE
flights[c("JFK", "LGA")] ## same as flights[.(c("JFK", "LGA"))]
```

Ceci renvoie toutes les colonnes correspondant aux lignes où la colonne `origin` correspond à *"JFK"* ou *"LGA"*.
 ```{chunk_with_args}
#===== r eval = FALSE
rownames(DF) = sample(LETTERS[1:5], 10, TRUE)

# Warning: non-unique values when setting 'row.names': 'C', 'D'
# Error in `.rowNamesDF<-`(x, value = value): duplicate 'row.names' are not allowed
```
 a) Performance de l'approche par recherche binaire b) Sélection dans `j` g) L'argument *mult* a) Qu'est-ce qu'une *clé* ? a. les lignes de la *data.table* sont réorganisées physiquement en fonction des colonnes fournies *par référence*, toujours dans un ordre *incrémentiel*.

b. ces colonnes sont marquées comme des colonnes de *clés* en définissant un attribut appelé `sorted` à *data.table*.

Puisque les lignes sont réordonnées, une *data.table* ne peut avoir qu'une seule clé car elle ne peut pas être triée de plusieurs façons simultanément.
 ans <- flights["JFK", max(dep_delay), keyby = month]
head(ans)
key(ans)
 b) Chaînage b) Définir, obtenir et utiliser des clés sur une *data.table* b) L'argument *nomatch* b)  Pourquoi le fait de définir une clé pour une *data.table* permet-il d'obtenir des sous-ensembles extrêmement rapides ? c) Calculer ou *exécuter* dans `j` c) Clés et colonnes multiples d) *sous-affectation* par référence en utilisant `:=` dans `j` e) Agrégation avec `by` flights <- fread("../flights14.csv")
head(flights)
dim(flights)
 flights[, sort(unique(hour))]
 flights[.("JFK")]

## ou alors :
# flights[J("JFK")] (ou)
# flights[list("JFK")]
 flights[.("JFK", "MIA"), mult = "first"]
 flights[.("JFK", "MIA")]
 flights[.("LGA", "TPA"), .(arr_delay)][order(-arr_delay)]
 flights[.("LGA", "TPA"), max(arr_delay)]
 flights[.(c("LGA", "JFK", "EWR"), "XNA"), mult = "last", nomatch = NULL]
 flights[.(c("LGA", "JFK", "EWR"), "XNA"), mult = "last"]
 flights[.(unique(origin), "MIA")]
 autrement dit, les noms de lignes sont plus ou moins *un indice* des lignes d'un *data.frame*. Cependant, key(DT)
## (1) Méthode habituelle pour extraire un sous-ensemble - approche par balayage vectoriel
t1 <- system.time(ans1 <- DT[x == "g" & y == 877L])
t1
head(ans1)
dim(ans1)
 key(flights)
 key(flights)

flights[.("JFK")] ## ou dans ce cas simplement flights["JFK"], par commodité
 key(flights)
flights[.("LGA", "TPA"), .(arr_delay)]
 set* et `:=` : set.seed(1L)
DF = data.frame(ID1 = sample(letters[1:2], 10, TRUE),
                ID2 = sample(1:3, 10, TRUE),
                val = sample(10),
                stringsAsFactors = FALSE,
                row.names = sample(LETTERS[1:10]))
DF

rownames(DF)
 set.seed(2L)
N = 2e7L
DT = data.table(x = sample(letters, N, TRUE),
                y = sample(1000L, N, TRUE),
                val = runif(N))
print(object.size(DT), units = "Mb")
 setkey(flights, hour)
key(flights)
flights[.(24), hour := 0L]
key(flights)
 setkey(flights, origin)
head(flights)

## nous pouvons aussi fournir des vecteurs de caractères à la fonction 'setkeyv()'
# setkeyv(flights, "origin") # utile pour la programmation
 setkey(flights, origin, dest)
head(flights)

## ou alors :
# setkeyv(flights, c("origin", "dest")) # fournir un vecteur de caractères pour les noms de colonnes

key(flights)
 setkey(flights, origin, dest)
key(flights)
 setkeyv(DT, c("x", "y"))
key(DT)
## (2) Sous-ensemble à l'aide de clés
t2 <- system.time(ans2 <- DT[.("g", 877L)])
t2
head(ans2)
dim(ans2)

identical(ans1$val, ans2$val)
 title: "Extraire des sous-ensemble avec les clés et la recherche binaire rapide"
date: "`r Sys.Date()`"
output:
  markdown::html_format
vignette: >
  %\VignetteIndexEntry{Extraire des sous-ensemble avec les clés et la recherche binaire rapide}
  %\VignetteEngine{knitr::knitr}
  \usepackage[utf8]{inputenc}
 nous aurions pu faire : 