��    _                   �   	  ,   �  �   �  +   �	  2   �	  �   �	  .   �
  I   �
  C   �
  K   A  N   �  F   �     #  (   8     a  1   z     �  A   �  �     Z   �  �   
  �   �  �   &  D   �  =     �   A  R   �  �   F  f   �  9   8  ]   r  �   �    g  b   n  A  �  �     �   �  �   j  �   F  )  �  B       U  �   c  �   �  _   �  V   �     A  �   F  �   �  �   �  �   M  �      �   �   u   �!  �   �!  f  �"  x    $     �$     �$     �$  &   �$  �   �$  �   �%  �   �&  @   Q'  �   �'  �   C(  �   )  �   �)  �   g*  z  +  �   ,  �   y-    .  �   /  h   �/  4   "0  Z  W0  �   �1  �   z2     3  )   -3     W3  *   k3  �   �3  @   S4  U   �4  ;   �4  B   &5  A   i5  �   �5  a  k6  K  �7  �   :  �   	;  �   �;  +   �<  �   �<  +   �=  2   �=  �   �=  B   {>  Q   �>  O   ?  K   `?  R   �?  Z   �?     Z@  8   x@     �@  3   �@  )   A  X   .A  �   �A  f   GB  �   �B  �   \C  �   �C  b   �D  H   �D  �   =E  j   F  �   rF  i   HG  8   �G  V   �G  �   BH  '  	I  o   1J  �  �J  �   7L  �   �L  �   �M  �   �N  j  �O  N   Q  #  lQ  �   �R  �   (S  _   �S  V   T     pT  �   yT  �   !U  �   V  �   �V  �   �W  ,  ^X  �   �Y  �   Z  �  �Z  �   �\      #]     D]  
   Q]  *   \]  �   �]    ~^  �   �_  ]   �`  �   �`    �a  �   �b  �   {c  �   ad  �  e  J  �f  �   1h  �  �h  �   gj  w   -k  J   �k  �  �k  �   �m  �   �n     >o  V   To     �o  =   �o  �    p  @   �p  U   q  ;   \q  B   �q  A   �q  �   r  d  �r  L  At    �v        [   P   H   0   %      _   U          6       3   
   "   +           8      ?       '   ^           W              T             K      $   I      7              Y      4       .           ;   !   ]      M   D          /          X   &   @   Z      J   A       :                G   2           #         \       B   V   O   E                 ,       C               R   <   )   F   S   -   5   (          =                     1   	   Q   >   L   *       9   N             ## new 'cast' functionality - multiple value.vars
DT.c2 = dcast(DT.m2, family_id + age_mother ~ variable, value.var = c("dob", "gender"))
DT.c2
 #===== r echo = FALSE
options(width = 100L)
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
 (two.iris = data.table(datasets::iris)[c(1,150)])
 (who <- data.table(id=1, new_sp_m5564=2, newrel_f65=3))
melt(who, measure.vars = measure(
  diagnosis, gender, ages, pattern="new_?(.*)_(.)(.*)"))
 - Casting multiple `value.var`s simultaneously - Convert `DT` to *long* form where each `dob` is a separate observation. - How can we get back to the original data table `DT` from `DT.m1`? - Name the `variable` and `value` columns to `child` and `dob` respectively - Starting from `DT.m1`, how can we get the number of children in each family? - Using `measure()` to specify `measure.vars` via separator or pattern - Using `patterns()` - `melt` multiple columns simultaneously 1. Default functionality 2. Limitations in current `melt/dcast` approaches 3. Enhanced (new) functionality =====* Attributes are preserved in result wherever possible.===== =====* By default, `variable` column is of type `factor`. Set `variable.factor` argument to `FALSE` if you'd like to return a *`character`* vector instead.===== =====* By default, the molten columns are automatically named `variable` and `value`.===== =====* By default, when one of `id.vars` or `measure.vars` is missing, the rest of the columns are *automatically assigned* to the missing argument.===== =====* Everything is taken care of internally, and efficiently. In addition to being fast, it is also very memory efficient.===== =====* The functionality is implemented entirely in C, and is therefore both *fast* and *memory efficient* in addition to being *straightforward*.===== =====* We can also specify column *indices* instead of *names*.===== =====* We can remove the `variable` column if necessary.===== =====* When neither `id.vars` nor `measure.vars` are specified, as mentioned under `?melt`, all *non*-`numeric`, `integer`, `logical` columns will be assigned to `id.vars`.===== =====* `dcast` also tries to preserve attributes in result wherever possible.===== =====* `dcast` uses *formula* interface. The variables on the *LHS* of formula represents the *id* vars and *RHS* the *measure* vars.===== =====* `measure.vars` specify the set of columns we would like to collapse (or combine) together.===== =====* `melt` preserves column attributes in result.===== =====* `value.var` denotes the column to be filled in with while casting to wide format.===== =====1. First briefly look at the default `melt`ing and `dcast`ing of `data.table`s to convert them from *wide* to *long* format and *vice versa*===== =====1. What we wanted to do was to combine all the `dob` and `gender` type columns together respectively. Instead, we are combining *everything* together, and then splitting them again. I think it's easy to see that it's quite roundabout (and inefficient).===== =====2. Look at scenarios where the current functionalities become cumbersome and inefficient===== =====2. The columns to `melt` may be of different types, as in this case (`character` and `integer` types). By `melt`ing them all together, the columns will be coerced in result, as explained by the warning message above and shown from output of `str(DT.c1)`, where `gender` has been converted to *`character`* type.===== =====3. Finally look at the new improvements to both `melt` and `dcast` methods for `data.table`s to handle multiple columns simultaneously.===== =====3. We are generating an additional column by splitting the `variable` column into two columns, whose purpose is quite cryptic. We do it because we need it for *casting* in the next step.===== =====4. Finally, we cast the data set. But the issue is it's a much more computationally involved operation than *melt*. Specifically, it requires computing the order of the variables in formula, and that's costly.===== And you'd like to combine (`melt`) all the `dob` columns together, and `gender` columns together. Using the current functionality, we can do something like this: As an analogy, imagine you've a closet with four shelves of clothes and you'd like to put together the clothes from shelves 1 and 2 together (in 1), and 3 and 4 together (in 3). What we are doing is more or less to combine all the clothes together, and then split them back on to shelves 1 and 3!
 Check `?dcast` for other useful arguments and additional examples. DT.m1 = melt(DT, id = c("family_id", "age_mother"))
DT.m1[, c("variable", "child") := tstrsplit(variable, "_", fixed = TRUE)]
DT.c1 = dcast(DT.m1, family_id + age_mother + child ~ variable, value.var = "value")
DT.c1

str(DT.c1) ## gender column is character type now!
 DT.m1 = melt(DT, id.vars = c("family_id", "age_mother"),
                measure.vars = c("dob_child1", "dob_child2", "dob_child3"))
DT.m1
str(DT.m1)
 DT.m1 = melt(DT, measure.vars = c("dob_child1", "dob_child2", "dob_child3"),
               variable.name = "child", value.name = "dob")
DT.m1
 DT.m2 = melt(DT, measure = patterns("^dob", "^gender"), value.name = c("dob", "gender"))
DT.m2
 DT.m3 = melt(DT, measure = measure(value.name, child=as.integer, sep="_child"))
DT.m3
 Data Finally we consider an example (borrowed from tidyr package) where we need to define the groups using a regular expression rather than a separator. Going back to the example of the data with families and children, we can see a more complex usage of `measure`, involving a function which is used to convert the `child` string values to integers: However, there are situations we might run into where the desired operation is not expressed in a straightforward manner. For example, consider the `data.table` shown below: If we use the current functionality of `dcast`, then we'd have to cast twice and bind the results together. But that's once again verbose, not straightforward and is also inefficient. If we want two value columns, one for each part, we can use the special `value.name` keyword, which means to output a value column for each unique name found in that group: If, as in the data above, the input columns to melt have regular names, then we can use `measure`, which allows specifying the columns to melt via a separator or a regex. For example consider the iris data, In addition, a warning message is issued highlighting the columns that are automatically considered to be `id.vars`.
 In fact, `stats::reshape` is capable of performing this operation in a very straightforward manner. It is an extremely useful and often underrated function. You should definitely give it a try! In the code above we used `sep="_child"` which results in melting only the columns which contain that string (six column names split into two groups each). The `child=as.integer` argument means the second group will result in an output column named `child` with values defined by plugging the character strings from that group into the function `as.integer`. In the previous section, we saw how to get from wide form to long form. Let's see the reverse operation in this section. In this vignette, we will Introduction Issues Multiple functions to `fun.aggregate`: Okay great! We can now melt into multiple columns simultaneously. Now given the data set `DT.m2` as shown above, how can we get back to the same format as the original data we started with? Since we'd like for `data.table`s to perform this operation straightforward and efficient using the same interface, we went ahead and implemented an *additional functionality*, where we can `melt` to multiple columns *simultaneously*. So far we've seen features of `melt` and `dcast` that are implemented efficiently for `data.table`s, using internal `data.table` machinery (*fast radix ordering*, *binary search* etc.). Suppose we have a `data.table` (artificial data) as shown below: That is, we'd like to collect all *child* observations corresponding to each `family_id, age_mother` together under the same row. We can accomplish it using `dcast` as follows: The `melt` and `dcast` functions for `data.table`s are for reshaping wide-to-long and long-to-wide, respectively; the implementations are specifically designed with large in-memory data (e.g. 10Gb) in mind. The extended functionalities are in line with `data.table`'s philosophy of performing operations efficiently and in a straightforward manner. The first two arguments to `measure` in the code above (`part` and `dim`) are used to name the output columns; the number of arguments must equal the max number of groups after splitting with `sep`. The idea is quite simple. We pass a list of columns to `measure.vars`, where each element of the list contains the columns that should be combined together. The iris data has four numeric columns with a regular structure: first the flower part, then a period, then the measurement dimension. To specify that we want to melt those four columns, we can use `measure` with `sep="."` which means to use `strsplit` on all column names; the columns which result in the maximum number of groups after splitting will be used as `measure.vars`: This vignette discusses the default usage of reshaping functions `melt` (wide to long) and `dcast` (long to wide) for *data.tables* as well as the **new extended functionalities** of melting and casting on *multiple columns* available from `v1.9.6`. Using the code above we get one value column per flower part. If we instead want a value column for each measurement dimension, we can do Usually in these problems, the columns we'd like to melt can be distinguished by a common pattern. We can use the function `patterns()`, implemented for convenience, to provide regular expressions for the columns to be combined together. The above operation can be rewritten as: We can now provide **multiple `value.var` columns** to `dcast` for `data.table`s directly so that the operations are taken care of internally and efficiently. We could accomplish this using `melt()` by specifying `id.vars` and `measure.vars` arguments as follows: We will load the data sets directly within sections. When using the `pattern` argument, it must be a Perl-compatible regular expression containing the same number of capture groups (parenthesized sub-expressions) as the number other arguments (group names). The code below shows how to use a more complex regex with five groups, two numeric output columns, and an anonymous type conversion function, You can also pass a function to aggregate by in `dcast` with the argument `fun.aggregate`. This is particularly essential when the formula provided does not identify single observation for each cell. You can also provide *multiple functions* to `fun.aggregate` to `dcast` for *data.tables*. Check the examples in `?dcast` which illustrates this functionality. a) Enhanced `melt` a) `melt`ing `data.table`s (wide to long) b) Enhanced `dcast` b) `dcast`ing `data.table`s (long to wide) colA = paste0("dob_child", 1:3)
colB = paste0("gender_child", 1:3)
DT.m2 = melt(DT, measure = list(colA, colB), value.name = c("dob", "gender"))
DT.m2

str(DT.m2) ## col type is preserved
 dcast(DT.m1, family_id + age_mother ~ child, value.var = "dob")
 dcast(DT.m1, family_id ~ ., fun.agg = function(x) sum(!is.na(x)), value.var = "dob")
 melt(two.iris, measure.vars = measure(part, dim, sep="."))
 melt(two.iris, measure.vars = measure(part, value.name, sep="."))
 melt(two.iris, measure.vars = measure(value.name, dim, sep="."))
 melt(who, measure.vars = measure(
  diagnosis, gender, ages,
  ymin=as.numeric,
  ymax=function(y) ifelse(nzchar(y), as.numeric(y), Inf),
  pattern="new_?(.*)_(.)(([0-9]{2})([0-9]{0,2}))"
))
 s1 <- "family_id age_mother dob_child1 dob_child2 dob_child3
1         30 1998-11-26 2000-01-29         NA
2         27 1996-06-22         NA         NA
3         26 2002-07-11 2004-04-05 2007-09-02
4         32 2004-10-10 2009-08-27 2012-07-21
5         29 2000-12-05 2005-02-28         NA"
DT <- fread(s1)
DT
## dob stands for date of birth.

str(DT)
 s2 <- "family_id age_mother dob_child1 dob_child2 dob_child3 gender_child1 gender_child2 gender_child3
1         30 1998-11-26 2000-01-29         NA             1             2            NA
2         27 1996-06-22         NA         NA             2            NA            NA
3         26 2002-07-11 2004-04-05 2007-09-02             2             2             1
4         32 2004-10-10 2009-08-27 2012-07-21             1             1             1
5         29 2000-12-05 2005-02-28         NA             2             1            NA"
DT <- fread(s2)
DT
## 1 = female, 2 = male
 title: "Efficient reshaping using data.tables"
date: "`r Sys.Date()`"
output:
  markdown::html_format
vignette: >
  %\VignetteIndexEntry{Efficient reshaping using data.tables}
  %\VignetteEngine{knitr::knitr}
  \usepackage[utf8]{inputenc}
 Project-Id-Version: 
PO-Revision-Date: 
Last-Translator: Elise Maigné <elise.maigne@inrae.fr>
Language-Team: 
Language: fr
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Generator: Poedit 3.5
 ## nouvelle fonctionnalité 'cast' - plusieurs value.vars
DT.c2 = dcast(DT.m2, family_id + age_mother ~ variable, value.var = c("dob", "gender"))
DT.c2
 #===== r echo = FALSE
options(with = 100L)
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
 (two.iris = data.table(datasets::iris)[c(1,150)])
 (who <- data.table(id=1, new_sp_m5564=2, newrel_f65=3))
melt(who, measure.vars = measure(
  diagnosis, gender, ages, pattern="new_?(.*)_(.)(.*)"))
 - Transformation (`cast`) de plusieurs `value.var`s simultanément - Convertir `DT` en format *long* où chaque `dob` est une observation séparée. - Comment revenir à la table de données originale `DT` à partir de `DT.m1` ? - Nommez les colonnes `variable` et `value` respectivement `child` et `dob` - En partant de `DT.m1`, comment obtenir le nombre d'enfants dans chaque famille ? - Utilisation de `measure()` pour spécifier `measure.vars` via un séparateur ou un motif - Utilisation de `patterns()` - Appliquer `melt` sur plusieurs colonnes simultanément 1. Fonctionnalité par défaut 2. Limitations des approches actuelles `melt/dcast` 3. (nouvelle) Fonctionnalité améliorée =====* Les attributs sont préservés dans le résultat dans la mesure du possible.===== =====* Par défaut, la colonne `variable` est de type `facteur`. Mettez l'argument `variable.factor` à `FALSE` si vous souhaitez retourner un vecteur de type *`caractère`* à la place.===== =====* Par défaut, les colonnes fusionnées sont automatiquement nommées `variable` et `value`.===== =====* Par défaut, lorsque l'une des variables `id.vars` ou `measure.vars` est manquante, les autres colonnes sont *automatiquement affectées* à l'argument manquant.===== =====* Tout est pris en charge de manière interne et efficace. En plus d'être rapide, il est également très économe en mémoire.===== =====* Cette fonctionnalité est entièrement implémentée en C, ce qui la rend à la fois *rapide* et *économe en mémoire* en plus d'être *simple à utiliser*.===== =====* Nous pouvons également spécifier les *indices* des colonnes au lieu de leurs *noms*.===== =====* Nous pouvons supprimer la colonne `variable` si nécessaire.===== =====* Lorsque ni `id.vars` ni `measure.vars` ne sont spécifiés, comme mentionné sous `?melt`, toutes les colonnes *non*-`numériques`, `intégrales`, `logiques` seront assignées à `id.vars`.===== =====* `dcast` essaie également de préserver les attributs du résultat dans la mesure du possible.===== =====* `dcast` utilise la notation *formule* ( *formula* ). Les variables du côté gauche (*LHS*) de la formule correspondent aux variables *id* et celles sur le côté droit (*RHS*) aux variables *measure*.===== =====* `measure.vars` spécifie l'ensemble des colonnes que nous souhaitons fusionner (ou combiner).===== =====* `melt` préserve les attributs des colonnes.===== =====* `value.var` indique la colonne à remplir lors du passage au format large.===== =====1. Examiner brievement l'utilisation par défaut des fonctions de transformation `melt` et `dcast` sur les data.tables pour les convertir du format *large* au format *long* et *vice versa*===== =====1. Ce que nous voulions faire était de combiner toutes les colonnes de type `dob` ensemble, et toutes les colonnes de type `gender` ensemble. Au lieu de cela, nous combinons tout, puis nous les scindons à nouveau. On voit aisément que c'est une approche détournée (et inefficace).===== =====2. Examiner des scénarios où les fonctionnalités actuelles deviennent fastidieuses et inefficaces.===== =====2. Les colonnes à transformer (`melt`) peuvent être de types différents, comme c'est le cas ici (types `character` et `integer`). En les transformant toutes ensemble avec `melt`, les colonnes seront forcées d'être du même type, comme l'explique le message d'avertissement ci-dessus, et on le voit dans la sortie de str(DT.c1), où la colonne `gender` a été convertie en type `character`.===== =====3. Enfin, explorer les nouvelles améliorations apportées aux méthodes `melt` et `dcast` pour les objets de type `data.table` afin de gérer plusieurs colonnes simultanément.===== =====3. Nous générons une colonne supplémentaire en scindant la colonne variable en deux colonnes, dont l'utilité est plutôt obscure. Nous faisons cela parce que nous en avons besoin pour la transformation (`cast`) dans l'étape suivante.===== =====4. Enfin, nous transformons le jeu de données. Mais le problème est qu'il s'agit d'une opération beaucoup plus coûteuse en calcul que *melt*. En particulier, il faut calculer l'ordre des variables dans la formule, ce qui est coûteux.===== Et vous aimeriez combiner (avec `melt`) toutes les colonnes `dob` ensemble, ainsi que toutes les colonnes `gender` ensemble. Avec la fonctionnalité actuelle, nous pouvons faire quelque chose comme ceci : Comme analogie, imaginez un placard avec quatre étagères de vêtements, et vous souhaitez rassembler les vêtements des étagères 1 et 2 (dans l'étagère 1), et ceux des étagères 3 et 4 (dans l'étagère 3). Ce que nous faisons, en quelque sorte, c'est de mélanger tous les vêtements ensemble, puis de les séparer à nouveau sur les étagères 1 et 3 !
 Voir `?dcast` pour d'autres arguments utiles et des exemples supplémentaires. DT.m1 = melt(DT, id = c("family_id", "age_mother"))
DT.m1[, c("variable", "child") := tstrsplit(variable, "_", fixed = TRUE)]
DT.c1 = dcast(DT.m1, family_id + age_mother + child ~ variable, value.var = "value")
DT.c1

str(DT.c1) ## la colonne 'gender' est un type de caractère maintenant !
 DT.m1 = melt(DT, id.vars = c("family_id", "age_mother"),
                measure.vars = c("dob_child1", "dob_child2", "dob_child3"))
DT.m1
str(DT.m1)

 DT.m1 = melt(DT, measure.vars = c("dob_child1", "dob_child2", "dob_child3"),
               variable.name = "child", value.name = "dob")
DT.m1

 DT.m2 = melt(DT, measure = patterns("^dob", "^gender"), value.name = c("dob", "gender"))
DT.m2
 DT.m3 = melt(DT, measure = measure(value.name, child=as.integer, sep="_child"))
DT.m3
 Données Enfin, nous considérons un exemple (emprunté au package tidyr) où nous devons définir les groupes à l'aide d'une expression régulière plutôt qu'un séparateur. En revenant à l'exemple des données sur les familles et les enfants, nous pouvons voir une utilisation plus complexe de `measure`, impliquant une fonction utilisée pour convertir les valeurs de la chaîne `child` en entiers : Cependant, il existe des situations où l'opération souhaitée ne s'exprime pas de manière simple. Par exemple, considérons l'objet `data.table` présenté ci-dessous : Si nous utilisons la fonctionnalité actuelle de `dcast`, nous devrions effectuer la transformation via `cast` deux fois et combiner les résultats. Mais c'est une fois de plus verbeux, compliqué et inefficace. Si nous voulons deux colonnes de valeurs, une pour chaque partie, nous pouvons utiliser le mot-clé spécial `value.name`, qui signifie produire une colonne de valeurs pour chaque nom unique trouvé dans ce groupe : Si, comme dans les données ci-dessus, les colonnes d'entrée à transformer (`melt `) ont des noms réguliers, alors nous pouvons utiliser `measure`, qui permet de spécifier les colonnes à transformer via un séparateur ou une expression régulière. Par exemple, considérons les données `iris`, De plus, un message d'avertissement est émis pour mettre en évidence les colonnes qui sont automatiquement considérées comme des `id.vars`.
 En fait, `stats::reshape` est capable d'effectuer cette opération de manière très simple. C'est une fonction extrêmement utile et souvent sous-estimée. Vous devriez vraiment l'essayer ! Dans le code ci-dessus, nous avons utilisé `sep="_child"`, ce qui entraîne la transformation des colonnes uniquement si elle contiennent cette chaîne (six noms de colonnes séparés en deux groupes chacun). L'argument `child=as.integer` signifie que le second groupe donnera lieu à une colonne de sortie nommée `child` avec des valeurs définies en appliquant la fonction `as.integer` aux chaînes de caractères de ce groupe. Dans la section précédente, nous avons vu comment passer de la forme large à la forme longue. Dans cette section, nous verrons l'opération inverse. Dans cette vignette, nous allons Introduction Problèmes Plusieurs fonctions pour `fun.aggregate` : Parfait ! Nous pouvons maintenant transformer (`melt`) plusieurs colonnes simultanément. Maintenant, étant donné le jeu de données `DT.m2`, comment pouvons-nous revenir au même format que le jeu de données avec lequel nous avons commencé ? Puisque nous aimerions que `data.table` effectue cette opération de façon simple et efficace en utilisant la même interface, nous avons donc implémenté une *fonctionnalité additionnelle*, où nous pouvons appliquer la fonction `melt` sur plusieurs colonnes *simultanément*. Jusqu'à présent, nous avons vu des fonctionnalités de `melt` et `dcast` qui sont implémentées efficacement pour les objets `data.table`, en utilisant la machinerie interne de `data.table` (*tri par base rapide*, *recherche binaire* etc...). Supposons que nous ayons un `data.table` (données artificielles) comme indiqué ci-dessous : En d'autres termes, nous aimerions collecter toutes les observations *enfants* correspondant à chaque `family_id, age_mother` dans la même ligne. Nous pouvons le faire en utilisant la fonction `dcast` comme suit : Les fonctions `melt` et `dcast` pour `data.table` sont respectivement utilisées pour la restructuration de large en long et de long en large des données ; les implémentations sont spécifiquement conçues pour gérer de grandes quantités de données en mémoire (par exemple 10Go). Les fonctionnalités étendues sont conformes à la philosophie de `data.table` qui consiste à effectuer des opérations de manière efficace et simple. Les deux premiers arguments de `measure` dans le code ci-dessus (`part` et `dim`) sont utilisés pour nommer les colonnes de sortie ; le nombre d'arguments doit être égal au nombre maximum de groupes après division avec `sep`. L'idée est assez simple. Nous passons une liste de colonnes à `measure.vars`, où chaque élément de la liste contient les colonnes qui doivent être combinées ensemble. Les données iris possèdent quatre colonnes numériques avec une structure régulière : d'abord la partie de la fleur, suivie d'un point, puis le type de mesure. Pour spécifier que nous voulons transformer (`melt`) ces quatre colonnes, nous pouvons utiliser `measure` avec `sep="."` ce qui signifie utiliser `strsplit` sur tous les noms de colonnes ; les colonnes qui résultent en un nombre maximum de groupes après division seront utilisées comme `measure.vars` : Cette vignette traite de l'utilisation par défaut des fonctions de transformation `melt` (du format large au long) et `dcast` (du format long à large) pour les *data.tables* ainsi que des **nouvelles fonctionnalités étendues** de transformation `melt` et `cast` sur *plusieurs colonnes* disponibles depuis la version `v1.9.6`. En utilisant le code ci-dessus, nous obtenons une colonne de valeurs par partie de fleur. Si nous voulons une colonne de valeurs pour chaque type de mesure, nous pouvons faire En général, dans ce type de problème, les colonnes que l'on souhaite transformer avec `melt` peuvent être distinguées par un motif commun. Nous pouvons utiliser la fonction `patterns()`, implémentée pour faciliter cette tâche, pour fournir des expressions régulières correspondant aux colonnes à combiner ensemble. L'opération ci-dessus peut alors être réécrite comme suit : Nous pouvons désormais fournir **plusieurs colonnes `value.var`** à `dcast` pour les objets `data.table` directement, de sorte que les opérations soient gérées en interne de manière efficace. Nous pouvons réaliser ceci en utilisant `melt()` en spécifiant les arguments `id.vars` et `measure.vars` comme suit : Nous chargerons les ensembles de données directement dans chaque section. Lorsque vous utilisez l'argument `pattern`, il doit s'agir d'une expression régulière compatible avec Perl contenant le même nombre de groupes de capture (sous-expressions entre parenthèses) que le nombre d'autres arguments (noms de groupes). Le code ci-dessous montre comment utiliser une expression régulière plus complexe avec cinq groupes, deux colonnes de sortie numériques et une fonction de conversion de type anonyme, Vous pouvez également passer une fonction d'agrégation dans `dcast` avec l'argument `fun.aggregate`. Ceci est particulièrement essentiel lorsque la formule fournie ne permet pas d'identifier une seule observation pour chaque cellule. Vous pouvez également *plusieurs fonctions* à `fun.aggregate` dans `dcast` pour les *data.tables*. Consultez les exemples dans `?dcast` qui illustrent cette fonctionnalité. a) `melt` améliorée a) Transformation (`melt`) des colonnes dans une `data.table` (format large vers long) b) `dcast` améliorée b) Transformation (`dcast`) des lignes (format long au large) colA = paste0("dob_child", 1:3)
colB = paste0("gender_child", 1:3)
DT.m2 = melt(DT, measure = list(colA, colB), value.name = c("dob", "gender"))
DT.m2

str(DT.m2) ## le type de col est préservé
 dcast(DT.m1, family_id + age_mother ~ child, value.var = "dob")
 dcast(DT.m1, family_id ~ ., fun.agg = function(x) sum(!is.na(x)), value.var = "dob")
 melt(two.iris, measure.vars = measure(part, dim, sep="."))
 melt(two.iris, measure.vars = measure(part, value.name, sep="."))
 melt(two.iris, measure.vars = measure(value.name, dim, sep="."))
 melt(who, measure.vars = measure(
  diagnosis, gender, age,
  ymin=as.numeric,
  ymax=function(y) ifelse(nzchar(y), as.numeric(y), Inf),
  pattern="new_?(.*)_(.)(([0-9]{2})([0-9]{0,2}))"
))
 s1 <- "family_id age_mother dob_child1 dob_child2 dob_child3
1         30 1998-11-26 2000-01-29         NA
2         27 1996-06-22         NA         NA
3         26 2002-07-11 2004-04-05 2007-09-02
4         32 2004-10-10 2009-08-27 2012-07-21
5         29 2000-12-05 2005-02-28         NA"
DT <- fread(s1)
DT

## dob signifie date de naissance.

str(DT)
 s2 <- "family_id age_mother dob_child1 dob_child2 dob_child3 gender_child1 gender_child2 gender_child3
1         30 1998-11-26 2000-01-29         NA             1             2            NA
2         27 1996-06-22         NA         NA             2            NA            NA
3         26 2002-07-11 2004-04-05 2007-09-02             2             2             1
4         32 2004-10-10 2009-08-27 2012-07-21             1             1             1
5         29 2000-12-05 2005-02-28         NA             2             1            NA"
DT <- fread(s2)
DT

## 1 = femme, 2 = homme
 title: "Restructurer efficacement avec les data.tables"
date: "`r Sys.Date()`"
output:
  markdown::html_format
vignette: >
  %\VignetteIndexEntry{Restructurer efficacement avec les data.tables}
  %\VignetteEngine{knitr::knitr}
  \usepackage[utf8]{inputenc}
 