.class public Lcne;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/os/health/HealthStats;I)J
    .locals 1

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasMeasurement(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getMeasurement(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    :goto_0
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public static a(Ljava/lang/String;)Leja;
    .locals 3

    .line 7
    sget-object v0, Leja;->d:Leja;

    .line 8
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v0}, Ldjy;->b()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_0
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 10
    check-cast v1, Leja;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v1, Leja;->a:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Leja;->a:I

    iput-object p0, v1, Leja;->c:Ljava/lang/String;

    .line 7
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p0

    check-cast p0, Leja;

    return-object p0
.end method

.method public static a(Lejg;Lejg;)Lejg;
    .locals 5

    if-eqz p0, :cond_5

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lejg;->b:I

    iget v1, p1, Lejg;->b:I

    sub-int/2addr v0, v1

    iget-wide v1, p0, Lejg;->c:J

    iget-wide v3, p1, Lejg;->c:J

    sub-long/2addr v1, v3

    const/4 p1, 0x0

    if-nez v0, :cond_2

    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    .line 29
    :cond_1
    const/4 p0, 0x0

    return-object p0

    :cond_2
    nop

    .line 0
    :goto_0
    sget-object v3, Lejg;->e:Lejg;

    .line 24
    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    iget-object p0, p0, Lejg;->d:Leja;

    if-nez p0, :cond_3

    .line 25
    sget-object p0, Leja;->d:Leja;

    :cond_3
    iget-boolean v4, v3, Ldjy;->b:Z

    if-eqz v4, :cond_4

    .line 26
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean p1, v3, Ldjy;->b:Z

    :cond_4
    iget-object p1, v3, Ldjy;->a:Ldkd;

    .line 27
    check-cast p1, Lejg;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lejg;->d:Leja;

    iget p0, p1, Lejg;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lejg;->a:I

    or-int/lit8 p0, p0, 0x1

    iput p0, p1, Lejg;->a:I

    iput v0, p1, Lejg;->b:I

    or-int/lit8 p0, p0, 0x2

    iput p0, p1, Lejg;->a:I

    iput-wide v1, p1, Lejg;->c:J

    .line 29
    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object p0

    check-cast p0, Lejg;

    return-object p0

    .line 0
    :cond_5
    :goto_1
    return-object p0
.end method

.method public static a(Ljava/lang/String;Landroid/os/health/TimerStat;)Lejg;
    .locals 5

    .line 226
    sget-object v0, Lejg;->e:Lejg;

    .line 227
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    .line 226
    invoke-virtual {p1}, Landroid/os/health/TimerStat;->getCount()I

    move-result v1

    iget-boolean v2, v0, Ldjy;->b:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 228
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_0
    iget-object v2, v0, Ldjy;->a:Ldkd;

    .line 229
    check-cast v2, Lejg;

    iget v4, v2, Lejg;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v2, Lejg;->a:I

    iput v1, v2, Lejg;->b:I

    .line 226
    invoke-virtual {p1}, Landroid/os/health/TimerStat;->getTime()J

    move-result-wide v1

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_1

    .line 230
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_1
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 231
    check-cast p1, Lejg;

    iget v4, p1, Lejg;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Lejg;->a:I

    iput-wide v1, p1, Lejg;->c:J

    iget v1, p1, Lejg;->b:I

    if-gez v1, :cond_2

    or-int/lit8 v1, v4, 0x1

    iput v1, p1, Lejg;->a:I

    iput v3, p1, Lejg;->b:I

    :cond_2
    if-eqz p0, :cond_4

    .line 232
    invoke-static {p0}, Lcne;->a(Ljava/lang/String;)Leja;

    move-result-object p0

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_3

    .line 233
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v3, v0, Ldjy;->b:Z

    :cond_3
    iget-object p1, v0, Ldjy;->a:Ldkd;

    .line 234
    check-cast p1, Lejg;

    .line 235
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lejg;->d:Leja;

    iget p0, p1, Lejg;->a:I

    or-int/lit8 p0, p0, 0x4

    iput p0, p1, Lejg;->a:I

    :cond_4
    iget-object p0, v0, Ldjy;->a:Ldkd;

    .line 236
    check-cast p0, Lejg;

    iget p1, p0, Lejg;->b:I

    if-nez p1, :cond_5

    iget-wide p0, p0, Lejg;->c:J

    const-wide/16 v1, 0x0

    cmp-long v3, p0, v1

    if-nez v3, :cond_5

    const/4 p0, 0x0

    return-object p0

    .line 237
    :cond_5
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p0

    check-cast p0, Lejg;

    return-object p0
.end method

.method public static a(Lejh;Lejh;)Lejh;
    .locals 12

    if-eqz p0, :cond_a5

    if-nez p1, :cond_0

    goto/16 :goto_20

    :cond_0
    sget-object v0, Lejh;->ar:Lejh;

    .line 30
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x1

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    iget-wide v5, p0, Lejh;->c:J

    iget-wide v7, p1, Lejh;->c:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_2

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 32
    check-cast v1, Lejh;

    iget v7, v1, Lejh;->a:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v1, Lejh;->a:I

    iput-wide v5, v1, Lejh;->c:J

    :cond_2
    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_4

    iget-wide v5, p0, Lejh;->d:J

    iget-wide v7, p1, Lejh;->d:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_4

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_3

    .line 33
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_3
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 34
    check-cast v1, Lejh;

    iget v7, v1, Lejh;->a:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v1, Lejh;->a:I

    iput-wide v5, v1, Lejh;->d:J

    :cond_4
    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_6

    iget-wide v5, p0, Lejh;->e:J

    iget-wide v7, p1, Lejh;->e:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_6

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_5

    .line 35
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_5
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 36
    check-cast v1, Lejh;

    iget v7, v1, Lejh;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v1, Lejh;->a:I

    iput-wide v5, v1, Lejh;->e:J

    :cond_6
    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    iget-wide v5, p0, Lejh;->f:J

    iget-wide v7, p1, Lejh;->f:J

    sub-long/2addr v5, v7

    cmp-long v1, v5, v2

    if-eqz v1, :cond_8

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_7

    .line 37
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_7
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 38
    check-cast v1, Lejh;

    iget v7, v1, Lejh;->a:I

    or-int/lit8 v7, v7, 0x8

    iput v7, v1, Lejh;->a:I

    iput-wide v5, v1, Lejh;->f:J

    :cond_8
    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v5, p0, Lejh;->g:Ldkk;

    iget-object v6, p1, Lejh;->g:Ldkk;

    .line 39
    invoke-virtual {v1, v5, v6}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->i(Ljava/lang/Iterable;)V

    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v5, p0, Lejh;->h:Ldkk;

    iget-object v6, p1, Lejh;->h:Ldkk;

    .line 40
    invoke-virtual {v1, v5, v6}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->j(Ljava/lang/Iterable;)V

    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v5, p0, Lejh;->i:Ldkk;

    iget-object v6, p1, Lejh;->i:Ldkk;

    .line 41
    invoke-virtual {v1, v5, v6}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->k(Ljava/lang/Iterable;)V

    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v5, p0, Lejh;->j:Ldkk;

    iget-object v6, p1, Lejh;->j:Ldkk;

    .line 42
    invoke-virtual {v1, v5, v6}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->h(Ljava/lang/Iterable;)V

    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v5, p0, Lejh;->k:Ldkk;

    iget-object v6, p1, Lejh;->k:Ldkk;

    .line 43
    invoke-virtual {v1, v5, v6}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->g(Ljava/lang/Iterable;)V

    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v5, p0, Lejh;->l:Ldkk;

    iget-object v6, p1, Lejh;->l:Ldkk;

    .line 44
    invoke-virtual {v1, v5, v6}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->c(Ljava/lang/Iterable;)V

    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x10

    const/4 v5, 0x0

    if-eqz v1, :cond_9

    iget-object v1, p0, Lejh;->m:Lejg;

    if-nez v1, :cond_a

    .line 45
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_0

    .line 225
    :cond_9
    move-object v1, v5

    .line 45
    :cond_a
    :goto_0
    iget v6, p1, Lejh;->a:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_b

    iget-object v6, p1, Lejh;->m:Lejg;

    if-nez v6, :cond_c

    .line 46
    sget-object v6, Lejg;->e:Lejg;

    goto :goto_1

    .line 225
    :cond_b
    move-object v6, v5

    .line 47
    :cond_c
    :goto_1
    invoke-static {v1, v6}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-boolean v6, v0, Ldjy;->b:Z

    if-eqz v6, :cond_d

    .line 48
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_d
    iget-object v6, v0, Ldjy;->a:Ldkd;

    .line 49
    check-cast v6, Lejh;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v6, Lejh;->m:Lejg;

    iget v1, v6, Lejh;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Lejh;->a:I

    :cond_e
    sget-object v1, Lbvf;->a:Lbvf;

    iget-object v6, p0, Lejh;->n:Ldkk;

    iget-object v7, p1, Lejh;->n:Ldkk;

    .line 51
    invoke-virtual {v1, v6, v7}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->d(Ljava/lang/Iterable;)V

    sget-object v1, Lbvc;->a:Lbvc;

    iget-object v6, p0, Lejh;->p:Ldkk;

    iget-object v7, p1, Lejh;->p:Ldkk;

    .line 52
    invoke-virtual {v1, v6, v7}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->f(Ljava/lang/Iterable;)V

    sget-object v1, Lbvb;->a:Lbvb;

    iget-object v6, p0, Lejh;->q:Ldkk;

    iget-object v7, p1, Lejh;->q:Ldkk;

    .line 53
    invoke-virtual {v1, v6, v7}, Lbvd;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ldjy;->e(Ljava/lang/Iterable;)V

    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_10

    iget-wide v6, p0, Lejh;->v:J

    iget-wide v8, p1, Lejh;->v:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_10

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_f

    .line 54
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_f
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 55
    check-cast v1, Lejh;

    iget v8, v1, Lejh;->a:I

    or-int/lit8 v8, v8, 0x20

    iput v8, v1, Lejh;->a:I

    iput-wide v6, v1, Lejh;->v:J

    :cond_10
    iget v1, p0, Lejh;->a:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_12

    iget-wide v6, p0, Lejh;->w:J

    iget-wide v8, p1, Lejh;->w:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_12

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_11

    .line 56
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_11
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 57
    check-cast v1, Lejh;

    iget v8, v1, Lejh;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v1, Lejh;->a:I

    iput-wide v6, v1, Lejh;->w:J

    :cond_12
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_14

    iget-wide v6, p0, Lejh;->x:J

    iget-wide v8, p1, Lejh;->x:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_13

    .line 58
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_13
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 59
    check-cast v1, Lejh;

    iget v8, v1, Lejh;->a:I

    or-int/lit16 v8, v8, 0x80

    iput v8, v1, Lejh;->a:I

    iput-wide v6, v1, Lejh;->x:J

    :cond_14
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_16

    iget-wide v6, p0, Lejh;->y:J

    iget-wide v8, p1, Lejh;->y:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_16

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_15

    .line 60
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_15
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 61
    check-cast v1, Lejh;

    iget v8, v1, Lejh;->a:I

    or-int/lit16 v8, v8, 0x100

    iput v8, v1, Lejh;->a:I

    iput-wide v6, v1, Lejh;->y:J

    :cond_16
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_18

    iget-wide v6, p0, Lejh;->z:J

    iget-wide v8, p1, Lejh;->z:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_18

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_17

    .line 62
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_17
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 63
    check-cast v1, Lejh;

    iget v8, v1, Lejh;->a:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v1, Lejh;->a:I

    iput-wide v6, v1, Lejh;->z:J

    :cond_18
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_1a

    iget-wide v6, p0, Lejh;->A:J

    iget-wide v8, p1, Lejh;->A:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_19

    .line 64
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_19
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 65
    check-cast v1, Lejh;

    .line 66
    invoke-virtual {v1, v6, v7}, Lejh;->a(J)V

    :cond_1a
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_1c

    iget-wide v6, p0, Lejh;->B:J

    iget-wide v8, p1, Lejh;->B:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1c

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_1b

    .line 67
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1b
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 68
    check-cast v1, Lejh;

    .line 69
    invoke-virtual {v1, v6, v7}, Lejh;->b(J)V

    :cond_1c
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_1e

    iget-wide v6, p0, Lejh;->C:J

    iget-wide v8, p1, Lejh;->C:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_1e

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_1d

    .line 70
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1d
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 71
    check-cast v1, Lejh;

    .line 72
    invoke-virtual {v1, v6, v7}, Lejh;->c(J)V

    :cond_1e
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_20

    iget-wide v6, p0, Lejh;->D:J

    iget-wide v8, p1, Lejh;->D:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_20

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_1f

    .line 73
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_1f
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 74
    check-cast v1, Lejh;

    .line 75
    invoke-virtual {v1, v6, v7}, Lejh;->d(J)V

    :cond_20
    iget v1, p0, Lejh;->a:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_22

    iget-wide v6, p0, Lejh;->E:J

    iget-wide v8, p1, Lejh;->E:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_22

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_21

    .line 76
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_21
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 77
    check-cast v1, Lejh;

    .line 78
    invoke-virtual {v1, v6, v7}, Lejh;->e(J)V

    :cond_22
    iget v1, p0, Lejh;->a:I

    const v6, 0x8000

    and-int/2addr v1, v6

    if-eqz v1, :cond_24

    iget-wide v7, p0, Lejh;->F:J

    iget-wide v9, p1, Lejh;->F:J

    sub-long/2addr v7, v9

    cmp-long v1, v7, v2

    if-eqz v1, :cond_24

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_23

    .line 79
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_23
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 80
    check-cast v1, Lejh;

    .line 81
    invoke-virtual {v1, v7, v8}, Lejh;->f(J)V

    :cond_24
    iget v1, p0, Lejh;->a:I

    const/high16 v7, 0x10000

    and-int/2addr v1, v7

    if-eqz v1, :cond_26

    iget-wide v8, p0, Lejh;->G:J

    iget-wide v10, p1, Lejh;->G:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_26

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_25

    .line 82
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_25
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 83
    check-cast v1, Lejh;

    .line 84
    invoke-virtual {v1, v8, v9}, Lejh;->g(J)V

    :cond_26
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x20000

    and-int/2addr v1, v8

    if-eqz v1, :cond_28

    iget-wide v8, p0, Lejh;->H:J

    iget-wide v10, p1, Lejh;->H:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_28

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_27

    .line 85
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_27
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 86
    check-cast v1, Lejh;

    .line 87
    invoke-virtual {v1, v8, v9}, Lejh;->h(J)V

    :cond_28
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x40000

    and-int/2addr v1, v8

    if-eqz v1, :cond_2a

    iget-wide v8, p0, Lejh;->I:J

    iget-wide v10, p1, Lejh;->I:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_2a

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_29

    .line 88
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_29
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 89
    check-cast v1, Lejh;

    .line 90
    invoke-virtual {v1, v8, v9}, Lejh;->i(J)V

    :cond_2a
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x80000

    and-int/2addr v1, v8

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lejh;->J:Lejg;

    if-nez v1, :cond_2c

    .line 91
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_2

    .line 225
    :cond_2b
    move-object v1, v5

    .line 91
    :cond_2c
    :goto_2
    iget v9, p1, Lejh;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_2d

    iget-object v8, p1, Lejh;->J:Lejg;

    if-nez v8, :cond_2e

    .line 92
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_3

    .line 225
    :cond_2d
    move-object v8, v5

    .line 93
    :cond_2e
    :goto_3
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_30

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_2f

    .line 94
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_2f
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 95
    check-cast v8, Lejh;

    .line 96
    invoke-virtual {v8, v1}, Lejh;->a(Lejg;)V

    :cond_30
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x100000

    and-int/2addr v1, v8

    if-eqz v1, :cond_32

    iget-wide v8, p0, Lejh;->K:J

    iget-wide v10, p1, Lejh;->K:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_32

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_31

    .line 97
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_31
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 98
    check-cast v1, Lejh;

    .line 99
    invoke-virtual {v1, v8, v9}, Lejh;->j(J)V

    :cond_32
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x200000

    and-int/2addr v1, v8

    if-eqz v1, :cond_33

    iget-object v1, p0, Lejh;->L:Lejg;

    if-nez v1, :cond_34

    .line 100
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_4

    .line 225
    :cond_33
    move-object v1, v5

    .line 100
    :cond_34
    :goto_4
    iget v9, p1, Lejh;->a:I

    and-int/2addr v8, v9

    if-eqz v8, :cond_35

    iget-object v8, p1, Lejh;->L:Lejg;

    if-nez v8, :cond_36

    .line 101
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_5

    .line 225
    :cond_35
    move-object v8, v5

    .line 102
    :cond_36
    :goto_5
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_38

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_37

    .line 103
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_37
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 104
    check-cast v8, Lejh;

    .line 105
    invoke-virtual {v8, v1}, Lejh;->b(Lejg;)V

    :cond_38
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x400000

    and-int/2addr v1, v8

    if-eqz v1, :cond_39

    iget-object v1, p0, Lejh;->M:Lejg;

    if-nez v1, :cond_3a

    .line 106
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_6

    .line 225
    :cond_39
    move-object v1, v5

    .line 106
    :cond_3a
    :goto_6
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x400000

    and-int/2addr v8, v9

    if-eqz v8, :cond_3b

    iget-object v8, p1, Lejh;->M:Lejg;

    if-nez v8, :cond_3c

    .line 107
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_7

    .line 225
    :cond_3b
    move-object v8, v5

    .line 108
    :cond_3c
    :goto_7
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_3e

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_3d

    .line 109
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_3d
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 110
    check-cast v8, Lejh;

    .line 111
    invoke-virtual {v8, v1}, Lejh;->c(Lejg;)V

    :cond_3e
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x800000

    and-int/2addr v1, v8

    if-eqz v1, :cond_3f

    iget-object v1, p0, Lejh;->N:Lejg;

    if-nez v1, :cond_40

    .line 112
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_8

    .line 225
    :cond_3f
    move-object v1, v5

    .line 112
    :cond_40
    :goto_8
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x800000

    and-int/2addr v8, v9

    if-eqz v8, :cond_41

    iget-object v8, p1, Lejh;->N:Lejg;

    if-nez v8, :cond_42

    .line 113
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_9

    .line 225
    :cond_41
    move-object v8, v5

    .line 114
    :cond_42
    :goto_9
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_44

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_43

    .line 115
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_43
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 116
    check-cast v8, Lejh;

    .line 117
    invoke-virtual {v8, v1}, Lejh;->d(Lejg;)V

    :cond_44
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x1000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_45

    iget-object v1, p0, Lejh;->O:Lejg;

    if-nez v1, :cond_46

    .line 118
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_a

    .line 225
    :cond_45
    move-object v1, v5

    .line 118
    :cond_46
    :goto_a
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x1000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_47

    iget-object v8, p1, Lejh;->O:Lejg;

    if-nez v8, :cond_48

    .line 119
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_b

    .line 225
    :cond_47
    move-object v8, v5

    .line 120
    :cond_48
    :goto_b
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_4a

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_49

    .line 121
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_49
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 122
    check-cast v8, Lejh;

    .line 123
    invoke-virtual {v8, v1}, Lejh;->e(Lejg;)V

    :cond_4a
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x2000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_4b

    iget-object v1, p0, Lejh;->P:Lejg;

    if-nez v1, :cond_4c

    .line 124
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_c

    .line 225
    :cond_4b
    move-object v1, v5

    .line 124
    :cond_4c
    :goto_c
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x2000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_4d

    iget-object v8, p1, Lejh;->P:Lejg;

    if-nez v8, :cond_4e

    .line 125
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_d

    .line 225
    :cond_4d
    move-object v8, v5

    .line 126
    :cond_4e
    :goto_d
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_50

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_4f

    .line 127
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_4f
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 128
    check-cast v8, Lejh;

    .line 129
    invoke-virtual {v8, v1}, Lejh;->f(Lejg;)V

    :cond_50
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x4000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_51

    iget-object v1, p0, Lejh;->Q:Lejg;

    if-nez v1, :cond_52

    .line 130
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_e

    .line 225
    :cond_51
    move-object v1, v5

    .line 130
    :cond_52
    :goto_e
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x4000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_53

    iget-object v8, p1, Lejh;->Q:Lejg;

    if-nez v8, :cond_54

    .line 131
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_f

    .line 225
    :cond_53
    move-object v8, v5

    .line 132
    :cond_54
    :goto_f
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_56

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_55

    .line 133
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_55
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 134
    check-cast v8, Lejh;

    .line 135
    invoke-virtual {v8, v1}, Lejh;->g(Lejg;)V

    :cond_56
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x8000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_57

    iget-object v1, p0, Lejh;->R:Lejg;

    if-nez v1, :cond_58

    .line 136
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_10

    .line 225
    :cond_57
    move-object v1, v5

    .line 136
    :cond_58
    :goto_10
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x8000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_59

    iget-object v8, p1, Lejh;->R:Lejg;

    if-nez v8, :cond_5a

    .line 137
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_11

    .line 225
    :cond_59
    move-object v8, v5

    .line 138
    :cond_5a
    :goto_11
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_5c

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_5b

    .line 139
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_5b
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 140
    check-cast v8, Lejh;

    .line 141
    invoke-virtual {v8, v1}, Lejh;->h(Lejg;)V

    :cond_5c
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x10000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_5d

    iget-object v1, p0, Lejh;->S:Lejg;

    if-nez v1, :cond_5e

    .line 142
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_12

    .line 225
    :cond_5d
    move-object v1, v5

    .line 142
    :cond_5e
    :goto_12
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x10000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_5f

    iget-object v8, p1, Lejh;->S:Lejg;

    if-nez v8, :cond_60

    .line 143
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_13

    .line 225
    :cond_5f
    move-object v8, v5

    .line 144
    :cond_60
    :goto_13
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_62

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_61

    .line 145
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_61
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 146
    check-cast v8, Lejh;

    .line 147
    invoke-virtual {v8, v1}, Lejh;->i(Lejg;)V

    :cond_62
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x20000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_63

    iget-object v1, p0, Lejh;->T:Lejg;

    if-nez v1, :cond_64

    .line 148
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_14

    .line 225
    :cond_63
    move-object v1, v5

    .line 148
    :cond_64
    :goto_14
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x20000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_65

    iget-object v8, p1, Lejh;->T:Lejg;

    if-nez v8, :cond_66

    .line 149
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_15

    .line 225
    :cond_65
    move-object v8, v5

    .line 150
    :cond_66
    :goto_15
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_68

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_67

    .line 151
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_67
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 152
    check-cast v8, Lejh;

    .line 153
    invoke-virtual {v8, v1}, Lejh;->j(Lejg;)V

    :cond_68
    iget v1, p0, Lejh;->a:I

    const/high16 v8, 0x40000000    # 2.0f

    and-int/2addr v1, v8

    if-eqz v1, :cond_69

    iget-object v1, p0, Lejh;->U:Lejg;

    if-nez v1, :cond_6a

    .line 154
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_16

    .line 225
    :cond_69
    move-object v1, v5

    .line 154
    :cond_6a
    :goto_16
    iget v8, p1, Lejh;->a:I

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v8, v9

    if-eqz v8, :cond_6b

    iget-object v8, p1, Lejh;->U:Lejg;

    if-nez v8, :cond_6c

    .line 155
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_17

    .line 225
    :cond_6b
    move-object v8, v5

    .line 156
    :cond_6c
    :goto_17
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_6e

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_6d

    .line 157
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_6d
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 158
    check-cast v8, Lejh;

    .line 159
    invoke-virtual {v8, v1}, Lejh;->k(Lejg;)V

    :cond_6e
    iget v1, p0, Lejh;->a:I

    const/high16 v8, -0x80000000

    and-int/2addr v1, v8

    if-eqz v1, :cond_6f

    iget-object v1, p0, Lejh;->V:Lejg;

    if-nez v1, :cond_70

    .line 160
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_18

    .line 225
    :cond_6f
    move-object v1, v5

    .line 160
    :cond_70
    :goto_18
    iget v8, p1, Lejh;->a:I

    const/high16 v9, -0x80000000

    and-int/2addr v8, v9

    if-eqz v8, :cond_71

    iget-object v8, p1, Lejh;->V:Lejg;

    if-nez v8, :cond_72

    .line 161
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_19

    .line 225
    :cond_71
    move-object v8, v5

    .line 162
    :cond_72
    :goto_19
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_74

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_73

    .line 163
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_73
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 164
    check-cast v8, Lejh;

    .line 165
    invoke-virtual {v8, v1}, Lejh;->l(Lejg;)V

    :cond_74
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_75

    iget-object v1, p0, Lejh;->W:Lejg;

    if-nez v1, :cond_76

    .line 166
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_1a

    .line 225
    :cond_75
    move-object v1, v5

    .line 166
    :cond_76
    :goto_1a
    iget v8, p1, Lejh;->b:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_77

    iget-object v8, p1, Lejh;->W:Lejg;

    if-nez v8, :cond_78

    .line 167
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_1b

    .line 225
    :cond_77
    move-object v8, v5

    .line 168
    :cond_78
    :goto_1b
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_7a

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_79

    .line 169
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_79
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 170
    check-cast v8, Lejh;

    .line 171
    invoke-virtual {v8, v1}, Lejh;->m(Lejg;)V

    :cond_7a
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7b

    iget-object v1, p0, Lejh;->X:Lejg;

    if-nez v1, :cond_7c

    .line 172
    sget-object v1, Lejg;->e:Lejg;

    goto :goto_1c

    .line 225
    :cond_7b
    move-object v1, v5

    .line 172
    :cond_7c
    :goto_1c
    iget v8, p1, Lejh;->b:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7d

    iget-object v8, p1, Lejh;->X:Lejg;

    if-nez v8, :cond_7e

    .line 173
    sget-object v8, Lejg;->e:Lejg;

    goto :goto_1d

    .line 225
    :cond_7d
    move-object v8, v5

    .line 174
    :cond_7e
    :goto_1d
    invoke-static {v1, v8}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_80

    iget-boolean v8, v0, Ldjy;->b:Z

    if-eqz v8, :cond_7f

    .line 175
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_7f
    iget-object v8, v0, Ldjy;->a:Ldkd;

    .line 176
    check-cast v8, Lejh;

    .line 177
    invoke-virtual {v8, v1}, Lejh;->n(Lejg;)V

    :cond_80
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_82

    iget-wide v8, p0, Lejh;->Y:J

    iget-wide v10, p1, Lejh;->Y:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_82

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_81

    .line 178
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_81
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 179
    check-cast v1, Lejh;

    .line 180
    invoke-virtual {v1, v8, v9}, Lejh;->k(J)V

    :cond_82
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_84

    iget-wide v8, p0, Lejh;->Z:J

    iget-wide v10, p1, Lejh;->Z:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_84

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_83

    .line 181
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_83
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 182
    check-cast v1, Lejh;

    .line 183
    invoke-virtual {v1, v8, v9}, Lejh;->l(J)V

    :cond_84
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_86

    iget-wide v8, p0, Lejh;->aa:J

    iget-wide v10, p1, Lejh;->aa:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_86

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_85

    .line 184
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_85
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 185
    check-cast v1, Lejh;

    .line 186
    invoke-virtual {v1, v8, v9}, Lejh;->m(J)V

    :cond_86
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_88

    iget-wide v8, p0, Lejh;->ab:J

    iget-wide v10, p1, Lejh;->ab:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_88

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_87

    .line 187
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_87
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 188
    check-cast v1, Lejh;

    .line 189
    invoke-virtual {v1, v8, v9}, Lejh;->n(J)V

    :cond_88
    iget v1, p0, Lejh;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_8a

    iget-wide v8, p0, Lejh;->ac:J

    iget-wide v10, p1, Lejh;->ac:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8a

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_89

    .line 190
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_89
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 191
    check-cast v1, Lejh;

    .line 192
    invoke-virtual {v1, v8, v9}, Lejh;->o(J)V

    :cond_8a
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_8c

    iget-wide v8, p0, Lejh;->ad:J

    iget-wide v10, p1, Lejh;->ad:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8c

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_8b

    .line 193
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_8b
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 194
    check-cast v1, Lejh;

    .line 195
    invoke-virtual {v1, v8, v9}, Lejh;->p(J)V

    :cond_8c
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_8e

    iget-wide v8, p0, Lejh;->ae:J

    iget-wide v10, p1, Lejh;->ae:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_8e

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_8d

    .line 196
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_8d
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 197
    check-cast v1, Lejh;

    .line 198
    invoke-virtual {v1, v8, v9}, Lejh;->q(J)V

    :cond_8e
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_90

    iget-wide v8, p0, Lejh;->af:J

    iget-wide v10, p1, Lejh;->af:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_90

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_8f

    .line 199
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_8f
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 200
    check-cast v1, Lejh;

    .line 201
    invoke-virtual {v1, v8, v9}, Lejh;->r(J)V

    :cond_90
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_92

    iget-wide v8, p0, Lejh;->ag:J

    iget-wide v10, p1, Lejh;->ag:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_92

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_91

    .line 202
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_91
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 203
    check-cast v1, Lejh;

    .line 204
    invoke-virtual {v1, v8, v9}, Lejh;->s(J)V

    :cond_92
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_94

    iget-wide v8, p0, Lejh;->ah:J

    iget-wide v10, p1, Lejh;->ah:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_94

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_93

    .line 205
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_93
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 206
    check-cast v1, Lejh;

    .line 207
    invoke-virtual {v1, v8, v9}, Lejh;->t(J)V

    :cond_94
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_96

    iget-wide v8, p0, Lejh;->ai:J

    iget-wide v10, p1, Lejh;->ai:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_96

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_95

    .line 208
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_95
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 209
    check-cast v1, Lejh;

    iget v10, v1, Lejh;->b:I

    or-int/lit16 v10, v10, 0x1000

    iput v10, v1, Lejh;->b:I

    iput-wide v8, v1, Lejh;->ai:J

    :cond_96
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_98

    iget-wide v8, p0, Lejh;->aj:J

    iget-wide v10, p1, Lejh;->aj:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_98

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_97

    .line 210
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_97
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 211
    check-cast v1, Lejh;

    iget v10, v1, Lejh;->b:I

    or-int/lit16 v10, v10, 0x2000

    iput v10, v1, Lejh;->b:I

    iput-wide v8, v1, Lejh;->aj:J

    :cond_98
    iget v1, p0, Lejh;->b:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_9a

    iget-wide v8, p0, Lejh;->ak:J

    iget-wide v10, p1, Lejh;->ak:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_9a

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_99

    .line 212
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_99
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 213
    check-cast v1, Lejh;

    iget v10, v1, Lejh;->b:I

    or-int/lit16 v10, v10, 0x4000

    iput v10, v1, Lejh;->b:I

    iput-wide v8, v1, Lejh;->ak:J

    :cond_9a
    iget v1, p0, Lejh;->b:I

    and-int/2addr v1, v6

    if-eqz v1, :cond_9c

    iget-wide v8, p0, Lejh;->al:J

    iget-wide v10, p1, Lejh;->al:J

    sub-long/2addr v8, v10

    cmp-long v1, v8, v2

    if-eqz v1, :cond_9c

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_9b

    .line 214
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v4, v0, Ldjy;->b:Z

    :cond_9b
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 215
    check-cast v1, Lejh;

    iget v4, v1, Lejh;->b:I

    or-int/2addr v4, v6

    iput v4, v1, Lejh;->b:I

    iput-wide v8, v1, Lejh;->al:J

    :cond_9c
    iget v1, p0, Lejh;->b:I

    and-int/2addr v1, v7

    if-eqz v1, :cond_9d

    iget-wide v6, p0, Lejh;->am:J

    iget-wide v8, p1, Lejh;->am:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_9d

    .line 216
    invoke-virtual {v0, v6, v7}, Ldjy;->a(J)V

    :cond_9d
    invoke-virtual {p0}, Lejh;->r()Z

    move-result v1

    if-eqz v1, :cond_9e

    .line 217
    invoke-virtual {p0}, Lejh;->s()Lejg;

    move-result-object v1

    goto :goto_1e

    .line 225
    :cond_9e
    move-object v1, v5

    .line 217
    :goto_1e
    invoke-virtual {p1}, Lejh;->r()Z

    move-result v4

    if-eqz v4, :cond_9f

    .line 218
    invoke-virtual {p1}, Lejh;->s()Lejg;

    move-result-object v4

    goto :goto_1f

    .line 225
    :cond_9f
    move-object v4, v5

    .line 219
    :goto_1f
    invoke-static {v1, v4}, Lcne;->a(Lejg;Lejg;)Lejg;

    move-result-object v1

    if-eqz v1, :cond_a0

    .line 220
    invoke-virtual {v0, v1}, Ldjy;->a(Lejg;)V

    :cond_a0
    invoke-virtual {p0}, Lejh;->t()Z

    move-result v1

    if-eqz v1, :cond_a1

    iget-wide v6, p0, Lejh;->ao:J

    iget-wide v8, p1, Lejh;->ao:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_a1

    .line 221
    invoke-virtual {v0, v6, v7}, Ldjy;->d(J)V

    :cond_a1
    invoke-virtual {p0}, Lejh;->u()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-wide v6, p0, Lejh;->ap:J

    iget-wide v8, p1, Lejh;->ap:J

    sub-long/2addr v6, v8

    cmp-long v1, v6, v2

    if-eqz v1, :cond_a2

    .line 222
    invoke-virtual {v0, v6, v7}, Ldjy;->c(J)V

    :cond_a2
    invoke-virtual {p0}, Lejh;->v()Z

    move-result v1

    if-eqz v1, :cond_a3

    iget-wide v6, p0, Lejh;->aq:J

    iget-wide p0, p1, Lejh;->aq:J

    sub-long/2addr v6, p0

    cmp-long p0, v6, v2

    if-eqz p0, :cond_a3

    .line 223
    invoke-virtual {v0, v6, v7}, Ldjy;->b(J)V

    .line 224
    :cond_a3
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p0

    check-cast p0, Lejh;

    .line 225
    invoke-static {p0}, Lcne;->a(Lejh;)Z

    move-result p1

    if-eqz p1, :cond_a4

    return-object v5

    :cond_a4
    return-object p0

    .line 0
    :cond_a5
    :goto_20
    return-object p0
.end method

.method public static varargs a(Landroid/text/Spannable;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 5

    .line 243
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 244
    invoke-interface {p0, p1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 245
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    array-length p1, p2

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    .line 246
    aget-object v4, p2, v3

    .line 247
    invoke-interface {p0, v4, v0, v1, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Intent;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 238
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-ge v1, v2, :cond_3

    .line 239
    const-string v1, "firstRun"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    .line 240
    const-string v1, "preDeferredSetup"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    const-string v1, "deferredSetup"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    return v0

    .line 240
    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0

    .line 241
    :cond_3
    nop

    .line 242
    const-string v1, "isSetupFlow"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static a(Lejb;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_2

    iget-object v2, p0, Lejb;->b:Ldkk;

    .line 12
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lejb;->c:Ldkk;

    .line 13
    invoke-interface {p0}, Ldkk;->size()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static a(Lejd;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-wide v2, p0, Lejd;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejd;->c:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejd;->d:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejd;->e:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejd;->f:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejd;->g:J

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public static a(Leje;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    iget v2, p0, Leje;->b:I

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_2

    iget p0, p0, Leje;->c:I

    int-to-long v2, p0

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method static a(Lejh;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-wide v2, p0, Lejh;->c:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->d:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->e:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->f:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-object v2, p0, Lejh;->g:Ldkk;

    .line 14
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->h:Ldkk;

    .line 15
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->i:Ldkk;

    .line 16
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->j:Ldkk;

    .line 17
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->k:Ldkk;

    .line 18
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->l:Ldkk;

    .line 19
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->n:Ldkk;

    .line 20
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->o:Ldkk;

    .line 21
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->p:Ldkk;

    .line 22
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lejh;->q:Ldkk;

    .line 23
    invoke-interface {v2}, Ldkk;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lejh;->v:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->w:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->x:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->y:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->z:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->A:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->B:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->C:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->D:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->E:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->F:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->G:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->H:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->I:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->K:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->Y:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->Z:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->aa:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ab:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ac:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ad:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ae:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->af:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ag:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ah:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ai:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->aj:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ak:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->al:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->am:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ao:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->ap:J

    cmp-long v6, v2, v4

    if-gtz v6, :cond_1

    iget-wide v2, p0, Lejh;->aq:J

    cmp-long p0, v2, v4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v0
.end method

.method public static b(Landroid/os/health/HealthStats;I)Lejg;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasTimer(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getTimer(I)Landroid/os/health/TimerStat;

    move-result-object p0

    invoke-static {v0, p0}, Lcne;->a(Ljava/lang/String;Landroid/os/health/TimerStat;)Lejg;

    move-result-object p0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static c(Landroid/os/health/HealthStats;I)Ljava/util/List;
    .locals 1

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasTimers(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lbvf;->a:Lbvf;

    .line 6
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getTimers(I)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {v0, p0}, Lbvd;->a(Ljava/util/Map;)Ljava/util/List;

    move-result-object p0

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    .line 6
    :goto_0
    return-object p0
.end method

.method public static d(Landroid/os/health/HealthStats;I)Ljava/util/Map;
    .locals 1

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->hasStats(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/health/HealthStats;->getStats(I)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p0

    :goto_0
    return-object p0
.end method
