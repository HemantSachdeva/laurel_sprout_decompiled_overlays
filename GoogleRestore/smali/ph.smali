.class public Lph;
.super Lqk;
.source "PG"

# interfaces
.implements Lqv;


# instance fields
.field private a:Lpe;

.field private b:Z

.field private final c:Lpd;

.field private d:I

.field private e:[I

.field i:I

.field j:Lpv;

.field k:Z

.field l:I

.field m:I

.field n:Lpg;

.field final o:Lpc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lph;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 4

    .line 2
    invoke-direct {p0}, Lqk;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lph;->i:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lph;->k:Z

    iput-boolean v0, p0, Lph;->b:Z

    const/4 v1, -0x1

    iput v1, p0, Lph;->l:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lph;->m:I

    const/4 v1, 0x0

    iput-object v1, p0, Lph;->n:Lpg;

    new-instance v2, Lpc;

    .line 3
    invoke-direct {v2}, Lpc;-><init>()V

    iput-object v2, p0, Lph;->o:Lpc;

    new-instance v3, Lpd;

    invoke-direct {v3}, Lpd;-><init>()V

    iput-object v3, p0, Lph;->c:Lpd;

    const/4 v3, 0x2

    iput v3, p0, Lph;->d:I

    new-array v3, v3, [I

    iput-object v3, p0, Lph;->e:[I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lqk;->a(Ljava/lang/String;)V

    iget v0, p0, Lph;->i:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lph;->j:Lpv;

    if-nez v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    .line 5
    invoke-static {p0}, Lpv;->b(Lqk;)Lpv;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_2
    invoke-static {p0}, Lpv;->a(Lqk;)Lpv;

    move-result-object v0

    .line 5
    :goto_0
    iput-object v0, p0, Lph;->j:Lpv;

    iput-object v0, v2, Lpc;->a:Lpv;

    iput p1, p0, Lph;->i:I

    .line 7
    invoke-virtual {p0}, Lqk;->q()V

    :cond_3
    nop

    .line 8
    invoke-virtual {p0, v1}, Lqk;->a(Ljava/lang/String;)V

    return-void
.end method

.method private final A()V
    .locals 2

    iget v0, p0, Lph;->i:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 376
    invoke-virtual {p0}, Lph;->k()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v1, p0, Lph;->k:Z

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lph;->k:Z

    return-void
.end method

.method private final B()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lph;->k:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lqk;->g(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final C()Landroid/view/View;
    .locals 1

    iget-boolean v0, p0, Lph;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 137
    :cond_0
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    invoke-virtual {p0, v0}, Lqk;->g(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final D()Landroid/view/View;
    .locals 2

    .line 91
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lph;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final E()Landroid/view/View;
    .locals 2

    .line 98
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lph;->b(II)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private final a(ILqq;Lqx;Z)I
    .locals 1

    iget-object v0, p0, Lph;->j:Lpv;

    .line 128
    invoke-virtual {v0}, Lpv;->a()I

    move-result v0

    sub-int/2addr v0, p1

    if-lez v0, :cond_1

    neg-int v0, v0

    .line 129
    invoke-virtual {p0, v0, p2, p3}, Lph;->c(ILqq;Lqx;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lph;->j:Lpv;

    .line 130
    invoke-virtual {p3}, Lpv;->a()I

    move-result p3

    sub-int/2addr p3, p1

    if-lez p3, :cond_0

    iget-object p1, p0, Lph;->j:Lpv;

    .line 131
    invoke-virtual {p1, p3}, Lpv;->a(I)V

    add-int/2addr p3, p2

    return p3

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final a(II)V
    .locals 3

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v1, p0, Lph;->j:Lpv;

    .line 412
    invoke-virtual {v1}, Lpv;->a()I

    move-result v1

    sub-int/2addr v1, p2

    iput v1, v0, Lpe;->c:I

    iget-object v0, p0, Lph;->a:Lpe;

    iget-boolean v1, p0, Lph;->k:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    iput v1, v0, Lpe;->e:I

    iput p1, v0, Lpe;->d:I

    iput v2, v0, Lpe;->f:I

    iput p2, v0, Lpe;->b:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lpe;->g:I

    return-void
.end method

.method private final a(IIZLqx;)V
    .locals 4

    iget-object v0, p0, Lph;->a:Lpe;

    .line 394
    invoke-virtual {p0}, Lph;->m()Z

    move-result v1

    iput-boolean v1, v0, Lpe;->m:Z

    iget-object v0, p0, Lph;->a:Lpe;

    iput p1, v0, Lpe;->f:I

    iget-object v0, p0, Lph;->e:[I

    .line 395
    const/4 v1, 0x0

    aput v1, v0, v1

    .line 396
    const/4 v2, 0x1

    aput v1, v0, v2

    .line 397
    invoke-virtual {p0, p4, v0}, Lph;->a(Lqx;[I)V

    iget-object p4, p0, Lph;->e:[I

    .line 398
    aget p4, p4, v1

    invoke-static {v1, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    iget-object v0, p0, Lph;->e:[I

    .line 399
    aget v0, v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v1, p0, Lph;->a:Lpe;

    if-ne p1, v2, :cond_0

    move v3, v0

    goto :goto_0

    .line 411
    :cond_0
    move v3, p4

    .line 399
    :goto_0
    iput v3, v1, Lpe;->h:I

    if-eq p1, v2, :cond_1

    move p4, v0

    :cond_1
    iput p4, v1, Lpe;->i:I

    const/4 p4, -0x1

    if-ne p1, v2, :cond_3

    iget-object p1, p0, Lph;->j:Lpv;

    .line 400
    invoke-virtual {p1}, Lpv;->e()I

    move-result p1

    add-int/2addr v3, p1

    iput v3, v1, Lpe;->h:I

    .line 401
    invoke-direct {p0}, Lph;->C()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lph;->a:Lpe;

    iget-boolean v1, p0, Lph;->k:Z

    if-eq v2, v1, :cond_2

    goto :goto_1

    .line 405
    :cond_2
    const/4 v2, -0x1

    .line 401
    :goto_1
    iput v2, v0, Lpe;->e:I

    .line 402
    invoke-static {p1}, Lph;->i(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lph;->a:Lpe;

    iget v2, v1, Lpe;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Lpe;->d:I

    iget-object p4, p0, Lph;->j:Lpv;

    .line 403
    invoke-virtual {p4, p1}, Lpv;->c(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lpe;->b:I

    iget-object p4, p0, Lph;->j:Lpv;

    .line 404
    invoke-virtual {p4, p1}, Lpv;->c(Landroid/view/View;)I

    move-result p1

    iget-object p4, p0, Lph;->j:Lpv;

    .line 405
    invoke-virtual {p4}, Lpv;->a()I

    move-result p4

    sub-int/2addr p1, p4

    goto :goto_3

    .line 406
    :cond_3
    invoke-direct {p0}, Lph;->B()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Lph;->a:Lpe;

    .line 407
    iget v1, v0, Lpe;->h:I

    iget-object v3, p0, Lph;->j:Lpv;

    invoke-virtual {v3}, Lpv;->c()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, v0, Lpe;->h:I

    iget-object v0, p0, Lph;->a:Lpe;

    iget-boolean v1, p0, Lph;->k:Z

    if-eq v2, v1, :cond_4

    const/4 v2, -0x1

    goto :goto_2

    .line 411
    :cond_4
    nop

    .line 407
    :goto_2
    iput v2, v0, Lpe;->e:I

    .line 408
    invoke-static {p1}, Lph;->i(Landroid/view/View;)I

    move-result p4

    iget-object v1, p0, Lph;->a:Lpe;

    iget v2, v1, Lpe;->e:I

    add-int/2addr p4, v2

    iput p4, v0, Lpe;->d:I

    iget-object p4, p0, Lph;->j:Lpv;

    .line 409
    invoke-virtual {p4, p1}, Lpv;->d(Landroid/view/View;)I

    move-result p4

    iput p4, v1, Lpe;->b:I

    iget-object p4, p0, Lph;->j:Lpv;

    .line 410
    invoke-virtual {p4, p1}, Lpv;->d(Landroid/view/View;)I

    move-result p1

    neg-int p1, p1

    iget-object p4, p0, Lph;->j:Lpv;

    .line 411
    invoke-virtual {p4}, Lpv;->c()I

    move-result p4

    add-int/2addr p1, p4

    .line 405
    :goto_3
    iget-object p4, p0, Lph;->a:Lpe;

    iput p2, p4, Lpe;->c:I

    if-eqz p3, :cond_5

    sub-int/2addr p2, p1

    iput p2, p4, Lpe;->c:I

    :cond_5
    iput p1, p4, Lpe;->g:I

    return-void
.end method

.method private final a(Lpc;)V
    .locals 1

    .line 413
    iget v0, p1, Lpc;->b:I

    iget p1, p1, Lpc;->c:I

    invoke-direct {p0, v0, p1}, Lph;->a(II)V

    return-void
.end method

.method private final a(Lqq;II)V
    .locals 0

    if-ne p2, p3, :cond_0

    return-void

    :cond_0
    if-le p3, p2, :cond_1

    add-int/lit8 p3, p3, -0x1

    :goto_0
    if-lt p3, p2, :cond_2

    .line 373
    invoke-virtual {p0, p3, p1}, Lqk;->a(ILqq;)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-le p2, p3, :cond_2

    .line 372
    invoke-virtual {p0, p2, p1}, Lqk;->a(ILqq;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 373
    :cond_2
    return-void
.end method

.method private final a(Lqq;Lpe;)V
    .locals 5

    .line 349
    iget-boolean v0, p2, Lpe;->a:Z

    if-eqz v0, :cond_e

    iget-boolean v0, p2, Lpe;->m:Z

    if-eqz v0, :cond_0

    goto/16 :goto_9

    .line 350
    :cond_0
    iget v0, p2, Lpe;->g:I

    .line 351
    iget v1, p2, Lpe;->i:I

    .line 352
    iget p2, p2, Lpe;->f:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne p2, v3, :cond_7

    .line 362
    invoke-virtual {p0}, Lqk;->s()I

    move-result p2

    if-gez v0, :cond_1

    goto/16 :goto_8

    :cond_1
    iget-object v4, p0, Lph;->j:Lpv;

    .line 363
    invoke-virtual {v4}, Lpv;->b()I

    move-result v4

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    iget-boolean v0, p0, Lph;->k:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_d

    .line 364
    invoke-virtual {p0, v0}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    iget-object v3, p0, Lph;->j:Lpv;

    .line 365
    invoke-virtual {v3, v1}, Lpv;->d(Landroid/view/View;)I

    move-result v3

    if-lt v3, v4, :cond_3

    iget-object v3, p0, Lph;->j:Lpv;

    .line 366
    invoke-virtual {v3, v1}, Lpv;->f(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_2

    goto :goto_1

    .line 367
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 366
    :cond_3
    :goto_1
    nop

    .line 367
    invoke-direct {p0, p1, v2, v0}, Lph;->a(Lqq;II)V

    return-void

    :cond_4
    add-int/2addr p2, v3

    move v0, p2

    :goto_2
    if-ltz v0, :cond_d

    .line 368
    invoke-virtual {p0, v0}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lph;->j:Lpv;

    .line 369
    invoke-virtual {v2, v1}, Lpv;->d(Landroid/view/View;)I

    move-result v2

    if-lt v2, v4, :cond_6

    iget-object v2, p0, Lph;->j:Lpv;

    .line 370
    invoke-virtual {v2, v1}, Lpv;->f(Landroid/view/View;)I

    move-result v1

    if-ge v1, v4, :cond_5

    goto :goto_3

    .line 371
    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-direct {p0, p1, p2, v0}, Lph;->a(Lqq;II)V

    return-void

    :cond_7
    if-ltz v0, :cond_d

    sub-int/2addr v0, v1

    .line 353
    invoke-virtual {p0}, Lqk;->s()I

    move-result p2

    iget-boolean v1, p0, Lph;->k:Z

    if-eqz v1, :cond_a

    add-int/2addr p2, v3

    move v1, p2

    :goto_4
    if-ltz v1, :cond_d

    .line 358
    invoke-virtual {p0, v1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lph;->j:Lpv;

    .line 359
    invoke-virtual {v3, v2}, Lpv;->c(Landroid/view/View;)I

    move-result v3

    if-gt v3, v0, :cond_9

    iget-object v3, p0, Lph;->j:Lpv;

    .line 360
    invoke-virtual {v3, v2}, Lpv;->e(Landroid/view/View;)I

    move-result v2

    if-le v2, v0, :cond_8

    goto :goto_5

    .line 361
    :cond_8
    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_9
    :goto_5
    invoke-direct {p0, p1, p2, v1}, Lph;->a(Lqq;II)V

    return-void

    :cond_a
    const/4 v1, 0x0

    :goto_6
    if-ge v1, p2, :cond_d

    .line 354
    invoke-virtual {p0, v1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lph;->j:Lpv;

    .line 355
    invoke-virtual {v4, v3}, Lpv;->c(Landroid/view/View;)I

    move-result v4

    if-gt v4, v0, :cond_c

    iget-object v4, p0, Lph;->j:Lpv;

    .line 356
    invoke-virtual {v4, v3}, Lpv;->e(Landroid/view/View;)I

    move-result v3

    if-le v3, v0, :cond_b

    goto :goto_7

    .line 357
    :cond_b
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 356
    :cond_c
    :goto_7
    nop

    .line 357
    invoke-direct {p0, p1, v2, v1}, Lph;->a(Lqq;II)V

    return-void

    .line 362
    :cond_d
    :goto_8
    return-void

    .line 349
    :cond_e
    :goto_9
    return-void
.end method

.method private final b(ILqq;Lqx;Z)I
    .locals 1

    iget-object v0, p0, Lph;->j:Lpv;

    .line 132
    invoke-virtual {v0}, Lpv;->c()I

    move-result v0

    sub-int v0, p1, v0

    if-lez v0, :cond_1

    .line 133
    invoke-virtual {p0, v0, p2, p3}, Lph;->c(ILqq;Lqx;)I

    move-result p2

    neg-int p2, p2

    add-int/2addr p1, p2

    if-eqz p4, :cond_0

    iget-object p3, p0, Lph;->j:Lpv;

    .line 134
    invoke-virtual {p3}, Lpv;->c()I

    move-result p3

    sub-int/2addr p1, p3

    if-lez p1, :cond_0

    iget-object p3, p0, Lph;->j:Lpv;

    neg-int p4, p1

    .line 135
    invoke-virtual {p3, p4}, Lpv;->a(I)V

    sub-int/2addr p2, p1

    :cond_0
    return p2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private final b(Lpc;)V
    .locals 1

    .line 415
    iget v0, p1, Lpc;->b:I

    iget p1, p1, Lpc;->c:I

    invoke-direct {p0, v0, p1}, Lph;->g(II)V

    return-void
.end method

.method private final g(II)V
    .locals 3

    iget-object v0, p0, Lph;->a:Lpe;

    iget-object v1, p0, Lph;->j:Lpv;

    .line 414
    invoke-virtual {v1}, Lpv;->c()I

    move-result v1

    sub-int v1, p2, v1

    iput v1, v0, Lpe;->c:I

    iget-object v0, p0, Lph;->a:Lpe;

    iput p1, v0, Lpe;->d:I

    iget-boolean p1, p0, Lph;->k:Z

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-eq v2, p1, :cond_0

    const/4 v2, -0x1

    :cond_0
    iput v2, v0, Lpe;->e:I

    iput v1, v0, Lpe;->f:I

    iput p2, v0, Lpe;->b:I

    const/high16 p1, -0x80000000

    iput p1, v0, Lpe;->g:I

    return-void
.end method

.method private final h(Lqx;)I
    .locals 9

    .line 38
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 39
    :cond_0
    invoke-virtual {p0}, Lph;->l()V

    iget-object v0, p0, Lph;->j:Lpv;

    iget-boolean v2, p0, Lph;->b:Z

    xor-int/lit8 v2, v2, 0x1

    .line 40
    invoke-virtual {p0, v2}, Lph;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lph;->b:Z

    xor-int/lit8 v3, v3, 0x1

    .line 41
    invoke-virtual {p0, v3}, Lph;->a(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lph;->b:Z

    iget-boolean v5, p0, Lph;->k:Z

    .line 42
    invoke-virtual {p0}, Lqk;->s()I

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {p1}, Lqx;->a()I

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_1

    goto :goto_1

    .line 43
    :cond_1
    invoke-static {v2}, Lqk;->i(Landroid/view/View;)I

    move-result v6

    .line 44
    invoke-static {v3}, Lqk;->i(Landroid/view/View;)I

    move-result v7

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 45
    invoke-static {v2}, Lqk;->i(Landroid/view/View;)I

    move-result v7

    .line 46
    invoke-static {v3}, Lqk;->i(Landroid/view/View;)I

    move-result v8

    .line 45
    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-eqz v5, :cond_2

    .line 47
    invoke-virtual {p1}, Lqx;->a()I

    move-result p1

    sub-int/2addr p1, v7

    add-int/lit8 p1, p1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, p1

    goto :goto_0

    .line 53
    :cond_2
    nop

    .line 48
    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result p1

    move v1, p1

    .line 47
    :goto_0
    if-eqz v4, :cond_4

    int-to-float p1, v1

    .line 49
    invoke-virtual {v0, v3}, Lpv;->c(Landroid/view/View;)I

    move-result v1

    .line 50
    invoke-virtual {v0, v2}, Lpv;->d(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v1, v4

    .line 49
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    .line 51
    invoke-static {v2}, Lqk;->i(Landroid/view/View;)I

    move-result v4

    .line 52
    invoke-static {v3}, Lqk;->i(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v4, v3

    .line 51
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    div-float/2addr v1, v3

    mul-float p1, p1, v1

    .line 53
    invoke-virtual {v0}, Lpv;->c()I

    move-result v1

    .line 54
    invoke-virtual {v0, v2}, Lpv;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    add-float/2addr p1, v0

    .line 53
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1

    .line 48
    :cond_3
    nop

    .line 42
    :cond_4
    :goto_1
    return v1
.end method

.method private final i(Lqx;)I
    .locals 6

    .line 29
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 30
    :cond_0
    invoke-virtual {p0}, Lph;->l()V

    iget-object v0, p0, Lph;->j:Lpv;

    iget-boolean v2, p0, Lph;->b:Z

    xor-int/lit8 v2, v2, 0x1

    .line 31
    invoke-virtual {p0, v2}, Lph;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lph;->b:Z

    xor-int/lit8 v3, v3, 0x1

    .line 32
    invoke-virtual {p0, v3}, Lph;->a(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lph;->b:Z

    .line 33
    invoke-virtual {p0}, Lqk;->s()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lqx;->a()I

    move-result p1

    if-eqz p1, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 34
    invoke-static {v2}, Lqk;->i(Landroid/view/View;)I

    move-result p1

    invoke-static {v3}, Lqk;->i(Landroid/view/View;)I

    move-result v0

    sub-int/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    add-int/lit8 v1, p1, 0x1

    goto :goto_0

    .line 35
    :cond_2
    invoke-virtual {v0, v3}, Lpv;->c(Landroid/view/View;)I

    move-result p1

    .line 36
    invoke-virtual {v0, v2}, Lpv;->d(Landroid/view/View;)I

    move-result v1

    .line 37
    invoke-virtual {v0}, Lpv;->d()I

    move-result v0

    sub-int/2addr p1, v1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_0

    :cond_3
    nop

    .line 33
    :goto_0
    return v1
.end method

.method private final j(Lqx;)I
    .locals 6

    .line 55
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 56
    :cond_0
    invoke-virtual {p0}, Lph;->l()V

    iget-object v0, p0, Lph;->j:Lpv;

    iget-boolean v2, p0, Lph;->b:Z

    xor-int/lit8 v2, v2, 0x1

    .line 57
    invoke-virtual {p0, v2}, Lph;->b(Z)Landroid/view/View;

    move-result-object v2

    iget-boolean v3, p0, Lph;->b:Z

    xor-int/lit8 v3, v3, 0x1

    .line 58
    invoke-virtual {p0, v3}, Lph;->a(Z)Landroid/view/View;

    move-result-object v3

    iget-boolean v4, p0, Lph;->b:Z

    .line 59
    invoke-virtual {p0}, Lqk;->s()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1}, Lqx;->a()I

    move-result v5

    if-eqz v5, :cond_3

    if-eqz v2, :cond_3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    .line 60
    invoke-virtual {p1}, Lqx;->a()I

    move-result v1

    goto :goto_0

    .line 61
    :cond_2
    invoke-virtual {v0, v3}, Lpv;->c(Landroid/view/View;)I

    move-result v1

    .line 62
    invoke-virtual {v0, v2}, Lpv;->d(Landroid/view/View;)I

    move-result v0

    sub-int/2addr v1, v0

    int-to-float v0, v1

    .line 63
    invoke-static {v2}, Lqk;->i(Landroid/view/View;)I

    move-result v1

    .line 64
    invoke-static {v3}, Lqk;->i(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    .line 63
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 65
    invoke-virtual {p1}, Lqx;->a()I

    move-result p1

    int-to-float p1, p1

    mul-float v0, v0, p1

    float-to-int v1, v0

    goto :goto_0

    :cond_3
    nop

    .line 59
    :goto_0
    return v1
.end method


# virtual methods
.method public a(ILqq;Lqx;)I
    .locals 2

    iget v0, p0, Lph;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 384
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lph;->c(ILqq;Lqx;)I

    move-result p1

    return p1
.end method

.method final a(Lqq;Lpe;Lqx;Z)I
    .locals 7

    .line 76
    iget v0, p2, Lpe;->c:I

    .line 77
    iget v1, p2, Lpe;->g:I

    const/high16 v2, -0x80000000

    if-eq v1, v2, :cond_1

    if-gez v0, :cond_0

    add-int/2addr v1, v0

    iput v1, p2, Lpe;->g:I

    .line 78
    :cond_0
    invoke-direct {p0, p1, p2}, Lph;->a(Lqq;Lpe;)V

    .line 79
    :cond_1
    iget v1, p2, Lpe;->c:I

    iget v3, p2, Lpe;->h:I

    add-int/2addr v1, v3

    iget-object v3, p0, Lph;->c:Lpd;

    .line 80
    :cond_2
    iget-boolean v4, p2, Lpe;->m:Z

    if-nez v4, :cond_3

    if-lez v1, :cond_9

    :cond_3
    invoke-virtual {p2, p3}, Lpe;->a(Lqx;)Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    iput v4, v3, Lpd;->a:I

    iput-boolean v4, v3, Lpd;->b:Z

    iput-boolean v4, v3, Lpd;->c:Z

    iput-boolean v4, v3, Lpd;->d:Z

    .line 81
    invoke-virtual {p0, p1, p3, p2, v3}, Lph;->a(Lqq;Lqx;Lpe;Lpd;)V

    .line 82
    iget-boolean v4, v3, Lpd;->b:Z

    if-eqz v4, :cond_4

    goto :goto_0

    .line 83
    :cond_4
    iget v4, p2, Lpe;->b:I

    iget v5, v3, Lpd;->a:I

    iget v6, p2, Lpe;->f:I

    mul-int v6, v6, v5

    add-int/2addr v4, v6

    iput v4, p2, Lpe;->b:I

    .line 84
    iget-boolean v4, v3, Lpd;->c:Z

    if-eqz v4, :cond_5

    iget-object v4, p2, Lpe;->l:Ljava/util/List;

    if-nez v4, :cond_5

    iget-boolean v4, p3, Lqx;->g:Z

    if-nez v4, :cond_6

    .line 85
    :cond_5
    iget v4, p2, Lpe;->c:I

    sub-int/2addr v4, v5

    iput v4, p2, Lpe;->c:I

    sub-int/2addr v1, v5

    .line 86
    :cond_6
    iget v4, p2, Lpe;->g:I

    if-eq v4, v2, :cond_8

    add-int/2addr v4, v5

    iput v4, p2, Lpe;->g:I

    .line 87
    iget v5, p2, Lpe;->c:I

    if-gez v5, :cond_7

    add-int/2addr v4, v5

    iput v4, p2, Lpe;->g:I

    .line 88
    :cond_7
    invoke-direct {p0, p1, p2}, Lph;->a(Lqq;Lpe;)V

    :cond_8
    if-eqz p4, :cond_2

    .line 89
    iget-boolean v4, v3, Lpd;->d:Z

    if-eqz v4, :cond_2

    .line 90
    :cond_9
    :goto_0
    iget p1, p2, Lpe;->c:I

    sub-int/2addr v0, p1

    return v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 6

    .line 120
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 121
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lqk;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lph;->i(Landroid/view/View;)I

    move-result v3

    sub-int v3, p1, v3

    if-ltz v3, :cond_2

    if-ge v3, v0, :cond_2

    .line 122
    invoke-virtual {p0, v3}, Lqk;->g(I)Landroid/view/View;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lph;->i(Landroid/view/View;)I

    move-result v3

    if-eq v3, p1, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    return-object v0

    .line 124
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    :goto_1
    if-ge v2, v0, :cond_7

    .line 125
    invoke-virtual {p0, v2}, Lqk;->g(I)Landroid/view/View;

    move-result-object v3

    .line 126
    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v4

    if-nez v4, :cond_4

    :cond_3
    goto :goto_2

    :cond_4
    invoke-virtual {v4}, Lqz;->c()I

    move-result v5

    if-ne v5, p1, :cond_3

    invoke-virtual {v4}, Lqz;->w()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 127
    iget-object v5, v5, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    iget-boolean v5, v5, Lqx;->g:Z

    if-nez v5, :cond_5

    invoke-virtual {v4}, Lqz;->m()Z

    move-result v4

    if-nez v4, :cond_6

    :cond_5
    move-object v1, v3

    goto :goto_3

    .line 126
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 127
    :cond_7
    nop

    :goto_3
    return-object v1
.end method

.method final a(IIZ)Landroid/view/View;
    .locals 2

    .line 107
    invoke-virtual {p0}, Lph;->l()V

    const/16 v0, 0x140

    const/4 v1, 0x1

    if-eq v1, p3, :cond_0

    const/16 p3, 0x140

    goto :goto_0

    .line 109
    :cond_0
    const/16 p3, 0x6003

    .line 107
    :goto_0
    iget v1, p0, Lph;->i:I

    if-nez v1, :cond_1

    iget-object v1, p0, Lph;->r:Lsa;

    .line 108
    invoke-virtual {v1, p1, p2, p3, v0}, Lsa;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lph;->s:Lsa;

    .line 109
    invoke-virtual {v1, p1, p2, p3, v0}, Lsa;->a(IIII)Landroid/view/View;

    move-result-object p1

    .line 108
    :goto_1
    return-object p1
.end method

.method public a(Landroid/view/View;ILqq;Lqx;)Landroid/view/View;
    .locals 3

    .line 180
    invoke-direct {p0}, Lph;->A()V

    .line 181
    invoke-virtual {p0}, Lqk;->s()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0, p2}, Lph;->d(I)I

    move-result p1

    const/high16 p2, -0x80000000

    if-ne p1, p2, :cond_1

    return-object v0

    .line 183
    :cond_1
    invoke-virtual {p0}, Lph;->l()V

    iget-object v1, p0, Lph;->j:Lpv;

    .line 184
    invoke-virtual {v1}, Lpv;->d()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x3eaaaaab

    mul-float v1, v1, v2

    float-to-int v1, v1

    .line 185
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, p4}, Lph;->a(IIZLqx;)V

    iget-object v1, p0, Lph;->a:Lpe;

    iput p2, v1, Lpe;->g:I

    iput-boolean v2, v1, Lpe;->a:Z

    const/4 p2, 0x1

    .line 186
    invoke-virtual {p0, p3, v1, p4, p2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_3

    iget-boolean p1, p0, Lph;->k:Z

    if-eqz p1, :cond_2

    .line 189
    invoke-direct {p0}, Lph;->E()Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 190
    :cond_2
    invoke-direct {p0}, Lph;->D()Landroid/view/View;

    move-result-object p1

    .line 189
    :goto_0
    move-object p3, p1

    const/4 p1, -0x1

    goto :goto_1

    .line 190
    :cond_3
    iget-boolean p3, p0, Lph;->k:Z

    if-eqz p3, :cond_4

    .line 187
    invoke-direct {p0}, Lph;->D()Landroid/view/View;

    move-result-object p3

    goto :goto_1

    .line 188
    :cond_4
    invoke-direct {p0}, Lph;->E()Landroid/view/View;

    move-result-object p3

    .line 189
    :goto_1
    if-ne p1, p2, :cond_5

    .line 191
    invoke-direct {p0}, Lph;->B()Landroid/view/View;

    move-result-object p1

    goto :goto_2

    .line 192
    :cond_5
    invoke-direct {p0}, Lph;->C()Landroid/view/View;

    move-result-object p1

    .line 193
    :goto_2
    invoke-virtual {p1}, Landroid/view/View;->hasFocusable()Z

    move-result p2

    if-eqz p2, :cond_7

    if-nez p3, :cond_6

    return-object v0

    :cond_6
    return-object p1

    :cond_7
    return-object p3
.end method

.method public a(Lqq;Lqx;Z)Landroid/view/View;
    .locals 12

    .line 110
    invoke-virtual {p0}, Lph;->l()V

    .line 111
    invoke-virtual {p0}, Lqk;->s()I

    move-result p1

    .line 112
    invoke-virtual {p2}, Lqx;->a()I

    move-result p2

    iget-object v0, p0, Lph;->j:Lpv;

    .line 113
    invoke-virtual {v0}, Lpv;->c()I

    move-result v0

    iget-object v1, p0, Lph;->j:Lpv;

    .line 114
    invoke-virtual {v1}, Lpv;->a()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v2

    move-object v5, v4

    const/4 v6, 0x0

    :goto_0
    if-eq v6, p1, :cond_9

    .line 115
    invoke-virtual {p0, v6}, Lqk;->g(I)Landroid/view/View;

    move-result-object v7

    .line 116
    invoke-static {v7}, Lph;->i(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lph;->j:Lpv;

    .line 117
    invoke-virtual {v9, v7}, Lpv;->d(Landroid/view/View;)I

    move-result v9

    iget-object v10, p0, Lph;->j:Lpv;

    .line 118
    invoke-virtual {v10, v7}, Lpv;->c(Landroid/view/View;)I

    move-result v10

    if-ltz v8, :cond_8

    if-ge v8, p2, :cond_8

    .line 119
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lql;

    invoke-virtual {v8}, Lql;->a()Z

    move-result v8

    if-eqz v8, :cond_0

    if-nez v5, :cond_8

    move-object v5, v7

    goto :goto_6

    :cond_0
    const/4 v8, 0x1

    if-gt v10, v0, :cond_1

    if-ge v9, v0, :cond_1

    const/4 v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v11, 0x0

    :goto_1
    if-lt v9, v1, :cond_2

    if-le v10, v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 v8, 0x0

    :goto_2
    if-nez v11, :cond_4

    if-eqz v8, :cond_3

    goto :goto_3

    :cond_3
    return-object v7

    :cond_4
    :goto_3
    if-eqz p3, :cond_6

    if-eqz v8, :cond_5

    goto :goto_4

    :cond_5
    if-nez v2, :cond_8

    goto :goto_5

    :cond_6
    if-eqz v11, :cond_7

    :goto_4
    move-object v4, v7

    goto :goto_6

    :cond_7
    if-nez v2, :cond_8

    :goto_5
    move-object v2, v7

    goto :goto_6

    :cond_8
    nop

    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_9
    if-eqz v2, :cond_a

    goto :goto_7

    :cond_a
    if-nez v4, :cond_b

    move-object v2, v5

    :goto_7
    return-object v2

    :cond_b
    return-object v4
.end method

.method final a(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lph;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 92
    invoke-virtual {p0}, Lqk;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lph;->a(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 93
    :cond_0
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lph;->a(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a()Lql;
    .locals 2

    new-instance v0, Lql;

    .line 136
    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lql;-><init>(II)V

    return-object v0
.end method

.method public final a(IILqx;Lou;)V
    .locals 2

    iget v0, p0, Lph;->i:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    move p1, p2

    .line 14
    :cond_0
    invoke-virtual {p0}, Lqk;->s()I

    move-result p2

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {p0}, Lph;->l()V

    if-lez p1, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    .line 18
    :cond_2
    const/4 p2, -0x1

    .line 16
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 17
    invoke-direct {p0, p2, p1, v1, p3}, Lph;->a(IIZLqx;)V

    iget-object p1, p0, Lph;->a:Lpe;

    .line 18
    invoke-virtual {p0, p3, p1, p4}, Lph;->a(Lqx;Lpe;Lou;)V

    return-void

    .line 14
    :cond_3
    :goto_1
    return-void
.end method

.method public final a(ILou;)V
    .locals 5

    iget-object v0, p0, Lph;->n:Lpg;

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lpg;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lph;->n:Lpg;

    .line 20
    iget-boolean v3, v0, Lpg;->c:Z

    .line 21
    iget v0, v0, Lpg;->a:I

    goto :goto_0

    .line 19
    :cond_0
    invoke-direct {p0}, Lph;->A()V

    iget-boolean v3, p0, Lph;->k:Z

    iget v0, p0, Lph;->l:I

    if-ne v0, v2, :cond_2

    if-eqz v3, :cond_1

    add-int/lit8 v0, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 21
    :cond_2
    :goto_0
    const/4 v4, 0x1

    if-eq v4, v3, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    .line 22
    :cond_3
    nop

    .line 21
    :goto_1
    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lph;->d:I

    if-ge v3, v4, :cond_4

    if-ltz v0, :cond_4

    if-ge v0, p1, :cond_4

    .line 22
    invoke-virtual {p2, v0, v1}, Lou;->a(II)V

    add-int/2addr v0, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method public final a(Landroid/os/Parcelable;)V
    .locals 2

    .line 333
    instance-of v0, p1, Lpg;

    if-eqz v0, :cond_1

    .line 334
    check-cast p1, Lpg;

    iput-object p1, p0, Lph;->n:Lpg;

    iget v0, p0, Lph;->l:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 335
    invoke-virtual {p1}, Lpg;->b()V

    .line 336
    :cond_0
    invoke-virtual {p0}, Lqk;->q()V

    :cond_1
    return-void
.end method

.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    new-instance v0, Lqw;

    .line 392
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Lqw;-><init>(Landroid/content/Context;)V

    iput p2, v0, Lqw;->a:I

    .line 393
    invoke-virtual {p0, v0}, Lqk;->a(Lqw;)V

    return-void
.end method

.method public final a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 194
    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->a:Lqq;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->G:Lqx;

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 203
    :cond_0
    nop

    .line 195
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 196
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 197
    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 198
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 200
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    nop

    .line 195
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 199
    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    if-eqz v0, :cond_3

    .line 200
    invoke-virtual {v0}, Lqc;->a()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    .line 201
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    if-lez v0, :cond_4

    .line 202
    invoke-virtual {p0}, Lph;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setFromIndex(I)V

    .line 203
    invoke-virtual {p0}, Lph;->p()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setToIndex(I)V

    :cond_4
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lph;->n:Lpg;

    if-nez v0, :cond_0

    iget-object v0, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Lqq;Lqx;Lpc;I)V
    .locals 0

    return-void
.end method

.method public a(Lqq;Lqx;Lpe;Lpd;)V
    .locals 18

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    invoke-virtual {v1, v3}, Lpe;->a(Lqq;)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_0

    iput-boolean v4, v2, Lpd;->b:Z

    return-void

    .line 141
    :cond_0
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lql;

    .line 142
    iget-object v6, v1, Lpe;->l:Ljava/util/List;

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-nez v6, :cond_3

    iget-boolean v6, v0, Lph;->k:Z

    .line 143
    iget v9, v1, Lpe;->f:I

    if-eq v9, v8, :cond_1

    const/4 v9, 0x0

    goto :goto_0

    .line 145
    :cond_1
    const/4 v9, 0x1

    .line 143
    :goto_0
    if-ne v6, v9, :cond_2

    .line 144
    invoke-virtual {v0, v3}, Lqk;->b(Landroid/view/View;)V

    goto :goto_2

    .line 176
    :cond_2
    nop

    .line 145
    invoke-virtual {v0, v3, v7}, Lqk;->b(Landroid/view/View;I)V

    goto :goto_2

    :cond_3
    iget-boolean v6, v0, Lph;->k:Z

    .line 146
    iget v9, v1, Lpe;->f:I

    if-eq v9, v8, :cond_4

    const/4 v9, 0x0

    goto :goto_1

    .line 148
    :cond_4
    const/4 v9, 0x1

    .line 146
    :goto_1
    if-ne v6, v9, :cond_5

    .line 147
    invoke-virtual {v0, v3}, Lqk;->a(Landroid/view/View;)V

    goto :goto_2

    :cond_5
    nop

    .line 148
    invoke-virtual {v0, v3, v7}, Lqk;->a(Landroid/view/View;I)V

    .line 149
    :goto_2
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lql;

    iget-object v7, v0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 150
    invoke-virtual {v7, v3}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v7

    .line 151
    iget v9, v7, Landroid/graphics/Rect;->left:I

    iget v10, v7, Landroid/graphics/Rect;->right:I

    .line 152
    iget v11, v7, Landroid/graphics/Rect;->top:I

    iget v7, v7, Landroid/graphics/Rect;->bottom:I

    iget v12, v0, Lqk;->B:I

    iget v13, v0, Lqk;->z:I

    .line 153
    invoke-virtual/range {p0 .. p0}, Lqk;->t()I

    move-result v14

    invoke-virtual/range {p0 .. p0}, Lqk;->v()I

    move-result v15

    add-int/2addr v14, v15

    iget v15, v6, Lql;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v6, Lql;->rightMargin:I

    add-int/2addr v14, v15

    add-int/2addr v9, v10

    add-int/2addr v14, v9

    iget v9, v6, Lql;->width:I

    invoke-virtual/range {p0 .. p0}, Lqk;->i()Z

    move-result v10

    .line 154
    invoke-static {v12, v13, v14, v9, v10}, Lqk;->a(IIIIZ)I

    move-result v9

    iget v10, v0, Lqk;->C:I

    iget v12, v0, Lqk;->A:I

    .line 155
    invoke-virtual/range {p0 .. p0}, Lqk;->u()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Lqk;->w()I

    move-result v14

    add-int/2addr v13, v14

    iget v14, v6, Lql;->topMargin:I

    add-int/2addr v13, v14

    iget v14, v6, Lql;->bottomMargin:I

    add-int/2addr v13, v14

    add-int/2addr v11, v7

    add-int/2addr v13, v11

    iget v7, v6, Lql;->height:I

    invoke-virtual/range {p0 .. p0}, Lqk;->j()Z

    move-result v11

    .line 156
    invoke-static {v10, v12, v13, v7, v11}, Lqk;->a(IIIIZ)I

    move-result v7

    .line 157
    invoke-virtual {v0, v3, v9, v7, v6}, Lqk;->a(Landroid/view/View;IILql;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 158
    invoke-virtual {v3, v9, v7}, Landroid/view/View;->measure(II)V

    :cond_6
    iget-object v6, v0, Lph;->j:Lpv;

    .line 159
    invoke-virtual {v6, v3}, Lpv;->a(Landroid/view/View;)I

    move-result v6

    iput v6, v2, Lpd;->a:I

    iget v6, v0, Lph;->i:I

    if-ne v6, v4, :cond_9

    .line 160
    invoke-virtual/range {p0 .. p0}, Lph;->k()Z

    move-result v6

    if-eqz v6, :cond_7

    iget v6, v0, Lqk;->B:I

    .line 161
    invoke-virtual/range {p0 .. p0}, Lqk;->v()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, v0, Lph;->j:Lpv;

    .line 162
    invoke-virtual {v7, v3}, Lpv;->b(Landroid/view/View;)I

    move-result v7

    sub-int v7, v6, v7

    goto :goto_3

    .line 163
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lqk;->t()I

    move-result v7

    iget-object v6, v0, Lph;->j:Lpv;

    .line 164
    invoke-virtual {v6, v3}, Lpv;->b(Landroid/view/View;)I

    move-result v6

    add-int/2addr v6, v7

    .line 165
    :goto_3
    iget v9, v1, Lpe;->f:I

    if-ne v9, v8, :cond_8

    .line 166
    iget v1, v1, Lpe;->b:I

    .line 167
    iget v8, v2, Lpd;->a:I

    sub-int v8, v1, v8

    goto :goto_4

    .line 168
    :cond_8
    iget v8, v1, Lpe;->b:I

    .line 169
    iget v1, v2, Lpd;->a:I

    add-int/2addr v1, v8

    goto :goto_4

    .line 170
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lqk;->u()I

    move-result v6

    iget-object v7, v0, Lph;->j:Lpv;

    .line 171
    invoke-virtual {v7, v3}, Lpv;->b(Landroid/view/View;)I

    move-result v7

    add-int/2addr v7, v6

    .line 172
    iget v9, v1, Lpe;->f:I

    if-ne v9, v8, :cond_a

    .line 173
    iget v1, v1, Lpe;->b:I

    .line 174
    iget v8, v2, Lpd;->a:I

    sub-int v8, v1, v8

    move/from16 v16, v6

    move v6, v1

    move v1, v7

    move v7, v8

    move/from16 v8, v16

    goto :goto_4

    .line 175
    :cond_a
    iget v1, v1, Lpe;->b:I

    .line 176
    iget v8, v2, Lpd;->a:I

    add-int/2addr v8, v1

    move/from16 v16, v7

    move v7, v1

    move/from16 v1, v16

    move/from16 v17, v8

    move v8, v6

    move/from16 v6, v17

    .line 177
    :goto_4
    invoke-static {v3, v7, v8, v6, v1}, Lph;->a(Landroid/view/View;IIII)V

    .line 178
    invoke-virtual {v5}, Lql;->a()Z

    move-result v1

    if-nez v1, :cond_b

    invoke-virtual {v5}, Lql;->b()Z

    move-result v1

    if-eqz v1, :cond_c

    :cond_b
    iput-boolean v4, v2, Lpd;->c:Z

    .line 179
    :cond_c
    invoke-virtual {v3}, Landroid/view/View;->hasFocusable()Z

    move-result v1

    iput-boolean v1, v2, Lpd;->d:Z

    return-void
.end method

.method public a(Lqx;)V
    .locals 0

    const/4 p1, 0x0

    iput-object p1, p0, Lph;->n:Lpg;

    const/4 p1, -0x1

    iput p1, p0, Lph;->l:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lph;->m:I

    iget-object p1, p0, Lph;->o:Lpc;

    .line 332
    invoke-virtual {p1}, Lpc;->a()V

    return-void
.end method

.method public a(Lqx;Lpe;Lou;)V
    .locals 1

    .line 23
    iget v0, p2, Lpe;->d:I

    if-ltz v0, :cond_0

    .line 24
    invoke-virtual {p1}, Lqx;->a()I

    move-result p1

    if-ge v0, p1, :cond_0

    const/4 p1, 0x0

    .line 25
    iget p2, p2, Lpe;->g:I

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p3, v0, p1}, Lou;->a(II)V

    :cond_0
    return-void
.end method

.method protected a(Lqx;[I)V
    .locals 4

    iget p1, p1, Lqx;->a:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lph;->j:Lpv;

    .line 10
    invoke-virtual {p1}, Lpv;->d()I

    move-result p1

    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 10
    :goto_0
    iget-object v2, p0, Lph;->a:Lpe;

    .line 11
    iget v2, v2, Lpe;->f:I

    if-ne v2, v0, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    .line 13
    :cond_1
    move v3, p1

    .line 11
    :goto_1
    if-eq v2, v0, :cond_2

    const/4 p1, 0x0

    .line 12
    :cond_2
    aput p1, p2, v1

    const/4 p1, 0x1

    .line 13
    aput v3, p2, p1

    return-void
.end method

.method public b(ILqq;Lqx;)I
    .locals 1

    iget v0, p0, Lph;->i:I

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 387
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lph;->c(ILqq;Lqx;)I

    move-result p1

    return p1
.end method

.method public final b(Lqx;)I
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Lph;->h(Lqx;)I

    move-result p1

    return p1
.end method

.method public final b(I)Landroid/graphics/PointF;
    .locals 3

    .line 66
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 67
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lph;->i(Landroid/view/View;)I

    move-result v1

    const/4 v2, 0x1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 69
    :cond_1
    const/4 v0, 0x1

    .line 67
    :goto_0
    iget-boolean p1, p0, Lph;->k:Z

    if-eq v0, p1, :cond_2

    const/4 v2, -0x1

    goto :goto_1

    .line 69
    :cond_2
    nop

    .line 67
    :goto_1
    iget p1, p0, Lph;->i:I

    const/4 v0, 0x0

    if-nez p1, :cond_3

    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    .line 68
    invoke-direct {p1, v1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    int-to-float v1, v2

    .line 69
    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method final b(II)Landroid/view/View;
    .locals 3

    .line 101
    invoke-virtual {p0}, Lph;->l()V

    if-le p2, p1, :cond_0

    goto :goto_0

    .line 105
    :cond_0
    if-lt p2, p1, :cond_1

    .line 106
    invoke-virtual {p0, p1}, Lqk;->g(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 101
    :cond_1
    :goto_0
    iget-object v0, p0, Lph;->j:Lpv;

    .line 102
    invoke-virtual {p0, p1}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpv;->d(Landroid/view/View;)I

    move-result v0

    iget-object v1, p0, Lph;->j:Lpv;

    .line 103
    invoke-virtual {v1}, Lpv;->c()I

    move-result v1

    if-ge v0, v1, :cond_2

    const/16 v2, 0x4004

    goto :goto_1

    .line 105
    :cond_2
    const/16 v2, 0x1001

    .line 103
    :goto_1
    if-ge v0, v1, :cond_3

    const/16 v0, 0x4104

    goto :goto_2

    .line 105
    :cond_3
    const/16 v0, 0x1041

    .line 103
    :goto_2
    iget v1, p0, Lph;->i:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lph;->r:Lsa;

    .line 104
    invoke-virtual {v1, p1, p2, v0, v2}, Lsa;->a(IIII)Landroid/view/View;

    move-result-object p1

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lph;->s:Lsa;

    .line 105
    invoke-virtual {v1, p1, p2, v0, v2}, Lsa;->a(IIII)Landroid/view/View;

    move-result-object p1

    .line 104
    :goto_3
    return-object p1
.end method

.method final b(Z)Landroid/view/View;
    .locals 2

    iget-boolean v0, p0, Lph;->k:Z

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0, v1, p1}, Lph;->a(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0}, Lqk;->s()I

    move-result v1

    invoke-virtual {p0, v0, v1, p1}, Lph;->a(IIZ)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lph;->n:Lpg;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c(ILqq;Lqx;)I
    .locals 5

    .line 377
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    invoke-virtual {p0}, Lph;->l()V

    iget-object v0, p0, Lph;->a:Lpe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lpe;->a:Z

    if-lez p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    .line 383
    :cond_1
    const/4 v0, -0x1

    .line 379
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 380
    invoke-direct {p0, v0, v3, v2, p3}, Lph;->a(IIZLqx;)V

    iget-object v2, p0, Lph;->a:Lpe;

    .line 381
    iget v4, v2, Lpe;->g:I

    .line 382
    invoke-virtual {p0, p2, v2, p3, v1}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    move-result p2

    add-int/2addr v4, p2

    if-gez v4, :cond_2

    return v1

    :cond_2
    if-le v3, v4, :cond_3

    mul-int p1, v0, v4

    :cond_3
    iget-object p2, p0, Lph;->j:Lpv;

    neg-int p3, p1

    .line 383
    invoke-virtual {p2, p3}, Lpv;->a(I)V

    iget-object p2, p0, Lph;->a:Lpe;

    iput p1, p2, Lpe;->k:I

    return p1

    .line 377
    :cond_4
    :goto_1
    return v1
.end method

.method public final c(Lqx;)I
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lph;->h(Lqx;)I

    move-result p1

    return p1
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lph;->l:I

    const/high16 p1, -0x80000000

    iput p1, p0, Lph;->m:I

    iget-object p1, p0, Lph;->n:Lpg;

    if-eqz p1, :cond_0

    .line 385
    invoke-virtual {p1}, Lpg;->b()V

    .line 386
    :cond_0
    invoke-virtual {p0}, Lqk;->q()V

    return-void
.end method

.method public c(Lqq;Lqx;)V
    .locals 13

    iget-object v0, p0, Lph;->n:Lpg;

    const/4 v1, -0x1

    if-nez v0, :cond_0

    iget v0, p0, Lph;->l:I

    if-eq v0, v1, :cond_1

    .line 204
    :cond_0
    invoke-virtual {p2}, Lqx;->a()I

    move-result v0

    if-eqz v0, :cond_39

    :cond_1
    iget-object v0, p0, Lph;->n:Lpg;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lpg;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lph;->n:Lpg;

    .line 205
    iget v0, v0, Lpg;->a:I

    iput v0, p0, Lph;->l:I

    .line 206
    :cond_2
    invoke-virtual {p0}, Lph;->l()V

    iget-object v0, p0, Lph;->a:Lpe;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lpe;->a:Z

    .line 207
    invoke-direct {p0}, Lph;->A()V

    .line 208
    invoke-virtual {p0}, Lqk;->x()Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lph;->o:Lpc;

    .line 209
    iget-boolean v4, v3, Lpc;->e:Z

    const/high16 v5, -0x80000000

    const/4 v6, 0x1

    if-eqz v4, :cond_5

    iget v4, p0, Lph;->l:I

    if-ne v4, v1, :cond_5

    iget-object v4, p0, Lph;->n:Lpg;

    if-eqz v4, :cond_3

    goto :goto_0

    .line 245
    :cond_3
    if-eqz v0, :cond_1e

    iget-object v3, p0, Lph;->j:Lpv;

    .line 249
    invoke-virtual {v3, v0}, Lpv;->d(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lph;->j:Lpv;

    .line 250
    invoke-virtual {v4}, Lpv;->a()I

    move-result v4

    if-ge v3, v4, :cond_4

    iget-object v3, p0, Lph;->j:Lpv;

    .line 251
    invoke-virtual {v3, v0}, Lpv;->c(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lph;->j:Lpv;

    .line 252
    invoke-virtual {v4}, Lpv;->c()I

    move-result v4

    if-gt v3, v4, :cond_1e

    :cond_4
    iget-object v3, p0, Lph;->o:Lpc;

    .line 253
    invoke-static {v0}, Lph;->i(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lpc;->a(Landroid/view/View;I)V

    goto/16 :goto_b

    .line 210
    :cond_5
    :goto_0
    invoke-virtual {v3}, Lpc;->a()V

    iget-object v0, p0, Lph;->o:Lpc;

    iget-boolean v3, p0, Lph;->k:Z

    iput-boolean v3, v0, Lpc;->d:Z

    iget-boolean v3, p2, Lqx;->g:Z

    if-nez v3, :cond_15

    iget v3, p0, Lph;->l:I

    if-ne v3, v1, :cond_6

    goto/16 :goto_5

    .line 225
    :cond_6
    if-ltz v3, :cond_14

    .line 211
    invoke-virtual {p2}, Lqx;->a()I

    move-result v4

    if-lt v3, v4, :cond_7

    goto/16 :goto_4

    :cond_7
    iget v3, p0, Lph;->l:I

    iput v3, v0, Lpc;->b:I

    iget-object v3, p0, Lph;->n:Lpg;

    if-eqz v3, :cond_9

    invoke-virtual {v3}, Lpg;->a()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lph;->n:Lpg;

    .line 246
    iget-boolean v3, v3, Lpg;->c:Z

    iput-boolean v3, v0, Lpc;->d:Z

    if-eqz v3, :cond_8

    iget-object v3, p0, Lph;->j:Lpv;

    .line 247
    invoke-virtual {v3}, Lpv;->a()I

    move-result v3

    iget-object v4, p0, Lph;->n:Lpg;

    iget v4, v4, Lpg;->b:I

    sub-int/2addr v3, v4

    iput v3, v0, Lpc;->c:I

    goto/16 :goto_a

    :cond_8
    iget-object v3, p0, Lph;->j:Lpv;

    .line 248
    invoke-virtual {v3}, Lpv;->c()I

    move-result v3

    iget-object v4, p0, Lph;->n:Lpg;

    iget v4, v4, Lpg;->b:I

    add-int/2addr v3, v4

    iput v3, v0, Lpc;->c:I

    goto/16 :goto_a

    :cond_9
    iget v3, p0, Lph;->m:I

    if-ne v3, v5, :cond_12

    iget v3, p0, Lph;->l:I

    .line 227
    invoke-virtual {p0, v3}, Lqk;->a(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_e

    iget-object v4, p0, Lph;->j:Lpv;

    .line 228
    invoke-virtual {v4, v3}, Lpv;->a(Landroid/view/View;)I

    move-result v4

    iget-object v7, p0, Lph;->j:Lpv;

    .line 229
    invoke-virtual {v7}, Lpv;->d()I

    move-result v7

    if-le v4, v7, :cond_a

    .line 230
    invoke-virtual {v0}, Lpc;->b()V

    goto/16 :goto_a

    :cond_a
    iget-object v4, p0, Lph;->j:Lpv;

    .line 231
    invoke-virtual {v4, v3}, Lpv;->d(Landroid/view/View;)I

    move-result v4

    iget-object v7, p0, Lph;->j:Lpv;

    .line 232
    invoke-virtual {v7}, Lpv;->c()I

    move-result v7

    sub-int/2addr v4, v7

    if-gez v4, :cond_b

    iget-object v3, p0, Lph;->j:Lpv;

    .line 233
    invoke-virtual {v3}, Lpv;->c()I

    move-result v3

    iput v3, v0, Lpc;->c:I

    iput-boolean v2, v0, Lpc;->d:Z

    goto/16 :goto_a

    :cond_b
    iget-object v4, p0, Lph;->j:Lpv;

    .line 234
    invoke-virtual {v4}, Lpv;->a()I

    move-result v4

    iget-object v7, p0, Lph;->j:Lpv;

    .line 235
    invoke-virtual {v7, v3}, Lpv;->c(Landroid/view/View;)I

    move-result v7

    sub-int/2addr v4, v7

    if-gez v4, :cond_c

    iget-object v3, p0, Lph;->j:Lpv;

    .line 236
    invoke-virtual {v3}, Lpv;->a()I

    move-result v3

    iput v3, v0, Lpc;->c:I

    iput-boolean v6, v0, Lpc;->d:Z

    goto/16 :goto_a

    .line 237
    :cond_c
    iget-boolean v4, v0, Lpc;->d:Z

    if-eqz v4, :cond_d

    iget-object v4, p0, Lph;->j:Lpv;

    .line 238
    invoke-virtual {v4, v3}, Lpv;->c(Landroid/view/View;)I

    move-result v3

    iget-object v4, p0, Lph;->j:Lpv;

    .line 239
    invoke-virtual {v4}, Lpv;->h()I

    move-result v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_d
    iget-object v4, p0, Lph;->j:Lpv;

    .line 240
    invoke-virtual {v4, v3}, Lpv;->d(Landroid/view/View;)I

    move-result v3

    .line 239
    :goto_1
    iput v3, v0, Lpc;->c:I

    goto/16 :goto_a

    .line 241
    :cond_e
    invoke-virtual {p0}, Lqk;->s()I

    move-result v3

    if-lez v3, :cond_11

    .line 242
    invoke-virtual {p0, v2}, Lqk;->g(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3}, Lph;->i(Landroid/view/View;)I

    move-result v3

    iget v4, p0, Lph;->l:I

    if-lt v4, v3, :cond_f

    const/4 v3, 0x0

    goto :goto_2

    .line 243
    :cond_f
    const/4 v3, 0x1

    .line 242
    :goto_2
    iget-boolean v4, p0, Lph;->k:Z

    if-ne v3, v4, :cond_10

    const/4 v3, 0x1

    goto :goto_3

    .line 243
    :cond_10
    const/4 v3, 0x0

    .line 242
    :goto_3
    iput-boolean v3, v0, Lpc;->d:Z

    .line 243
    :cond_11
    invoke-virtual {v0}, Lpc;->b()V

    goto/16 :goto_a

    :cond_12
    iget-boolean v3, p0, Lph;->k:Z

    iput-boolean v3, v0, Lpc;->d:Z

    if-eqz v3, :cond_13

    iget-object v3, p0, Lph;->j:Lpv;

    .line 244
    invoke-virtual {v3}, Lpv;->a()I

    move-result v3

    iget v4, p0, Lph;->m:I

    sub-int/2addr v3, v4

    iput v3, v0, Lpc;->c:I

    goto/16 :goto_a

    :cond_13
    iget-object v3, p0, Lph;->j:Lpv;

    .line 245
    invoke-virtual {v3}, Lpv;->c()I

    move-result v3

    iget v4, p0, Lph;->m:I

    add-int/2addr v3, v4

    iput v3, v0, Lpc;->c:I

    goto/16 :goto_a

    .line 211
    :cond_14
    :goto_4
    iput v1, p0, Lph;->l:I

    iput v5, p0, Lph;->m:I

    .line 212
    :cond_15
    :goto_5
    invoke-virtual {p0}, Lqk;->s()I

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_9

    .line 213
    :cond_16
    invoke-virtual {p0}, Lqk;->x()Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_17

    .line 214
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lql;

    .line 215
    invoke-virtual {v4}, Lql;->a()Z

    move-result v7

    if-nez v7, :cond_17

    invoke-virtual {v4}, Lql;->c()I

    move-result v7

    if-ltz v7, :cond_17

    .line 216
    invoke-virtual {v4}, Lql;->c()I

    move-result v4

    invoke-virtual {p2}, Lqx;->a()I

    move-result v7

    if-ge v4, v7, :cond_17

    .line 226
    invoke-static {v3}, Lph;->i(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lpc;->a(Landroid/view/View;I)V

    goto :goto_a

    .line 217
    :cond_17
    iget-boolean v3, v0, Lpc;->d:Z

    .line 218
    invoke-virtual {p0, p1, p2, v3}, Lph;->a(Lqq;Lqx;Z)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1c

    .line 220
    invoke-static {v3}, Lph;->i(Landroid/view/View;)I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lpc;->b(Landroid/view/View;I)V

    iget-boolean v4, p2, Lqx;->g:Z

    if-nez v4, :cond_1d

    invoke-virtual {p0}, Lqk;->b()Z

    move-result v4

    if-eqz v4, :cond_1d

    iget-object v4, p0, Lph;->j:Lpv;

    .line 221
    invoke-virtual {v4, v3}, Lpv;->d(Landroid/view/View;)I

    move-result v4

    iget-object v7, p0, Lph;->j:Lpv;

    .line 222
    invoke-virtual {v7, v3}, Lpv;->c(Landroid/view/View;)I

    move-result v3

    iget-object v7, p0, Lph;->j:Lpv;

    .line 223
    invoke-virtual {v7}, Lpv;->c()I

    move-result v7

    iget-object v8, p0, Lph;->j:Lpv;

    .line 224
    invoke-virtual {v8}, Lpv;->a()I

    move-result v8

    if-gt v3, v7, :cond_18

    if-ge v4, v7, :cond_18

    const/4 v9, 0x1

    goto :goto_6

    .line 225
    :cond_18
    const/4 v9, 0x0

    .line 224
    :goto_6
    if-lt v4, v8, :cond_19

    if-le v3, v8, :cond_19

    const/4 v3, 0x1

    goto :goto_7

    .line 225
    :cond_19
    const/4 v3, 0x0

    .line 224
    :goto_7
    if-nez v9, :cond_1a

    if-eqz v3, :cond_1d

    .line 225
    :cond_1a
    iget-boolean v3, v0, Lpc;->d:Z

    if-eq v6, v3, :cond_1b

    goto :goto_8

    :cond_1b
    move v7, v8

    :goto_8
    iput v7, v0, Lpc;->c:I

    goto :goto_a

    .line 219
    :cond_1c
    :goto_9
    invoke-virtual {v0}, Lpc;->b()V

    iput v2, v0, Lpc;->b:I

    :cond_1d
    :goto_a
    iget-object v0, p0, Lph;->o:Lpc;

    iput-boolean v6, v0, Lpc;->e:Z

    :cond_1e
    :goto_b
    iget-object v0, p0, Lph;->a:Lpe;

    .line 254
    iget v3, v0, Lpe;->k:I

    if-ltz v3, :cond_1f

    const/4 v3, 0x1

    goto :goto_c

    .line 266
    :cond_1f
    const/4 v3, -0x1

    .line 254
    :goto_c
    iput v3, v0, Lpe;->f:I

    iget-object v0, p0, Lph;->e:[I

    .line 255
    aput v2, v0, v2

    .line 256
    aput v2, v0, v6

    .line 257
    invoke-virtual {p0, p2, v0}, Lph;->a(Lqx;[I)V

    iget-object v0, p0, Lph;->e:[I

    .line 258
    aget v0, v0, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Lph;->j:Lpv;

    .line 259
    invoke-virtual {v3}, Lpv;->c()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lph;->e:[I

    .line 260
    aget v3, v3, v6

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget-object v4, p0, Lph;->j:Lpv;

    .line 261
    invoke-virtual {v4}, Lpv;->e()I

    move-result v4

    add-int/2addr v3, v4

    iget-boolean v4, p2, Lqx;->g:Z

    if-eqz v4, :cond_22

    iget v4, p0, Lph;->l:I

    if-eq v4, v1, :cond_22

    iget v7, p0, Lph;->m:I

    if-eq v7, v5, :cond_22

    .line 262
    invoke-virtual {p0, v4}, Lqk;->a(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_22

    iget-boolean v5, p0, Lph;->k:Z

    if-eqz v5, :cond_20

    iget-object v5, p0, Lph;->j:Lpv;

    .line 263
    invoke-virtual {v5}, Lpv;->a()I

    move-result v5

    iget-object v7, p0, Lph;->j:Lpv;

    .line 264
    invoke-virtual {v7, v4}, Lpv;->c(Landroid/view/View;)I

    move-result v4

    sub-int/2addr v5, v4

    iget v4, p0, Lph;->m:I

    sub-int/2addr v5, v4

    goto :goto_d

    .line 307
    :cond_20
    iget-object v5, p0, Lph;->j:Lpv;

    .line 265
    invoke-virtual {v5, v4}, Lpv;->d(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lph;->j:Lpv;

    .line 266
    invoke-virtual {v5}, Lpv;->c()I

    move-result v5

    iget v7, p0, Lph;->m:I

    sub-int/2addr v4, v5

    sub-int v5, v7, v4

    .line 264
    :goto_d
    if-lez v5, :cond_21

    add-int/2addr v0, v5

    goto :goto_e

    .line 307
    :cond_21
    sub-int/2addr v3, v5

    goto :goto_e

    .line 266
    :cond_22
    nop

    .line 264
    :goto_e
    iget-object v4, p0, Lph;->o:Lpc;

    .line 267
    iget-boolean v5, v4, Lpc;->d:Z

    if-eqz v5, :cond_23

    iget-boolean v5, p0, Lph;->k:Z

    if-eq v6, v5, :cond_24

    const/4 v5, -0x1

    goto :goto_f

    .line 307
    :cond_23
    iget-boolean v5, p0, Lph;->k:Z

    if-eq v6, v5, :cond_25

    :cond_24
    const/4 v5, 0x1

    goto :goto_f

    :cond_25
    const/4 v5, -0x1

    .line 268
    :goto_f
    invoke-virtual {p0, p1, p2, v4, v5}, Lph;->a(Lqq;Lqx;Lpc;I)V

    .line 269
    invoke-virtual {p0}, Lqk;->s()I

    move-result v4

    add-int/2addr v4, v1

    :goto_10
    if-ltz v4, :cond_28

    .line 270
    invoke-virtual {p0, v4}, Lqk;->g(I)Landroid/view/View;

    move-result-object v1

    .line 271
    invoke-static {v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)Lqz;

    move-result-object v5

    .line 272
    invoke-virtual {v5}, Lqz;->w()Z

    move-result v7

    if-eqz v7, :cond_26

    goto :goto_11

    .line 273
    :cond_26
    invoke-virtual {v5}, Lqz;->j()Z

    move-result v7

    if-eqz v7, :cond_27

    invoke-virtual {v5}, Lqz;->m()Z

    move-result v7

    if-nez v7, :cond_27

    iget-object v7, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v7, v7, Landroid/support/v7/widget/RecyclerView;->j:Lqc;

    iget-boolean v7, v7, Lqc;->b:Z

    if-nez v7, :cond_27

    .line 278
    invoke-virtual {p0, v4}, Lqk;->e(I)V

    .line 279
    invoke-virtual {p1, v5}, Lqq;->a(Lqz;)V

    goto :goto_11

    .line 274
    :cond_27
    invoke-virtual {p0, v4}, Lqk;->f(I)V

    .line 275
    invoke-virtual {p1, v1}, Lqq;->c(Landroid/view/View;)V

    iget-object v1, p0, Lqk;->q:Landroid/support/v7/widget/RecyclerView;

    .line 276
    iget-object v1, v1, Landroid/support/v7/widget/RecyclerView;->e:Lsc;

    .line 277
    invoke-virtual {v1, v5}, Lsc;->c(Lqz;)V

    .line 272
    :goto_11
    add-int/lit8 v4, v4, -0x1

    goto :goto_10

    .line 277
    :cond_28
    iget-object v1, p0, Lph;->a:Lpe;

    .line 280
    invoke-virtual {p0}, Lph;->m()Z

    move-result v4

    iput-boolean v4, v1, Lpe;->m:Z

    iget-object v1, p0, Lph;->a:Lpe;

    iget-boolean v4, p2, Lqx;->g:Z

    iput-boolean v4, v1, Lpe;->j:Z

    iput v2, v1, Lpe;->i:I

    iget-object v1, p0, Lph;->o:Lpc;

    .line 281
    iget-boolean v4, v1, Lpc;->d:Z

    if-eqz v4, :cond_2b

    .line 282
    invoke-direct {p0, v1}, Lph;->b(Lpc;)V

    iget-object v1, p0, Lph;->a:Lpe;

    iput v0, v1, Lpe;->h:I

    .line 283
    invoke-virtual {p0, p1, v1, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    iget-object v0, p0, Lph;->a:Lpe;

    .line 284
    iget v1, v0, Lpe;->b:I

    .line 285
    iget v4, v0, Lpe;->d:I

    .line 286
    iget v0, v0, Lpe;->c:I

    if-lez v0, :cond_29

    add-int/2addr v3, v0

    goto :goto_12

    .line 312
    :cond_29
    nop

    .line 286
    :goto_12
    iget-object v0, p0, Lph;->o:Lpc;

    .line 287
    invoke-direct {p0, v0}, Lph;->a(Lpc;)V

    iget-object v0, p0, Lph;->a:Lpe;

    iput v3, v0, Lpe;->h:I

    .line 288
    iget v3, v0, Lpe;->d:I

    iget v5, v0, Lpe;->e:I

    add-int/2addr v3, v5

    iput v3, v0, Lpe;->d:I

    .line 289
    invoke-virtual {p0, p1, v0, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    iget-object v0, p0, Lph;->a:Lpe;

    .line 290
    iget v3, v0, Lpe;->b:I

    .line 291
    iget v0, v0, Lpe;->c:I

    if-lez v0, :cond_2a

    .line 292
    invoke-direct {p0, v4, v1}, Lph;->g(II)V

    iget-object v1, p0, Lph;->a:Lpe;

    iput v0, v1, Lpe;->h:I

    .line 293
    invoke-virtual {p0, p1, v1, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    iget-object v0, p0, Lph;->a:Lpe;

    .line 294
    iget v1, v0, Lpe;->b:I

    goto :goto_13

    .line 312
    :cond_2a
    goto :goto_13

    .line 295
    :cond_2b
    invoke-direct {p0, v1}, Lph;->a(Lpc;)V

    iget-object v1, p0, Lph;->a:Lpe;

    iput v3, v1, Lpe;->h:I

    .line 296
    invoke-virtual {p0, p1, v1, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    iget-object v1, p0, Lph;->a:Lpe;

    .line 297
    iget v3, v1, Lpe;->b:I

    .line 298
    iget v4, v1, Lpe;->d:I

    .line 299
    iget v1, v1, Lpe;->c:I

    if-lez v1, :cond_2c

    add-int/2addr v0, v1

    :cond_2c
    iget-object v1, p0, Lph;->o:Lpc;

    .line 300
    invoke-direct {p0, v1}, Lph;->b(Lpc;)V

    iget-object v1, p0, Lph;->a:Lpe;

    iput v0, v1, Lpe;->h:I

    .line 301
    iget v0, v1, Lpe;->d:I

    iget v5, v1, Lpe;->e:I

    add-int/2addr v0, v5

    iput v0, v1, Lpe;->d:I

    .line 302
    invoke-virtual {p0, p1, v1, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    iget-object v0, p0, Lph;->a:Lpe;

    .line 303
    iget v1, v0, Lpe;->b:I

    .line 304
    iget v0, v0, Lpe;->c:I

    if-lez v0, :cond_2d

    .line 305
    invoke-direct {p0, v4, v3}, Lph;->a(II)V

    iget-object v3, p0, Lph;->a:Lpe;

    iput v0, v3, Lpe;->h:I

    .line 306
    invoke-virtual {p0, p1, v3, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    iget-object v0, p0, Lph;->a:Lpe;

    .line 307
    iget v3, v0, Lpe;->b:I

    goto :goto_13

    :cond_2d
    nop

    .line 308
    :goto_13
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    if-lez v0, :cond_2f

    iget-boolean v0, p0, Lph;->k:Z

    if-eqz v0, :cond_2e

    .line 309
    invoke-direct {p0, v3, p1, p2, v6}, Lph;->a(ILqq;Lqx;Z)I

    move-result v0

    add-int/2addr v1, v0

    .line 310
    invoke-direct {p0, v1, p1, p2, v2}, Lph;->b(ILqq;Lqx;Z)I

    move-result v4

    add-int/2addr v1, v4

    add-int/2addr v3, v0

    add-int/2addr v3, v4

    goto :goto_14

    .line 328
    :cond_2e
    nop

    .line 311
    invoke-direct {p0, v1, p1, p2, v6}, Lph;->b(ILqq;Lqx;Z)I

    move-result v0

    add-int/2addr v3, v0

    .line 312
    invoke-direct {p0, v3, p1, p2, v2}, Lph;->a(ILqq;Lqx;Z)I

    move-result v4

    add-int/2addr v1, v0

    add-int/2addr v1, v4

    add-int/2addr v3, v4

    goto :goto_14

    :cond_2f
    nop

    .line 310
    :goto_14
    iget-boolean v0, p2, Lqx;->k:Z

    if-eqz v0, :cond_37

    .line 313
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    if-eqz v0, :cond_37

    iget-boolean v0, p2, Lqx;->g:Z

    if-nez v0, :cond_37

    invoke-virtual {p0}, Lqk;->b()Z

    move-result v0

    if-nez v0, :cond_30

    goto/16 :goto_18

    .line 330
    :cond_30
    iget-object v0, p1, Lqq;->d:Ljava/util/List;

    .line 314
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    .line 315
    invoke-virtual {p0, v2}, Lqk;->g(I)Landroid/view/View;

    move-result-object v5

    invoke-static {v5}, Lph;->i(Landroid/view/View;)I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_15
    if-ge v7, v4, :cond_34

    .line 316
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lqz;

    .line 317
    invoke-virtual {v10}, Lqz;->m()Z

    move-result v11

    if-eqz v11, :cond_31

    goto :goto_17

    .line 318
    :cond_31
    invoke-virtual {v10}, Lqz;->c()I

    move-result v11

    if-lt v11, v5, :cond_32

    const/4 v11, 0x0

    goto :goto_16

    .line 320
    :cond_32
    const/4 v11, 0x1

    .line 318
    :goto_16
    iget-boolean v12, p0, Lph;->k:Z

    if-eq v11, v12, :cond_33

    iget-object v11, p0, Lph;->j:Lpv;

    .line 319
    iget-object v10, v10, Lqz;->a:Landroid/view/View;

    invoke-virtual {v11, v10}, Lpv;->a(Landroid/view/View;)I

    move-result v10

    add-int/2addr v8, v10

    goto :goto_17

    :cond_33
    iget-object v11, p0, Lph;->j:Lpv;

    .line 320
    iget-object v10, v10, Lqz;->a:Landroid/view/View;

    invoke-virtual {v11, v10}, Lpv;->a(Landroid/view/View;)I

    move-result v10

    add-int/2addr v9, v10

    .line 317
    :goto_17
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 320
    :cond_34
    iget-object v4, p0, Lph;->a:Lpe;

    iput-object v0, v4, Lpe;->l:Ljava/util/List;

    if-lez v8, :cond_35

    .line 321
    invoke-direct {p0}, Lph;->B()Landroid/view/View;

    move-result-object v0

    .line 322
    invoke-static {v0}, Lph;->i(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v1}, Lph;->g(II)V

    iget-object v0, p0, Lph;->a:Lpe;

    iput v8, v0, Lpe;->h:I

    iput v2, v0, Lpe;->c:I

    .line 323
    invoke-virtual {v0}, Lpe;->a()V

    iget-object v0, p0, Lph;->a:Lpe;

    .line 324
    invoke-virtual {p0, p1, v0, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    :cond_35
    if-lez v9, :cond_36

    .line 325
    invoke-direct {p0}, Lph;->C()Landroid/view/View;

    move-result-object v0

    .line 326
    invoke-static {v0}, Lph;->i(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, v0, v3}, Lph;->a(II)V

    iget-object v0, p0, Lph;->a:Lpe;

    iput v9, v0, Lpe;->h:I

    iput v2, v0, Lpe;->c:I

    .line 327
    invoke-virtual {v0}, Lpe;->a()V

    iget-object v0, p0, Lph;->a:Lpe;

    .line 328
    invoke-virtual {p0, p1, v0, p2, v2}, Lph;->a(Lqq;Lpe;Lqx;Z)I

    :cond_36
    iget-object p1, p0, Lph;->a:Lpe;

    const/4 v0, 0x0

    iput-object v0, p1, Lpe;->l:Ljava/util/List;

    .line 313
    :cond_37
    :goto_18
    iget-boolean p1, p2, Lqx;->g:Z

    if-nez p1, :cond_38

    iget-object p1, p0, Lph;->j:Lpv;

    .line 329
    invoke-virtual {p1}, Lpv;->d()I

    move-result p2

    iput p2, p1, Lpv;->b:I

    return-void

    :cond_38
    iget-object p1, p0, Lph;->o:Lpc;

    .line 330
    invoke-virtual {p1}, Lpc;->a()V

    return-void

    .line 331
    :cond_39
    invoke-virtual {p0, p1}, Lqk;->b(Lqq;)V

    return-void
.end method

.method final d(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_b

    const/4 v2, 0x2

    if-eq p1, v2, :cond_8

    const/16 v2, 0x11

    const/high16 v3, -0x80000000

    if-eq p1, v2, :cond_6

    const/16 v2, 0x21

    if-eq p1, v2, :cond_4

    const/16 v0, 0x42

    if-eq p1, v0, :cond_2

    const/16 v0, 0x82

    if-eq p1, v0, :cond_0

    .line 73
    return v3

    .line 74
    :cond_0
    iget p1, p0, Lph;->i:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v3

    :cond_2
    iget p1, p0, Lph;->i:I

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v3

    :cond_4
    iget p1, p0, Lph;->i:I

    if-ne p1, v1, :cond_5

    return v0

    :cond_5
    return v3

    :cond_6
    iget p1, p0, Lph;->i:I

    if-nez p1, :cond_7

    return v0

    :cond_7
    return v3

    :cond_8
    iget p1, p0, Lph;->i:I

    if-ne p1, v1, :cond_9

    return v1

    .line 73
    :cond_9
    invoke-virtual {p0}, Lph;->k()Z

    move-result p1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    return v1

    .line 0
    :cond_b
    iget p1, p0, Lph;->i:I

    if-ne p1, v1, :cond_c

    return v0

    .line 74
    :cond_c
    invoke-virtual {p0}, Lph;->k()Z

    move-result p1

    if-eqz p1, :cond_d

    return v1

    :cond_d
    return v0
.end method

.method public final d(Lqx;)I
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lph;->i(Lqx;)I

    move-result p1

    return p1
.end method

.method public final e(Lqx;)I
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lph;->i(Lqx;)I

    move-result p1

    return p1
.end method

.method public final f(Lqx;)I
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lph;->j(Lqx;)I

    move-result p1

    return p1
.end method

.method public final g(Lqx;)I
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lph;->j(Lqx;)I

    move-result p1

    return p1
.end method

.method public final g()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final h()Landroid/os/Parcelable;
    .locals 4

    iget-object v0, p0, Lph;->n:Lpg;

    if-eqz v0, :cond_0

    new-instance v1, Lpg;

    .line 337
    invoke-direct {v1, v0}, Lpg;-><init>(Lpg;)V

    return-object v1

    :cond_0
    new-instance v0, Lpg;

    invoke-direct {v0}, Lpg;-><init>()V

    .line 338
    invoke-virtual {p0}, Lqk;->s()I

    move-result v1

    if-lez v1, :cond_2

    .line 339
    invoke-virtual {p0}, Lph;->l()V

    iget-boolean v1, p0, Lph;->k:Z

    iput-boolean v1, v0, Lpg;->c:Z

    if-eqz v1, :cond_1

    .line 340
    invoke-direct {p0}, Lph;->C()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lph;->j:Lpv;

    .line 341
    invoke-virtual {v2}, Lpv;->a()I

    move-result v2

    iget-object v3, p0, Lph;->j:Lpv;

    .line 342
    invoke-virtual {v3, v1}, Lpv;->c(Landroid/view/View;)I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, v0, Lpg;->b:I

    .line 343
    invoke-static {v1}, Lph;->i(Landroid/view/View;)I

    move-result v1

    iput v1, v0, Lpg;->a:I

    goto :goto_0

    .line 344
    :cond_1
    invoke-direct {p0}, Lph;->B()Landroid/view/View;

    move-result-object v1

    .line 345
    invoke-static {v1}, Lph;->i(Landroid/view/View;)I

    move-result v2

    iput v2, v0, Lpg;->a:I

    iget-object v2, p0, Lph;->j:Lpv;

    .line 346
    invoke-virtual {v2, v1}, Lpv;->d(Landroid/view/View;)I

    move-result v1

    iget-object v2, p0, Lph;->j:Lpv;

    .line 347
    invoke-virtual {v2}, Lpv;->c()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, v0, Lpg;->b:I

    goto :goto_0

    .line 348
    :cond_2
    invoke-virtual {v0}, Lpg;->b()V

    .line 343
    :goto_0
    return-object v0
.end method

.method public final i()Z
    .locals 1

    iget v0, p0, Lph;->i:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final j()Z
    .locals 2

    iget v0, p0, Lph;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final k()Z
    .locals 2

    .line 139
    invoke-virtual {p0}, Lqk;->r()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final l()V
    .locals 1

    iget-object v0, p0, Lph;->a:Lpe;

    if-nez v0, :cond_0

    new-instance v0, Lpe;

    .line 75
    invoke-direct {v0}, Lpe;-><init>()V

    iput-object v0, p0, Lph;->a:Lpe;

    :cond_0
    return-void
.end method

.method final m()Z
    .locals 1

    iget-object v0, p0, Lph;->j:Lpv;

    .line 374
    invoke-virtual {v0}, Lpv;->f()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lph;->j:Lpv;

    .line 375
    invoke-virtual {v0}, Lpv;->b()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()Z
    .locals 5

    iget v0, p0, Lqk;->A:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_2

    iget v0, p0, Lqk;->z:I

    if-eq v0, v2, :cond_2

    .line 388
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 389
    invoke-virtual {p0, v2}, Lqk;->g(I)Landroid/view/View;

    move-result-object v3

    .line 390
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 391
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final o()I
    .locals 2

    .line 96
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1}, Lph;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 97
    :cond_0
    invoke-static {v0}, Lph;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public final p()I
    .locals 3

    .line 99
    invoke-virtual {p0}, Lqk;->s()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lph;->a(IIZ)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return v1

    .line 100
    :cond_0
    invoke-static {v0}, Lph;->i(Landroid/view/View;)I

    move-result v0

    return v0
.end method
