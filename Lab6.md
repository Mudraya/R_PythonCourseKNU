
 **1. Створити матрицю mat з 5 стовпцями та 10 строками за допомогою matrix з випадковими даними (функція rnorm(50)).**
```{r}
mat <- matrix(rnorm(50), nrow=10, ncol=5)
```

```
            [,1]        [,2]        [,3]        [,4]        [,5]
 [1,] -0.3216291  0.44814207 -1.42923606  0.44789024  0.45271220
 [2,] -2.5488796 -0.26562099 -0.95017464  0.74313515  0.06827702
 [3,] -0.8032641 -0.02726769 -0.14097605 -0.54179716 -2.52988939
 [4,]  0.8373979  0.34410980 -0.23189799 -0.40576534  0.22960349
 [5,] -1.3871692  1.09212416 -2.66412919 -0.10943882 -1.53019459
 [6,] -1.4481626  0.08607867  0.01345101  0.52169361 -0.24104782
 [7,] -1.5460136  0.21561550 -1.38731475  0.08726743 -1.40299193
 [8,] -1.0379311 -0.18782972 -0.82477057 -0.33494013 -1.67748639
 [9,] -2.0118548 -0.27280929  1.71626821 -0.30803799  0.86416548
[10,] -0.4772234  1.38133099  0.65968791  0.61099116  0.61517002
```

**2. Знайти максимальне значення в кожному стовпці.**
```{r}
apply(mat, 2, max)
```

```
[1] 0.8373979 1.3813310 1.7162682 0.7431351 0.8641655
```

**3. Знайти середнє (mean) значення кожного стовпця.**
```{r}
apply(mat, 2, mean)
```

```
[1] -1.07447296  0.28138735 -0.52390921  0.07109981 -0.51516819
```

**4. Знайти мінімальне значення в кожному рядку.**
```{r}
apply(mat, 1, min)
```

```
 [1] -1.4292361 -2.5488796 -2.5298894 -0.4057653 -2.6641292 -1.4481626 -1.5460136 -1.6774864 -2.0118548 -0.4772234
```

**5. Відсортувати кожен стовбець таблиці.**
```{r}
apply(mat, 2, sort)
```

```
            [,1]        [,2]        [,3]        [,4]        [,5]
 [1,] -2.5488796 -0.27280929 -2.66412919 -0.54179716 -2.52988939
 [2,] -2.0118548 -0.26562099 -1.42923606 -0.40576534 -1.67748639
 [3,] -1.5460136 -0.18782972 -1.38731475 -0.33494013 -1.53019459
 [4,] -1.4481626 -0.02726769 -0.95017464 -0.30803799 -1.40299193
 [5,] -1.3871692  0.08607867 -0.82477057 -0.10943882 -0.24104782
 [6,] -1.0379311  0.21561550 -0.23189799  0.08726743  0.06827702
 [7,] -0.8032641  0.34410980 -0.14097605  0.44789024  0.22960349
 [8,] -0.4772234  0.44814207  0.01345101  0.52169361  0.45271220
 [9,] -0.3216291  1.09212416  0.65968791  0.61099116  0.61517002
[10,]  0.8373979  1.38133099  1.71626821  0.74313515  0.86416548
```

**6. Знайти кількість значень < 0 для кожного стовпця. Використати свою функцію.**
```{r}
apply(mat, 2, function(col) sum(col<0))
```

```
[1] 9 4 7 5 5
```

**7. Вивести вектор з булевими значеннями TRUE та FALSE. TRUE, якщо в стовпці є елементи >2, FALSE – якщо немає.**
```{r}
apply(mat, 2, function(col) max(col)>2)
```

```
[1] FALSE FALSE FALSE FALSE FALSE
```

**8. Створить список list1 <- list(observationA = c(1:5, 7:3), observationB = matrix(1:6, nrow=2)). Для цього списку знайдіть sum за допомогою lapply.**
```{r}
list1 <- list(observationA=c(1:5, 7:3), observationB=matrix(1:6, nrow=2))
lapply(list1, sum)
```

```
$observationA
[1] 40

$observationB
[1] 21
```

**9. Для кожного елементу списку list1 знайдіть максимальне та мінімальне значення (range) за допомогою lapply та sapply.**
```{r}
lapply(list1, max)
sapply(list1, max)
lapply(list1, min)
sapply(list1, min)
```

```
> lapply(list1, max)
$observationA
[1] 7

$observationB
[1] 6

> sapply(list1, max)
observationA observationB 
           7            6 
> lapply(list1, min)
$observationA
[1] 1

$observationB
[1] 1

> sapply(list1, min)
observationA observationB 
           1            1 
```

**10.Для вбудованого набору даних InsectSprays знайти середнє count для кожного spray.**
```{r}
lapply(split(InsectSprays$count, InsectSprays$spray), mean)
```

```
$A
[1] 14.5

$B
[1] 15.33333

$C
[1] 2.083333

$D
[1] 4.916667

$E
[1] 3.5

$F
[1] 16.66667
```