**1. Функція add2(x, y), яка повертає суму двох чисел.**
```{r}
add2 <- function(x, y) {
  return(x+y)
}
add2(1, 2)
```

**2. Функція above(x, n), яка приймає вектор та число n, та повертає всі елементи вектору, які більше n. По замовчуванню n = 10.**
```{r}
above <- function(x, n=10) {
  return(x[x>n])
}
above(c(1:20), 3)
```

**3. Функція my_ifelse(x, exp, n), яка приймає вектор x, порівнює всі його елементи за допомогою exp з n, та повертає елементи вектору, які відповідають умові expression. Наприклад, my_ifelse(x, “>”, 0) повертає всі елементи x, які більші 0. Exp може дорівнювати “<”, “>”, “<=”, “>=”, “==”. Якщо exp не співпадає ні з одним з цих виразів, повертається вектор x.**
```{r}
my_ifelse <- function(x, exp, n) {
  if (!is.element(exp, c("<", ">", "<=", ">=", "=="))) {
    return(x)
  } else {
    str <- paste("x[x", exp, "n]")
    return(eval(parse(text=str)))
    } 
    # parse - str -> exp
    # eval - evaluates an exp
}
my_ifelse(c(-5:5), ">=", -1)
my_ifelse(c(-5:5), "!", -1)
```


**4. Функція columnmean(x, removeNA), яка розраховує середнє значення (mean) по кожному стовпцю матриці, або data frame. Логічний параметр removeNA вказує, чи видаляти NA значення. По замовчуванню він дорівнює TRUE.**
```{r}
columnmean <- function(x, removeNA) {
  for(i in 1:ncol(x))
  {
    print(mean(x[,i], na.rm=removeNA))
  }
}
df <- data.frame(a=(1:5), b=(5:9))
columnmean(df, FALSE)
matr <- matrix(c(3:5, NA), nrow=2, ncol=2)
columnmean(matr, TRUE)
```