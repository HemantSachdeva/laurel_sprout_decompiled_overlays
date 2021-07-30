.class public abstract Lcbx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcbl;


# static fields
.field private static final a:Lcua;

.field static final b:Lcbw;

.field static final c:Lcbw;

.field static final d:Lcbw;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcbt;

    invoke-direct {v0}, Lcbt;-><init>()V

    sput-object v0, Lcbx;->b:Lcbw;

    new-instance v0, Lcbu;

    invoke-direct {v0}, Lcbu;-><init>()V

    sput-object v0, Lcbx;->c:Lcbw;

    new-instance v0, Lcbv;

    invoke-direct {v0}, Lcbv;-><init>()V

    sput-object v0, Lcbx;->d:Lcbw;

    const-string v0, "com/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lcbx;->a:Lcua;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Lcbw;Ldli;)V
    .locals 1

    .line 1
    invoke-interface {p0, p1}, Lcbw;->b(Ldli;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Lcbw;->a(Ldli;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ldam;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lcbw;->a(Ldli;Ljava/lang/Long;)V

    goto :goto_0

    .line 4
    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-interface {p0, p1, v0}, Lcbw;->a(Ldli;Ljava/lang/Long;)V

    .line 4
    :goto_0
    invoke-interface {p0, p1}, Lcbw;->c(Ldli;)V

    return-void
.end method

.method private static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    .line 125
    const-string v0, "^/+"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/+"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Lepj;)V
    .locals 13

    sget-object v0, Lcbx;->a:Lcua;

    invoke-virtual {v0}, Lctx;->f()Lcup;

    move-result-object v0

    .line 5
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/transmitter/impl/HashedNamesTransmitter"

    const-string v2, "send"

    const/16 v3, 0xac

    const-string v4, "HashedNamesTransmitter.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "unhashed: %s"

    invoke-interface {v0, v1, p1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    sget v0, Lbsh;->b:I

    .line 7
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjy;

    .line 8
    invoke-virtual {v1, p1}, Ldjy;->a(Ldkd;)V

    sget-object p1, Lcbx;->b:Lcbw;

    .line 9
    invoke-static {p1, v1}, Lcbx;->a(Lcbw;Ldli;)V

    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 10
    check-cast p1, Lepj;

    iget v2, p1, Lepj;->a:I

    and-int/lit16 v2, v2, 0x200

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object p1, p1, Lepj;->j:Leiy;

    if-nez p1, :cond_0

    .line 11
    sget-object p1, Leiy;->c:Leiy;

    :cond_0
    iget p1, p1, Leiy;->a:I

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_6

    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 12
    check-cast p1, Lepj;

    iget-object p1, p1, Lepj;->j:Leiy;

    if-nez p1, :cond_1

    sget-object p1, Leiy;->c:Leiy;

    :cond_1
    iget-object p1, p1, Leiy;->b:Leix;

    if-nez p1, :cond_2

    .line 13
    sget-object p1, Leix;->k:Leix;

    :cond_2
    nop

    .line 14
    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldjy;

    .line 15
    invoke-virtual {v2, p1}, Ldjy;->a(Ldkd;)V

    sget-object p1, Lcbx;->c:Lcbw;

    .line 16
    invoke-static {p1, v2}, Lcbx;->a(Lcbw;Ldli;)V

    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 17
    check-cast p1, Lepj;

    iget-object p1, p1, Lepj;->j:Leiy;

    if-nez p1, :cond_3

    sget-object p1, Leiy;->c:Leiy;

    .line 18
    :cond_3
    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldjy;

    .line 19
    invoke-virtual {v4, p1}, Ldjy;->a(Ldkd;)V

    iget-boolean p1, v4, Ldjy;->b:Z

    if-eqz p1, :cond_4

    .line 20
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v3, v4, Ldjy;->b:Z

    :cond_4
    iget-object p1, v4, Ldjy;->a:Ldkd;

    .line 21
    check-cast p1, Leiy;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Leix;

    .line 22
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p1, Leiy;->b:Leix;

    iget v2, p1, Leiy;->a:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p1, Leiy;->a:I

    iget-boolean p1, v1, Ldjy;->b:Z

    if-eqz p1, :cond_5

    .line 23
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_5
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 24
    check-cast p1, Lepj;

    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Leiy;

    .line 25
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p1, Lepj;->j:Leiy;

    iget v2, p1, Lepj;->a:I

    or-int/lit16 v2, v2, 0x200

    iput v2, p1, Lepj;->a:I

    :cond_6
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 26
    check-cast p1, Lepj;

    iget v2, p1, Lepj;->a:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_12

    iget-object p1, p1, Lepj;->i:Leot;

    if-nez p1, :cond_7

    .line 27
    sget-object p1, Leot;->k:Leot;

    :cond_7
    iget-object p1, p1, Leot;->j:Ldkk;

    .line 28
    invoke-interface {p1}, Ldkk;->size()I

    move-result p1

    if-nez p1, :cond_8

    goto/16 :goto_2

    .line 100
    :cond_8
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 29
    check-cast p1, Lepj;

    iget-object p1, p1, Lepj;->i:Leot;

    if-nez p1, :cond_9

    sget-object p1, Leot;->k:Leot;

    .line 30
    :cond_9
    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldjy;

    .line 31
    invoke-virtual {v2, p1}, Ldjy;->a(Ldkd;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v4, v2, Ldjy;->a:Ldkd;

    .line 32
    check-cast v4, Leot;

    iget-object v4, v4, Leot;->j:Ldkk;

    .line 33
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge p1, v4, :cond_10

    iget-object v4, v2, Ldjy;->a:Ldkd;

    .line 34
    check-cast v4, Leot;

    iget-object v4, v4, Leot;->j:Ldkk;

    .line 35
    invoke-interface {v4, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Leos;

    .line 36
    invoke-virtual {v4, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldjy;

    .line 37
    invoke-virtual {v5, v4}, Ldjy;->a(Ldkd;)V

    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 38
    check-cast v4, Leos;

    iget-object v4, v4, Leos;->b:Ljava/lang/String;

    .line 39
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_d

    iget-boolean v4, v5, Ldjy;->b:Z

    if-eqz v4, :cond_a

    .line 40
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v3, v5, Ldjy;->b:Z

    :cond_a
    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 41
    check-cast v4, Leos;

    .line 42
    invoke-static {}, Leos;->j()Ldkj;

    move-result-object v6

    iput-object v6, v4, Leos;->c:Ldkj;

    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 43
    check-cast v4, Leos;

    iget-object v4, v4, Leos;->b:Ljava/lang/String;

    .line 44
    invoke-static {v4}, Lcbx;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v6, v4

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v6, :cond_d

    aget-object v8, v4, v7

    .line 45
    invoke-static {v8}, Ldam;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v10, v5, Ldjy;->b:Z

    if-eqz v10, :cond_b

    .line 46
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v3, v5, Ldjy;->b:Z

    :cond_b
    iget-object v10, v5, Ldjy;->a:Ldkd;

    .line 47
    check-cast v10, Leos;

    iget-object v11, v10, Leos;->c:Ldkj;

    .line 48
    invoke-interface {v11}, Ldkj;->a()Z

    move-result v12

    if-nez v12, :cond_c

    .line 49
    invoke-static {v11}, Ldkd;->a(Ldkj;)Ldkj;

    move-result-object v11

    iput-object v11, v10, Leos;->c:Ldkj;

    :cond_c
    iget-object v10, v10, Leos;->c:Ldkj;

    .line 50
    invoke-interface {v10, v8, v9}, Ldkj;->a(J)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_d
    iget-boolean v4, v5, Ldjy;->b:Z

    if-eqz v4, :cond_e

    .line 51
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v3, v5, Ldjy;->b:Z

    :cond_e
    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 52
    check-cast v4, Leos;

    iget v6, v4, Leos;->a:I

    and-int/lit8 v6, v6, -0x2

    iput v6, v4, Leos;->a:I

    sget-object v6, Leos;->e:Leos;

    iget-object v6, v6, Leos;->b:Ljava/lang/String;

    iput-object v6, v4, Leos;->b:Ljava/lang/String;

    iget-boolean v4, v2, Ldjy;->b:Z

    if-eqz v4, :cond_f

    .line 53
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v3, v2, Ldjy;->b:Z

    :cond_f
    iget-object v4, v2, Ldjy;->a:Ldkd;

    .line 54
    check-cast v4, Leot;

    .line 55
    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v5

    check-cast v5, Leos;

    .line 56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    invoke-virtual {v4}, Leot;->e()V

    iget-object v4, v4, Leot;->j:Ldkk;

    .line 58
    invoke-interface {v4, p1, v5}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_10
    iget-boolean p1, v1, Ldjy;->b:Z

    if-eqz p1, :cond_11

    .line 59
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_11
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 60
    check-cast p1, Lepj;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Leot;

    .line 61
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p1, Lepj;->i:Leot;

    iget v2, p1, Lepj;->a:I

    or-int/lit16 v2, v2, 0x100

    iput v2, p1, Lepj;->a:I

    .line 28
    :cond_12
    :goto_2
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 62
    check-cast p1, Lepj;

    iget v2, p1, Lepj;->a:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_20

    iget-object p1, p1, Lepj;->f:Lemn;

    if-nez p1, :cond_13

    .line 63
    sget-object p1, Lemn;->b:Lemn;

    :cond_13
    iget-object p1, p1, Lemn;->a:Ldkk;

    .line 64
    invoke-interface {p1}, Ldkk;->size()I

    move-result p1

    if-nez p1, :cond_14

    goto/16 :goto_6

    .line 123
    :cond_14
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 65
    check-cast p1, Lepj;

    iget-object p1, p1, Lepj;->f:Lemn;

    if-nez p1, :cond_15

    sget-object p1, Lemn;->b:Lemn;

    .line 66
    :cond_15
    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldjy;

    .line 67
    invoke-virtual {v2, p1}, Ldjy;->a(Ldkd;)V

    const/4 p1, 0x0

    :goto_3
    iget-object v4, v2, Ldjy;->a:Ldkd;

    .line 68
    check-cast v4, Lemn;

    iget-object v4, v4, Lemn;->a:Ldkk;

    .line 69
    invoke-interface {v4}, Ldkk;->size()I

    move-result v4

    if-ge p1, v4, :cond_1e

    iget-object v4, v2, Ldjy;->a:Ldkd;

    .line 70
    check-cast v4, Lemn;

    iget-object v4, v4, Lemn;->a:Ldkk;

    .line 71
    invoke-interface {v4, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lemm;

    .line 72
    invoke-virtual {v4, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ldjy;

    .line 73
    invoke-virtual {v5, v4}, Ldjy;->a(Ldkd;)V

    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 74
    check-cast v4, Lemm;

    iget-object v4, v4, Lemm;->g:Ljava/lang/String;

    .line 75
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1a

    iget-boolean v4, v5, Ldjy;->b:Z

    if-eqz v4, :cond_16

    .line 76
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v3, v5, Ldjy;->b:Z

    :cond_16
    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 77
    check-cast v4, Lemm;

    .line 78
    invoke-static {}, Lemm;->j()Ldkj;

    move-result-object v6

    iput-object v6, v4, Lemm;->h:Ldkj;

    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 79
    check-cast v4, Lemm;

    iget-object v4, v4, Lemm;->g:Ljava/lang/String;

    .line 80
    invoke-static {v4}, Lcbx;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 81
    array-length v6, v4

    new-array v7, v6, [J

    const/4 v8, 0x0

    :goto_4
    if-ge v8, v6, :cond_17

    .line 82
    aget-object v9, v4, v8

    invoke-static {v9}, Ldam;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_17
    const/4 v4, 0x0

    :goto_5
    if-ge v4, v6, :cond_1a

    .line 83
    aget-wide v8, v7, v4

    iget-boolean v10, v5, Ldjy;->b:Z

    if-eqz v10, :cond_18

    .line 84
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v3, v5, Ldjy;->b:Z

    :cond_18
    iget-object v10, v5, Ldjy;->a:Ldkd;

    .line 85
    check-cast v10, Lemm;

    iget-object v11, v10, Lemm;->h:Ldkj;

    .line 86
    invoke-interface {v11}, Ldkj;->a()Z

    move-result v12

    if-nez v12, :cond_19

    .line 87
    invoke-static {v11}, Ldkd;->a(Ldkj;)Ldkj;

    move-result-object v11

    iput-object v11, v10, Lemm;->h:Ldkj;

    :cond_19
    iget-object v10, v10, Lemm;->h:Ldkj;

    .line 88
    invoke-interface {v10, v8, v9}, Ldkj;->a(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_1a
    iget-boolean v4, v5, Ldjy;->b:Z

    if-eqz v4, :cond_1b

    .line 89
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v3, v5, Ldjy;->b:Z

    :cond_1b
    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 90
    check-cast v4, Lemm;

    iget v6, v4, Lemm;->a:I

    const v7, -0x40001

    and-int/2addr v6, v7

    iput v6, v4, Lemm;->a:I

    sget-object v6, Lemm;->i:Lemm;

    iget-object v6, v6, Lemm;->g:Ljava/lang/String;

    iput-object v6, v4, Lemm;->g:Ljava/lang/String;

    iget-boolean v4, v2, Ldjy;->b:Z

    if-eqz v4, :cond_1c

    .line 91
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v3, v2, Ldjy;->b:Z

    :cond_1c
    iget-object v4, v2, Ldjy;->a:Ldkd;

    .line 92
    check-cast v4, Lemn;

    .line 93
    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v5

    check-cast v5, Lemm;

    .line 94
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v4, Lemn;->a:Ldkk;

    .line 95
    invoke-interface {v6}, Ldkk;->a()Z

    move-result v7

    if-nez v7, :cond_1d

    .line 96
    invoke-static {v6}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v6

    iput-object v6, v4, Lemn;->a:Ldkk;

    :cond_1d
    iget-object v4, v4, Lemn;->a:Ldkk;

    .line 97
    invoke-interface {v4, p1, v5}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_3

    :cond_1e
    iget-boolean p1, v1, Ldjy;->b:Z

    if-eqz p1, :cond_1f

    .line 98
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_1f
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 99
    check-cast p1, Lepj;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Lemn;

    .line 100
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, p1, Lepj;->f:Lemn;

    iget v2, p1, Lepj;->a:I

    or-int/lit8 v2, v2, 0x20

    iput v2, p1, Lepj;->a:I

    .line 64
    :cond_20
    :goto_6
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 101
    check-cast p1, Lepj;

    iget v2, p1, Lepj;->a:I

    const v4, 0x8000

    and-int/2addr v2, v4

    if-eqz v2, :cond_28

    iget-object p1, p1, Lepj;->m:Lenr;

    if-nez p1, :cond_21

    .line 102
    sget-object p1, Lenr;->f:Lenr;

    :cond_21
    iget-object p1, p1, Lenr;->d:Ldkk;

    .line 103
    invoke-interface {p1}, Ldkk;->size()I

    move-result p1

    if-nez p1, :cond_22

    goto/16 :goto_8

    .line 124
    :cond_22
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 104
    check-cast p1, Lepj;

    iget-object p1, p1, Lepj;->m:Lenr;

    if-nez p1, :cond_23

    sget-object p1, Lenr;->f:Lenr;

    .line 105
    :cond_23
    invoke-virtual {p1, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldjy;

    .line 106
    invoke-virtual {v2, p1}, Ldjy;->a(Ldkd;)V

    const/4 p1, 0x0

    :goto_7
    iget-object v5, v2, Ldjy;->a:Ldkd;

    .line 107
    check-cast v5, Lenr;

    iget-object v5, v5, Lenr;->d:Ldkk;

    .line 108
    invoke-interface {v5}, Ldkk;->size()I

    move-result v5

    if-ge p1, v5, :cond_26

    iget-object v5, v2, Ldjy;->a:Ldkd;

    .line 109
    check-cast v5, Lenr;

    iget-object v5, v5, Lenr;->d:Ldkk;

    .line 110
    invoke-interface {v5, p1}, Ldkk;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lenu;

    .line 111
    invoke-virtual {v5, v0}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldjy;

    .line 112
    invoke-virtual {v6, v5}, Ldjy;->a(Ldkd;)V

    sget-object v5, Lcbx;->d:Lcbw;

    .line 113
    invoke-static {v5, v6}, Lcbx;->a(Lcbw;Ldli;)V

    iget-boolean v5, v2, Ldjy;->b:Z

    if-eqz v5, :cond_24

    .line 114
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v3, v2, Ldjy;->b:Z

    :cond_24
    iget-object v5, v2, Ldjy;->a:Ldkd;

    .line 115
    check-cast v5, Lenr;

    .line 116
    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v6

    check-cast v6, Lenu;

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v5, Lenr;->d:Ldkk;

    .line 118
    invoke-interface {v7}, Ldkk;->a()Z

    move-result v8

    if-nez v8, :cond_25

    .line 119
    invoke-static {v7}, Ldkd;->a(Ldkk;)Ldkk;

    move-result-object v7

    iput-object v7, v5, Lenr;->d:Ldkk;

    :cond_25
    iget-object v5, v5, Lenr;->d:Ldkk;

    .line 120
    invoke-interface {v5, p1, v6}, Ldkk;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_7

    :cond_26
    iget-boolean p1, v1, Ldjy;->b:Z

    if-eqz p1, :cond_27

    .line 121
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v3, v1, Ldjy;->b:Z

    :cond_27
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 122
    check-cast p1, Lepj;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lenr;

    .line 123
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lepj;->m:Lenr;

    iget v0, p1, Lepj;->a:I

    or-int/2addr v0, v4

    iput v0, p1, Lepj;->a:I

    .line 124
    :cond_28
    :goto_8
    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lepj;

    invoke-virtual {p0, p1}, Lcbx;->b(Lepj;)V

    return-void
.end method

.method protected abstract b(Lepj;)V
.end method
