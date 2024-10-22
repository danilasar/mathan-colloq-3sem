// Гладкая поверхность. Ориентация поверхности. Площадь поверхности.
/ Определение: *Гладкая поверхность* --- это простая поверхность, для которой выполняются три условия:
+ Поверхность простая: множество D является замкнутым ограниченным элементарнм множеством, граница $gamma$ которого представляет собой кусочно-гладкий контур, а отображение взаимно однозначно на множестве внутренних точек множества D и задаётся равенствами:
$ cases(x = x(u,v), y = y(u, v), z = z(u,v)) space (u,v) in D subset RR^2 $
2. Поверхность гладкая: Фунции $x, y, z$ и их частные производные первого порядка непрерывны на множестве $D$ вплоть до границы $gamma$
+ Поверхнось невырожденная:
$ frac(D(x,y), D(u,v)), frac(D(y,z), D(u, v)), frac(D(z, x), D(u,v)) $
/ Определение: *Ориентация поверхности* --- это выделение одной из сторон поверхности $Phi$ с помощью параметризации.
/ Определение: *Площадь поверхности*
$ S = op("lim", limits: #true)_(h arrow.r 0) sigma(T), "где" \
sigma(T) = sum_(k = 1)^n sum_(l = 1)^n |overline(r'_u)(u_(k,l), v_(k, l)) times overline(r'_v)(u_(k,j), v_(k,j))| mu(D_(k,l)) $
