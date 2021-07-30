.class public final Ldif;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldlv;


# instance fields
.field private final a:Ldie;

.field private b:I

.field private c:I

.field private d:I


# direct methods
.method private constructor <init>(Ldie;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Ldif;->d:I

    .line 1
    const-string v0, "input"

    invoke-static {p1, v0}, Ldkl;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Ldif;->a:Ldie;

    iput-object p0, p1, Ldie;->d:Ldif;

    return-void
.end method

.method public static a(Ldie;)Ldif;
    .locals 1

    .line 2
    iget-object v0, p0, Ldie;->d:Ldif;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ldif;

    .line 3
    invoke-direct {v0, p0}, Ldif;-><init>(Ldie;)V

    return-object v0
.end method

.method private final a(Ldmz;Ljava/lang/Class;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 77
    sget-object v0, Ldmz;->a:Ldmz;

    invoke-virtual {p1}, Ldmz;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 95
    const-string p2, "unsupported field type."

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 81
    :pswitch_1
    invoke-virtual {p0}, Ldif;->t()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 82
    :pswitch_2
    invoke-virtual {p0}, Ldif;->s()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 83
    :pswitch_3
    invoke-virtual {p0}, Ldif;->r()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 84
    :pswitch_4
    invoke-virtual {p0}, Ldif;->q()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 91
    :pswitch_5
    invoke-virtual {p0}, Ldif;->p()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 79
    :pswitch_6
    invoke-virtual {p0}, Ldif;->o()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 93
    :pswitch_7
    invoke-virtual {p0}, Ldif;->n()Ldib;

    move-result-object p1

    return-object p1

    .line 85
    :pswitch_8
    invoke-virtual {p0, p2, p3}, Ldif;->a(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 80
    :pswitch_9
    invoke-virtual {p0}, Ldif;->m()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 94
    :pswitch_a
    invoke-virtual {p0}, Ldif;->k()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 90
    :pswitch_b
    invoke-virtual {p0}, Ldif;->j()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 89
    :pswitch_c
    invoke-virtual {p0}, Ldif;->i()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 87
    :pswitch_d
    invoke-virtual {p0}, Ldif;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 78
    :pswitch_e
    invoke-virtual {p0}, Ldif;->f()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 86
    :pswitch_f
    invoke-virtual {p0}, Ldif;->g()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 88
    :pswitch_10
    invoke-virtual {p0}, Ldif;->e()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 92
    :pswitch_11
    invoke-virtual {p0}, Ldif;->d()D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final a(I)V
    .locals 1

    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 403
    return-void

    :cond_0
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1
.end method

.method private final b(I)V
    .locals 1

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 401
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 402
    return-void

    :cond_0
    invoke-static {}, Ldkn;->a()Ldkn;

    move-result-object p1

    throw p1
.end method

.method private final c(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 234
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 235
    iget v2, v1, Ldie;->a:I

    iget v3, v1, Ldie;->b:I

    const/16 v3, 0x64

    if-ge v2, v3, :cond_0

    .line 238
    invoke-virtual {v1, v0}, Ldie;->c(I)I

    move-result v0

    .line 239
    invoke-interface {p1}, Ldlw;->a()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Ldif;->a:Ldie;

    .line 240
    iget v3, v2, Ldie;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ldie;->a:I

    .line 241
    invoke-interface {p1, v1, p0, p2}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 242
    invoke-interface {p1, v1}, Ldlw;->d(Ljava/lang/Object;)V

    iget-object p1, p0, Ldif;->a:Ldie;

    const/4 p2, 0x0

    .line 243
    invoke-virtual {p1, p2}, Ldie;->a(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 244
    iget p2, p1, Ldie;->a:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p1, Ldie;->a:I

    .line 245
    invoke-virtual {p1, v0}, Ldie;->d(I)V

    return-object v1

    .line 235
    :cond_0
    new-instance p1, Ldkn;

    .line 236
    const-string p2, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {p1, p2}, Ldkn;-><init>(Ljava/lang/String;)V

    .line 237
    throw p1
.end method

.method private static final c(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x3

    if-nez p0, :cond_0

    .line 406
    return-void

    :cond_0
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p0

    throw p0
.end method

.method private final d(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 3

    iget v0, p0, Ldif;->c:I

    iget v1, p0, Ldif;->b:I

    invoke-static {v1}, Ldnb;->b(I)I

    move-result v1

    const/4 v2, 0x4

    invoke-static {v1, v2}, Ldnb;->a(II)I

    move-result v1

    iput v1, p0, Ldif;->c:I

    .line 162
    :try_start_0
    invoke-interface {p1}, Ldlw;->a()Ljava/lang/Object;

    move-result-object v1

    .line 163
    invoke-interface {p1, v1, p0, p2}, Ldlw;->a(Ljava/lang/Object;Ldlv;Ldjr;)V

    .line 164
    invoke-interface {p1, v1}, Ldlw;->d(Ljava/lang/Object;)V

    iget p1, p0, Ldif;->b:I

    iget p2, p0, Ldif;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, p2, :cond_0

    .line 166
    iput v0, p0, Ldif;->c:I

    return-object v1

    .line 165
    :cond_0
    :try_start_1
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p1

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    iput v0, p0, Ldif;->c:I

    .line 166
    throw p1
.end method

.method private static final d(I)V
    .locals 0

    and-int/lit8 p0, p0, 0x7

    if-nez p0, :cond_0

    .line 407
    return-void

    :cond_0
    invoke-static {}, Ldkn;->h()Ldkn;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Ldif;->d:I

    if-eqz v0, :cond_0

    iput v0, p0, Ldif;->b:I

    const/4 v1, 0x0

    iput v1, p0, Ldif;->d:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 4
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iput v0, p0, Ldif;->b:I

    .line 0
    :goto_0
    if-eqz v0, :cond_2

    iget v1, p0, Ldif;->c:I

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v0}, Ldnb;->b(I)I

    move-result v0

    return v0

    :cond_2
    :goto_1
    const v0, 0x7fffffff

    return v0
.end method

.method public final a(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 248
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldif;->a(I)V

    .line 249
    invoke-direct {p0, p1, p2}, Ldif;->c(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 246
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldif;->a(I)V

    .line 247
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldif;->c(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/util/List;)V
    .locals 4

    .line 35
    instance-of v0, p1, Ldjo;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 36
    move-object v0, p1

    check-cast v0, Ldjo;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 44
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 37
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    .line 38
    invoke-static {p1}, Ldif;->d(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 39
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 40
    invoke-virtual {p1}, Ldie;->b()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldjo;->a(D)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 41
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 45
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 36
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 42
    invoke-virtual {p1}, Ldie;->b()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldjo;->a(D)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 43
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 44
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 41
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 53
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 46
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    .line 47
    invoke-static {v0}, Ldif;->d(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 48
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    .line 45
    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 49
    invoke-virtual {v0}, Ldie;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 50
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 41
    :goto_0
    return-void

    .line 54
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 41
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 51
    invoke-virtual {v0}, Ldie;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 52
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 53
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final a(Ljava/util/List;Ldlw;Ldjr;)V
    .locals 2

    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 250
    iget v0, p0, Ldif;->b:I

    .line 251
    :cond_0
    invoke-direct {p0, p2, p3}, Ldif;->c(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 252
    invoke-virtual {v1}, Ldie;->x()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Ldif;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldif;->a:Ldie;

    .line 253
    invoke-virtual {v1}, Ldie;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Ldif;->d:I

    return-void

    .line 252
    :cond_2
    :goto_0
    return-void

    .line 250
    :cond_3
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final a(Ljava/util/List;Z)V
    .locals 2

    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    .line 346
    instance-of v0, p1, Ldku;

    if-nez v0, :cond_0

    goto :goto_0

    .line 347
    :cond_0
    if-nez p2, :cond_3

    .line 350
    move-object v0, p1

    check-cast v0, Ldku;

    .line 351
    :cond_1
    invoke-virtual {p0}, Ldif;->n()Ldib;

    move-result-object p1

    invoke-interface {v0, p1}, Ldku;->a(Ldib;)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 352
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 353
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget p2, p0, Ldif;->b:I

    if-eq p1, p2, :cond_1

    iput p1, p0, Ldif;->d:I

    return-void

    .line 346
    :cond_3
    :goto_0
    if-eqz p2, :cond_4

    .line 347
    invoke-virtual {p0}, Ldif;->m()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Ldif;->l()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 348
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 349
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_3

    iput v0, p0, Ldif;->d:I

    return-void

    .line 345
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final a(Ljava/util/Map;Ldlc;Ldjr;)V
    .locals 7

    .line 219
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 220
    invoke-virtual {v1}, Ldie;->m()I

    move-result v1

    iget-object v2, p0, Ldif;->a:Ldie;

    .line 221
    invoke-virtual {v2, v1}, Ldie;->c(I)I

    move-result v1

    iget-object v2, p2, Ldlc;->b:Ljava/lang/Object;

    iget-object v3, p2, Ldlc;->d:Ljava/lang/Object;

    .line 222
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Ldif;->a()I

    move-result v4

    const v5, 0x7fffffff

    if-eq v4, v5, :cond_5

    iget-object v5, p0, Ldif;->a:Ldie;

    .line 223
    invoke-virtual {v5}, Ldie;->x()Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    goto :goto_3

    .line 231
    :cond_0
    const/4 v5, 0x1

    const-string v6, "Unable to parse map entry."

    if-eq v4, v5, :cond_3

    if-eq v4, v0, :cond_2

    .line 227
    :try_start_1
    invoke-virtual {p0}, Ldif;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 232
    :cond_1
    new-instance v4, Ldkn;

    .line 228
    invoke-direct {v4, v6}, Ldkn;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    :cond_2
    iget-object v4, p2, Ldlc;->c:Ldmz;

    iget-object v5, p2, Ldlc;->d:Ljava/lang/Object;

    .line 224
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 225
    invoke-direct {p0, v4, v5, p3}, Ldif;->a(Ldmz;Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_1

    :cond_3
    iget-object v4, p2, Ldlc;->a:Ldmz;

    .line 226
    const/4 v5, 0x0

    invoke-direct {p0, v4, v5, v5}, Ldif;->a(Ldmz;Ljava/lang/Class;Ldjr;)Ljava/lang/Object;

    move-result-object v2
    :try_end_1
    .catch Ldkm; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    :goto_1
    goto :goto_2

    .line 233
    :catch_0
    move-exception v4

    .line 229
    :try_start_2
    invoke-virtual {p0}, Ldif;->c()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    nop

    .line 227
    :goto_2
    goto :goto_0

    .line 229
    :cond_4
    new-instance p1, Ldkn;

    .line 232
    invoke-direct {p1, v6}, Ldkn;-><init>(Ljava/lang/String;)V

    throw p1

    .line 230
    :cond_5
    :goto_3
    invoke-interface {p1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 231
    invoke-virtual {p1, v1}, Ldie;->d(I)V

    return-void

    .line 226
    :catchall_0
    move-exception p1

    iget-object p2, p0, Ldif;->a:Ldie;

    .line 231
    invoke-virtual {p2, v1}, Ldie;->d(I)V

    .line 233
    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ldif;->b:I

    return v0
.end method

.method public final b(Ldlw;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 169
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ldif;->a(I)V

    .line 170
    invoke-direct {p0, p1, p2}, Ldif;->d(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/lang/Class;Ldjr;)Ljava/lang/Object;
    .locals 1

    .line 167
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Ldif;->a(I)V

    .line 168
    sget-object v0, Ldls;->a:Ldls;

    invoke-virtual {v0, p1}, Ldls;->a(Ljava/lang/Class;)Ldlw;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldif;->d(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Ljava/util/List;)V
    .locals 4

    .line 142
    instance-of v0, p1, Ldjv;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 143
    move-object v0, p1

    check-cast v0, Ldjv;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 144
    invoke-virtual {p1}, Ldie;->c()F

    move-result p1

    invoke-virtual {v0, p1}, Ldjv;->a(F)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 145
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 146
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Ldif;->d:I

    return-void

    .line 152
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 146
    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 147
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    .line 148
    invoke-static {p1}, Ldif;->c(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 149
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 150
    invoke-virtual {p1}, Ldie;->c()F

    move-result p1

    invoke-virtual {v0, p1}, Ldjv;->a(F)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 151
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 153
    invoke-virtual {v0}, Ldie;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 154
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 155
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Ldif;->d:I

    return-void

    .line 161
    :cond_8
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 155
    :cond_9
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 156
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    .line 157
    invoke-static {v0}, Ldif;->c(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 158
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    .line 152
    :cond_a
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 159
    invoke-virtual {v0}, Ldie;->c()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 160
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_a

    .line 151
    :goto_0
    return-void
.end method

.method public final b(Ljava/util/List;Ldlw;Ldjr;)V
    .locals 2

    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    .line 171
    iget v0, p0, Ldif;->b:I

    .line 172
    :cond_0
    invoke-direct {p0, p2, p3}, Ldif;->d(Ldlw;Ldjr;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 173
    invoke-virtual {v1}, Ldie;->x()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Ldif;->d:I

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Ldif;->a:Ldie;

    .line 174
    invoke-virtual {v1}, Ldie;->a()I

    move-result v1

    if-eq v1, v0, :cond_0

    iput v1, p0, Ldif;->d:I

    return-void

    .line 173
    :cond_2
    :goto_0
    return-void

    .line 171
    :cond_3
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final c(Ljava/util/List;)V
    .locals 4

    .line 381
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 382
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 390
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 383
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 384
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 385
    invoke-virtual {p1}, Ldie;->d()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 386
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 387
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 391
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 382
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 388
    invoke-virtual {p1}, Ldie;->d()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 389
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 390
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 387
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 399
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 392
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 393
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 394
    invoke-virtual {v0}, Ldie;->d()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 395
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 396
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 400
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 387
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 397
    invoke-virtual {v0}, Ldie;->d()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 398
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 399
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final c()Z
    .locals 2

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 404
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Ldif;->b:I

    iget v1, p0, Ldif;->c:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Ldif;->a:Ldie;

    .line 405
    invoke-virtual {v1, v0}, Ldie;->b(I)Z

    move-result v0

    return v0

    .line 404
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public final d()D
    .locals 2

    .line 33
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 34
    invoke-virtual {v0}, Ldie;->b()D

    move-result-wide v0

    return-wide v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 4

    .line 199
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 200
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 208
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 201
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 202
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 203
    invoke-virtual {p1}, Ldie;->e()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 204
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 205
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 209
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 200
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 206
    invoke-virtual {p1}, Ldie;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 207
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 208
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 205
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 217
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 210
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 211
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 212
    invoke-virtual {v0}, Ldie;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 213
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 214
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 218
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 205
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 215
    invoke-virtual {v0}, Ldie;->e()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 216
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 217
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final e()F
    .locals 1

    .line 140
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 141
    invoke-virtual {v0}, Ldie;->c()F

    move-result v0

    return v0
.end method

.method public final e(Ljava/util/List;)V
    .locals 2

    .line 177
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 178
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 186
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 179
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 180
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 181
    invoke-virtual {p1}, Ldie;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 182
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 183
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 187
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 178
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 184
    invoke-virtual {p1}, Ldie;->f()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 185
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 186
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 183
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 195
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 188
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 189
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 190
    invoke-virtual {v0}, Ldie;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 191
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 192
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 196
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 183
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 193
    invoke-virtual {v0}, Ldie;->f()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 194
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 195
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final f()J
    .locals 2

    .line 379
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 380
    invoke-virtual {v0}, Ldie;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public final f(Ljava/util/List;)V
    .locals 4

    .line 120
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 121
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 129
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 122
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    .line 123
    invoke-static {p1}, Ldif;->d(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 124
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 125
    invoke-virtual {p1}, Ldie;->g()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 126
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 130
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 121
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 127
    invoke-virtual {p1}, Ldie;->g()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 128
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 129
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 126
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 138
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 131
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    .line 132
    invoke-static {v0}, Ldif;->d(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 133
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    .line 130
    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 134
    invoke-virtual {v0}, Ldie;->g()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 135
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 126
    :goto_0
    return-void

    .line 139
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 126
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 136
    invoke-virtual {v0}, Ldie;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 137
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 138
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final g()J
    .locals 2

    .line 197
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 198
    invoke-virtual {v0}, Ldie;->e()J

    move-result-wide v0

    return-wide v0
.end method

.method public final g(Ljava/util/List;)V
    .locals 4

    .line 98
    instance-of v0, p1, Ldke;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 99
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 100
    invoke-virtual {p1}, Ldie;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 101
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 102
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Ldif;->d:I

    return-void

    .line 108
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 102
    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 103
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    .line 104
    invoke-static {p1}, Ldif;->c(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 105
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 106
    invoke-virtual {p1}, Ldie;->h()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 107
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 109
    invoke-virtual {v0}, Ldie;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 110
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 111
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Ldif;->d:I

    return-void

    .line 117
    :cond_8
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 111
    :cond_9
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 112
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    .line 113
    invoke-static {v0}, Ldif;->c(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 114
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    .line 108
    :cond_a
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 115
    invoke-virtual {v0}, Ldie;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 116
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_a

    .line 107
    :goto_0
    return-void
.end method

.method public final h()I
    .locals 1

    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 176
    invoke-virtual {v0}, Ldie;->f()I

    move-result v0

    return v0
.end method

.method public final h(Ljava/util/List;)V
    .locals 2

    .line 7
    instance-of v0, p1, Ldhq;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 8
    move-object v0, p1

    check-cast v0, Ldhq;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 16
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 9
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 10
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 11
    invoke-virtual {p1}, Ldie;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Ldhq;->a(Z)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 12
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 13
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 17
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 8
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 14
    invoke-virtual {p1}, Ldie;->i()Z

    move-result p1

    invoke-virtual {v0, p1}, Ldhq;->a(Z)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 15
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 16
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 13
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 25
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 18
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 19
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 20
    invoke-virtual {v0}, Ldie;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 21
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 22
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 26
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 13
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 23
    invoke-virtual {v0}, Ldie;->i()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 24
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 25
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final i()J
    .locals 2

    .line 118
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 119
    invoke-virtual {v0}, Ldie;->g()J

    move-result-wide v0

    return-wide v0
.end method

.method public final i(Ljava/util/List;)V
    .locals 1

    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ldif;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final j()I
    .locals 1

    .line 96
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 97
    invoke-virtual {v0}, Ldie;->h()I

    move-result v0

    return v0
.end method

.method public final j(Ljava/util/List;)V
    .locals 1

    .line 354
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ldif;->a(Ljava/util/List;Z)V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 2

    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 29
    :cond_0
    invoke-virtual {p0}, Ldif;->n()Ldib;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 30
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 31
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_0

    .line 32
    iput v0, p0, Ldif;->d:I

    return-void

    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final k()Z
    .locals 1

    .line 5
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 6
    invoke-virtual {v0}, Ldie;->i()Z

    move-result v0

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    .line 342
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 343
    invoke-virtual {v0}, Ldie;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/util/List;)V
    .locals 2

    .line 359
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 360
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 368
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 361
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 362
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 363
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 364
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 365
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 369
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 360
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 366
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 367
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 368
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 365
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 377
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 370
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 371
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 372
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 373
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 374
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 378
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 365
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 375
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 376
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 377
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final m()Ljava/lang/String;
    .locals 1

    .line 355
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 356
    invoke-virtual {v0}, Ldie;->k()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final m(Ljava/util/List;)V
    .locals 2

    .line 57
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 58
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 66
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 59
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 60
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 61
    invoke-virtual {p1}, Ldie;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 62
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 63
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 67
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 58
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 64
    invoke-virtual {p1}, Ldie;->n()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 65
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 66
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 63
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 75
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 68
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 69
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 70
    invoke-virtual {v0}, Ldie;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 71
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 72
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 76
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 63
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 73
    invoke-virtual {v0}, Ldie;->n()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 74
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 75
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final n()Ldib;
    .locals 1

    .line 27
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 28
    invoke-virtual {v0}, Ldie;->l()Ldib;

    move-result-object v0

    return-object v0
.end method

.method public final n(Ljava/util/List;)V
    .locals 4

    .line 256
    instance-of v0, p1, Ldke;

    const/4 v1, 0x5

    const/4 v2, 0x2

    if-eqz v0, :cond_5

    .line 257
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_3

    if-ne p1, v1, :cond_2

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 258
    invoke-virtual {p1}, Ldie;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 259
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 260
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_0

    iput p1, p0, Ldif;->d:I

    return-void

    .line 266
    :cond_2
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 260
    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 261
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    .line 262
    invoke-static {p1}, Ldif;->c(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 263
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int v3, v1, p1

    :cond_4
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 264
    invoke-virtual {p1}, Ldie;->o()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 265
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v3, :cond_4

    goto :goto_0

    :cond_5
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_9

    if-ne v0, v1, :cond_8

    :cond_6
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 267
    invoke-virtual {v0}, Ldie;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 268
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 269
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_6

    iput v0, p0, Ldif;->d:I

    return-void

    .line 275
    :cond_8
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 269
    :cond_9
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 270
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    .line 271
    invoke-static {v0}, Ldif;->c(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 272
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    .line 266
    :cond_a
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 273
    invoke-virtual {v0}, Ldie;->o()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 274
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_a

    .line 265
    :goto_0
    return-void
.end method

.method public final o()I
    .locals 1

    .line 357
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 358
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    return v0
.end method

.method public final o(Ljava/util/List;)V
    .locals 4

    .line 278
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    .line 279
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eq p1, v2, :cond_2

    if-ne p1, v1, :cond_1

    .line 287
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 280
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    .line 281
    invoke-static {p1}, Ldif;->d(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 282
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 283
    invoke-virtual {p1}, Ldie;->p()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 284
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 288
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 279
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 285
    invoke-virtual {p1}, Ldie;->p()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 286
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 287
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 284
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eq v0, v2, :cond_7

    if-ne v0, v1, :cond_6

    .line 296
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 289
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    .line 290
    invoke-static {v0}, Ldif;->d(I)V

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 291
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    .line 288
    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 292
    invoke-virtual {v0}, Ldie;->p()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 293
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 284
    :goto_0
    return-void

    .line 297
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 284
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 294
    invoke-virtual {v0}, Ldie;->p()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 295
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 296
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final p()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 56
    invoke-virtual {v0}, Ldie;->n()I

    move-result v0

    return v0
.end method

.method public final p(Ljava/util/List;)V
    .locals 2

    .line 300
    instance-of v0, p1, Ldke;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 301
    move-object v0, p1

    check-cast v0, Ldke;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 309
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 302
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 303
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 304
    invoke-virtual {p1}, Ldie;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 305
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 306
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 310
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 301
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 307
    invoke-virtual {p1}, Ldie;->q()I

    move-result p1

    invoke-virtual {v0, p1}, Ldke;->c(I)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 308
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 309
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 306
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 318
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 311
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 312
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 313
    invoke-virtual {v0}, Ldie;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 314
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 315
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 319
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 306
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 316
    invoke-virtual {v0}, Ldie;->q()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 317
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 318
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final q()I
    .locals 1

    .line 254
    const/4 v0, 0x5

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 255
    invoke-virtual {v0}, Ldie;->o()I

    move-result v0

    return v0
.end method

.method public final q(Ljava/util/List;)V
    .locals 4

    .line 322
    instance-of v0, p1, Ldky;

    const/4 v1, 0x2

    if-eqz v0, :cond_4

    .line 323
    move-object v0, p1

    check-cast v0, Ldky;

    iget p1, p0, Ldif;->b:I

    invoke-static {p1}, Ldnb;->a(I)I

    move-result p1

    if-eqz p1, :cond_2

    if-ne p1, v1, :cond_1

    .line 331
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 324
    invoke-virtual {p1}, Ldie;->m()I

    move-result p1

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 325
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, p1

    :cond_0
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 326
    invoke-virtual {p1}, Ldie;->r()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 327
    invoke-virtual {p1}, Ldie;->y()I

    move-result p1

    if-lt p1, v1, :cond_0

    .line 328
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 332
    :cond_1
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 323
    :cond_2
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 329
    invoke-virtual {p1}, Ldie;->r()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ldky;->a(J)V

    iget-object p1, p0, Ldif;->a:Ldie;

    .line 330
    invoke-virtual {p1}, Ldie;->x()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Ldif;->a:Ldie;

    .line 331
    invoke-virtual {p1}, Ldie;->a()I

    move-result p1

    iget v1, p0, Ldif;->b:I

    if-eq p1, v1, :cond_2

    iput p1, p0, Ldif;->d:I

    return-void

    .line 328
    :cond_4
    iget v0, p0, Ldif;->b:I

    invoke-static {v0}, Ldnb;->a(I)I

    move-result v0

    if-eqz v0, :cond_7

    if-ne v0, v1, :cond_6

    .line 340
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 333
    invoke-virtual {v0}, Ldie;->m()I

    move-result v0

    iget-object v1, p0, Ldif;->a:Ldie;

    .line 334
    invoke-virtual {v1}, Ldie;->y()I

    move-result v1

    add-int/2addr v1, v0

    :cond_5
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 335
    invoke-virtual {v0}, Ldie;->r()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 336
    invoke-virtual {v0}, Ldie;->y()I

    move-result v0

    if-lt v0, v1, :cond_5

    .line 337
    invoke-direct {p0, v1}, Ldif;->b(I)V

    return-void

    .line 341
    :cond_6
    invoke-static {}, Ldkn;->f()Ldkm;

    move-result-object p1

    throw p1

    .line 328
    :cond_7
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 338
    invoke-virtual {v0}, Ldie;->r()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 339
    invoke-virtual {v0}, Ldie;->x()Z

    move-result v0

    if-eqz v0, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Ldif;->a:Ldie;

    .line 340
    invoke-virtual {v0}, Ldie;->a()I

    move-result v0

    iget v1, p0, Ldif;->b:I

    if-eq v0, v1, :cond_7

    iput v0, p0, Ldif;->d:I

    return-void
.end method

.method public final r()J
    .locals 2

    .line 276
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 277
    invoke-virtual {v0}, Ldie;->p()J

    move-result-wide v0

    return-wide v0
.end method

.method public final s()I
    .locals 1

    .line 298
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 299
    invoke-virtual {v0}, Ldie;->q()I

    move-result v0

    return v0
.end method

.method public final t()J
    .locals 2

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ldif;->a(I)V

    iget-object v0, p0, Ldif;->a:Ldie;

    .line 321
    invoke-virtual {v0}, Ldie;->r()J

    move-result-wide v0

    return-wide v0
.end method
