**1. Створити змінні базових (atomic) типів. Базові типи: character, numeric, integer, complex, logical.**

```{r}
val1 <- "a"
val1 <- 0.5
val1 <- 1L
val1 <- 1+1i
val1 <- TRUE
```

**2. Створити вектори, які: містить послідовність з 5 до 75; містить числа 3.14, 2.71, 0, 13; 100 значень TRUE.**

```{r}
vec1 <- c(5:75)
vec2 <- c(3.14, 2.71, 0, 13)
vec3 <- rep(TRUE, 100)
```

**3. Створити наступну матрицю за допомогою matrix, та за допомогою cbind або rbind**

```{r}
val <- matrix(c(0.5, 3.9, 0, 1.3, 131, 2.2, 3.5, 2.8, 4.6), nrow=3, ncol=3)
val <- rbind(val, c(2, 7, 5.1))
print(val)
```

**4. Створити довільний список (list), в який включити всі базові типи.**

```{r}
val <- list("a", 0.5, 1L, 1+1i, TRUE)
```

**5. Створити фактор з трьома рівнями «baby», «child», «adult».**

```{r}
val <- factor(c("baby", "child", "adult", "adult", "child", "baby"), levels=c("baby", "child", "adult"))
print(val)
```

**6. Знайти індекс першого значення NA в векторі 1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11. Знайти кількість значень NA.**

```{r}
val <- c(1, 2, 3, 4, NA, 6, 7, NA, 9, NA, 11)
print(match(NA, val))
print(sum(is.na(val)))
```

**7. Створити довільний data frame та вивести в консоль.**

```{r}
val <- data.frame(kingdom=c("Animals", "Plants", "Fungi"), species=c("cat", "chamomile", "mushroom"))
print(val)
```

**8. Змінити імена стовпців цього data frame.**

```{r}
names(val) <- c("Kingdom", "Species")
print(val)
```

