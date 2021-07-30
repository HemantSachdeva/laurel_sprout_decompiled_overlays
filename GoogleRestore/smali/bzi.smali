.class public final Lbzi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lbvt;
.implements Lbqu;


# static fields
.field private static final a:Lcua;


# instance fields
.field private final b:Lbqy;

.field private final c:Leip;

.field private final d:Leip;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricHandler"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbzi;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Lbqy;Leip;Leip;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzi;->b:Lbqy;

    iput-object p2, p0, Lbzi;->c:Leip;

    iput-object p3, p0, Lbzi;->d:Leip;

    return-void
.end method

.method private static a(Ljava/lang/Long;J)J
    .locals 2

    if-nez p0, :cond_0

    return-wide p1

    .line 16
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method private static a(Lbzc;)Lenv;
    .locals 6

    .line 1
    sget-object v0, Lenv;->f:Lenv;

    .line 2
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    iget-object v1, p0, Lbzc;->a:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lbzc;->a:Ljava/lang/String;

    iget-boolean v3, v0, Ldjy;->b:Z

    if-eqz v3, :cond_0

    .line 3
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_0
    iget-object v3, v0, Ldjy;->a:Ldkd;

    .line 4
    check-cast v3, Lenv;

    .line 5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lenv;->a:I

    or-int/lit8 v4, v4, 0x1

    iput v4, v3, Lenv;->a:I

    iput-object v1, v3, Lenv;->b:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lbzc;->b:Ljava/lang/Long;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lbzc;->b:Ljava/lang/Long;

    .line 6
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_2
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 8
    check-cast v1, Lenv;

    iget v5, v1, Lenv;->a:I

    or-int/lit8 v5, v5, 0x2

    iput v5, v1, Lenv;->a:I

    iput-wide v3, v1, Lenv;->c:J

    :cond_3
    iget-object v1, p0, Lbzc;->c:Ljava/lang/Long;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lbzc;->c:Ljava/lang/Long;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_4
    iget-object v1, v0, Ldjy;->a:Ldkd;

    .line 11
    check-cast v1, Lenv;

    iget v5, v1, Lenv;->a:I

    or-int/lit8 v5, v5, 0x4

    iput v5, v1, Lenv;->a:I

    iput-wide v3, v1, Lenv;->d:J

    :cond_5
    iget-object v1, p0, Lbzc;->d:Ljava/lang/Long;

    if-eqz v1, :cond_7

    iget-object p0, p0, Lbzc;->d:Ljava/lang/Long;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean p0, v0, Ldjy;->b:Z

    if-eqz p0, :cond_6

    .line 13
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v2, v0, Ldjy;->b:Z

    :cond_6
    iget-object p0, v0, Ldjy;->a:Ldkd;

    .line 14
    check-cast p0, Lenv;

    iget v1, p0, Lenv;->a:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lenv;->a:I

    iput-wide v3, p0, Lenv;->e:J

    .line 15
    :cond_7
    invoke-virtual {v0}, Ldjy;->f()Ldkd;

    move-result-object p0

    check-cast p0, Lenv;

    return-object p0
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lbzi;->b:Lbqy;

    .line 142
    invoke-virtual {v0, p0}, Lbqy;->b(Lbqx;)V

    return-void
.end method

.method public final b(Landroid/app/Activity;)V
    .locals 19

    move-object/from16 v1, p0

    iget-object v0, v1, Lbzi;->b:Lbqy;

    .line 17
    invoke-virtual {v0, v1}, Lbqy;->b(Lbqx;)V

    .line 18
    sget-object v2, Lbzh;->b:Lbzh;

    iget-wide v3, v2, Lbzh;->g:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_48

    iget-boolean v0, v2, Lbzh;->c:Z

    if-eqz v0, :cond_0

    iget-wide v3, v2, Lbzh;->d:J

    goto :goto_0

    .line 49
    :cond_0
    iget-wide v3, v2, Lbzh;->f:J

    .line 18
    :goto_0
    cmp-long v0, v3, v5

    if-lez v0, :cond_47

    iget-wide v7, v2, Lbzh;->g:J

    cmp-long v0, v7, v3

    if-ltz v0, :cond_47

    .line 19
    sget-object v0, Lenx;->n:Lenx;

    .line 20
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v3

    iget-boolean v0, v2, Lbzh;->c:Z

    iget-boolean v4, v3, Ldjy;->b:Z

    const/4 v7, 0x0

    if-eqz v4, :cond_1

    .line 21
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_1
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 22
    check-cast v4, Lenx;

    iget v8, v4, Lenx;->a:I

    or-int/lit16 v8, v8, 0x200

    iput v8, v4, Lenx;->a:I

    iput-boolean v0, v4, Lenx;->j:Z

    iget-object v0, v2, Lbzh;->i:Lbzg;

    iget-boolean v4, v0, Lbzg;->a:Z

    if-eqz v4, :cond_3

    iget-wide v8, v2, Lbzh;->d:J

    iget-boolean v4, v3, Ldjy;->b:Z

    if-eqz v4, :cond_2

    .line 23
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_2
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 24
    check-cast v4, Lenx;

    iget v10, v4, Lenx;->a:I

    or-int/lit8 v10, v10, 0x10

    iput v10, v4, Lenx;->a:I

    iput-wide v8, v4, Lenx;->e:J

    .line 25
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    goto :goto_1

    .line 49
    :cond_3
    const/4 v4, 0x0

    .line 25
    :goto_1
    iget-boolean v8, v0, Lbzg;->b:Z

    const/16 v9, 0x20

    if-eqz v8, :cond_5

    iget-wide v10, v2, Lbzh;->e:J

    iget-boolean v8, v3, Ldjy;->b:Z

    if-eqz v8, :cond_4

    .line 26
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_4
    iget-object v8, v3, Ldjy;->a:Ldkd;

    .line 27
    check-cast v8, Lenx;

    iget v12, v8, Lenx;->a:I

    or-int/2addr v12, v9

    iput v12, v8, Lenx;->a:I

    iput-wide v10, v8, Lenx;->f:J

    .line 28
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_5
    iget-boolean v8, v0, Lbzg;->c:Z

    if-eqz v8, :cond_7

    iget-wide v10, v2, Lbzh;->f:J

    iget-boolean v8, v3, Ldjy;->b:Z

    if-eqz v8, :cond_6

    .line 29
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_6
    iget-object v8, v3, Ldjy;->a:Ldkd;

    .line 30
    check-cast v8, Lenx;

    iget v12, v8, Lenx;->a:I

    or-int/lit8 v12, v12, 0x40

    iput v12, v8, Lenx;->a:I

    iput-wide v10, v8, Lenx;->g:J

    .line 31
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_7
    iget-boolean v8, v0, Lbzg;->d:Z

    if-eqz v8, :cond_9

    iget-wide v10, v2, Lbzh;->g:J

    iget-boolean v8, v3, Ldjy;->b:Z

    if-eqz v8, :cond_8

    .line 32
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_8
    iget-object v8, v3, Ldjy;->a:Ldkd;

    .line 33
    check-cast v8, Lenx;

    iget v12, v8, Lenx;->a:I

    or-int/lit16 v12, v12, 0x80

    iput v12, v8, Lenx;->a:I

    iput-wide v10, v8, Lenx;->h:J

    .line 34
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_9
    iget-boolean v0, v0, Lbzg;->e:Z

    iget-object v0, v2, Lbzh;->j:Lbzc;

    iget-object v0, v0, Lbzc;->b:Ljava/lang/Long;

    const/4 v8, 0x2

    if-eqz v0, :cond_d

    iget-object v0, v2, Lbzh;->j:Lbzc;

    .line 35
    invoke-static {v0}, Lbzi;->a(Lbzc;)Lenv;

    move-result-object v0

    iget-boolean v10, v3, Ldjy;->b:Z

    if-eqz v10, :cond_a

    .line 36
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_a
    iget-object v10, v3, Ldjy;->a:Ldkd;

    .line 37
    check-cast v10, Lenx;

    .line 38
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v10, Lenx;->k:Lenv;

    iget v11, v10, Lenx;->a:I

    or-int/lit16 v11, v11, 0x400

    iput v11, v10, Lenx;->a:I

    iget v10, v0, Lenv;->a:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_b

    iget-wide v10, v0, Lenv;->c:J

    .line 39
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_b
    iget v10, v0, Lenv;->a:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_c

    iget-wide v10, v0, Lenv;->d:J

    .line 40
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_c
    iget v10, v0, Lenv;->a:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_d

    iget-wide v10, v0, Lenv;->e:J

    .line 41
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_d
    iget-object v0, v2, Lbzh;->k:Lbzc;

    iget-object v0, v0, Lbzc;->b:Ljava/lang/Long;

    if-eqz v0, :cond_11

    iget-object v0, v2, Lbzh;->k:Lbzc;

    .line 42
    invoke-static {v0}, Lbzi;->a(Lbzc;)Lenv;

    move-result-object v0

    iget-boolean v10, v3, Ldjy;->b:Z

    if-eqz v10, :cond_e

    .line 43
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_e
    iget-object v10, v3, Ldjy;->a:Ldkd;

    .line 44
    check-cast v10, Lenx;

    .line 45
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v10, Lenx;->l:Lenv;

    iget v11, v10, Lenx;->a:I

    or-int/lit16 v11, v11, 0x800

    iput v11, v10, Lenx;->a:I

    iget v10, v0, Lenv;->a:I

    and-int/2addr v10, v8

    if-eqz v10, :cond_f

    iget-wide v10, v0, Lenv;->c:J

    .line 46
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_f
    iget v10, v0, Lenv;->a:I

    and-int/lit8 v10, v10, 0x4

    if-eqz v10, :cond_10

    iget-wide v10, v0, Lenv;->d:J

    .line 47
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    :cond_10
    iget v10, v0, Lenv;->a:I

    and-int/lit8 v10, v10, 0x8

    if-eqz v10, :cond_11

    iget-wide v10, v0, Lenv;->e:J

    .line 48
    invoke-static {v4, v10, v11}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 49
    :cond_11
    sget-object v0, Lbzn;->a:Lcqu;

    if-nez v0, :cond_20

    .line 50
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 51
    sget v0, Landroid/system/OsConstants;->_SC_CLK_TCK:I

    invoke-static {v0}, Landroid/system/Os;->sysconf(I)J

    move-result-wide v11

    cmp-long v0, v11, v5

    if-lez v0, :cond_12

    .line 52
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    .line 49
    :cond_12
    sget-object v0, Lcqb;->a:Lcqb;

    move-object v11, v0

    .line 52
    :goto_2
    invoke-virtual {v11}, Lcqu;->a()Z

    move-result v0

    if-nez v0, :cond_13

    .line 49
    :goto_3
    sget-object v0, Lcqb;->a:Lcqb;

    goto/16 :goto_c

    .line 53
    :cond_13
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v12

    const/16 v0, 0x1b8

    new-array v0, v0, [B

    .line 49
    :try_start_0
    new-instance v13, Ljava/io/FileInputStream;

    new-instance v14, Ljava/io/File;

    const-string v15, "/proc/self/stat"

    .line 54
    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v13, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    :try_start_1
    invoke-virtual {v13, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v14
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    :try_start_2
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 57
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v12, 0x0

    :goto_4
    if-ge v12, v14, :cond_14

    .line 59
    aget-byte v13, v0, v12

    const/16 v15, 0x28

    if-eq v13, v15, :cond_15

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 62
    :cond_14
    const/4 v12, 0x0

    .line 59
    :cond_15
    if-eqz v12, :cond_1e

    add-int/lit8 v13, v12, 0x10

    if-lt v13, v14, :cond_16

    goto :goto_9

    .line 63
    :cond_16
    :goto_5
    if-le v13, v12, :cond_18

    .line 60
    aget-byte v15, v0, v13

    const/16 v10, 0x29

    if-ne v15, v10, :cond_17

    move v12, v13

    const/4 v10, 0x1

    goto :goto_6

    .line 62
    :cond_17
    add-int/lit8 v13, v13, -0x1

    goto :goto_5

    :cond_18
    const/4 v10, 0x0

    .line 60
    :goto_6
    if-nez v10, :cond_19

    .line 49
    goto :goto_9

    :cond_19
    move-wide v15, v5

    const/4 v10, 0x1

    :goto_7
    if-ge v12, v14, :cond_1e

    .line 61
    aget-byte v13, v0, v12

    const/16 v8, 0x15

    if-ne v13, v9, :cond_1c

    add-int/lit8 v13, v10, 0x1

    if-ne v10, v8, :cond_1b

    cmp-long v0, v15, v5

    if-gtz v0, :cond_1a

    goto :goto_9

    .line 62
    :cond_1a
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    goto :goto_b

    :cond_1b
    move v10, v13

    goto :goto_8

    :cond_1c
    if-ne v10, v8, :cond_1d

    const-wide v17, 0xcccccccccccccccL

    cmp-long v10, v15, v17

    if-gtz v10, :cond_1e

    const-wide/16 v17, 0xa

    mul-long v15, v15, v17

    const/16 v10, 0x30

    if-lt v13, v10, :cond_1e

    const/16 v10, 0x39

    if-gt v13, v10, :cond_1e

    add-int/lit8 v13, v13, -0x30

    int-to-long v8, v13

    add-long/2addr v15, v8

    const/16 v10, 0x15

    :cond_1d
    :goto_8
    add-int/lit8 v12, v12, 0x1

    const/4 v8, 0x2

    const/16 v9, 0x20

    goto :goto_7

    .line 49
    :cond_1e
    :goto_9
    sget-object v0, Lcqb;->a:Lcqb;

    goto :goto_b

    .line 58
    :catchall_0
    move-exception v0

    move-object v8, v0

    .line 54
    :try_start_3
    invoke-virtual {v13}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v9, v0

    :try_start_4
    invoke-static {v8, v9}, Ldat;->a(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_a
    throw v8
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 57
    :catchall_2
    move-exception v0

    goto :goto_d

    .line 140
    :catch_0
    move-exception v0

    .line 49
    :try_start_5
    sget-object v0, Lcqb;->a:Lcqb;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 57
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 49
    :goto_b
    invoke-virtual {v0}, Lcqu;->a()Z

    move-result v8

    if-nez v8, :cond_1f

    goto/16 :goto_3

    .line 63
    :cond_1f
    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v8

    invoke-virtual {v11}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    div-long/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcqu;->b(Ljava/lang/Object;)Lcqu;

    move-result-object v0

    .line 49
    :goto_c
    sput-object v0, Lbzn;->a:Lcqu;

    goto :goto_e

    .line 57
    :goto_d
    invoke-static {v12}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 58
    throw v0

    .line 49
    :cond_20
    :goto_e
    invoke-virtual {v0}, Lcqu;->a()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 64
    invoke-virtual {v0}, Lcqu;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 65
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-boolean v10, v3, Ldjy;->b:Z

    if-eqz v10, :cond_21

    .line 66
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_21
    iget-object v10, v3, Ldjy;->a:Ldkd;

    .line 67
    check-cast v10, Lenx;

    iget v11, v10, Lenx;->a:I

    const/4 v12, 0x2

    or-int/2addr v11, v12

    iput v11, v10, Lenx;->a:I

    iput-wide v8, v10, Lenx;->c:J

    .line 68
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 69
    :cond_22
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 70
    invoke-static {}, Landroid/os/Process;->getStartElapsedRealtime()J

    move-result-wide v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_23

    .line 71
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_23
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 72
    check-cast v0, Lenx;

    iget v10, v0, Lenx;->a:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v0, Lenx;->a:I

    iput-wide v8, v0, Lenx;->d:J

    .line 73
    invoke-static {v4, v8, v9}, Lbzi;->a(Ljava/lang/Long;J)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iget-object v0, v1, Lbzi;->d:Leip;

    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    cmp-long v4, v8, v5

    if-nez v4, :cond_24

    goto/16 :goto_f

    .line 139
    :cond_24
    if-nez v0, :cond_26

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_25

    .line 75
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_25
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 76
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v0, Lenx;->a:I

    iput-wide v8, v0, Lenx;->b:J

    :cond_26
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 77
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_28

    iget-wide v4, v0, Lenx;->e:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_27

    .line 78
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_27
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 79
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->e:J

    :cond_28
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 80
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    const/16 v5, 0x20

    and-int/2addr v4, v5

    if-eqz v4, :cond_2a

    iget-wide v4, v0, Lenx;->f:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_29

    .line 81
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_29
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 82
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    const/16 v10, 0x20

    or-int/2addr v6, v10

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->f:J

    :cond_2a
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 83
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit8 v4, v4, 0x40

    if-eqz v4, :cond_2c

    iget-wide v4, v0, Lenx;->g:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_2b

    .line 84
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_2b
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 85
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->g:J

    :cond_2c
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 86
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_2e

    iget-wide v4, v0, Lenx;->h:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_2d

    .line 87
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_2d
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 88
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->h:J

    :cond_2e
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 89
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit16 v4, v4, 0x100

    if-eqz v4, :cond_30

    iget-wide v4, v0, Lenx;->i:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_2f

    .line 90
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_2f
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 91
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->i:J

    :cond_30
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 92
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit16 v4, v4, 0x400

    const/4 v5, 0x5

    if-eqz v4, :cond_39

    iget-object v0, v0, Lenx;->k:Lenv;

    if-nez v0, :cond_31

    .line 93
    sget-object v0, Lenv;->f:Lenv;

    :cond_31
    nop

    .line 94
    invoke-virtual {v0, v5}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldjy;

    .line 95
    invoke-virtual {v4, v0}, Ldjy;->a(Ldkd;)V

    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 96
    check-cast v0, Lenv;

    iget v6, v0, Lenv;->a:I

    const/4 v10, 0x2

    and-int/2addr v6, v10

    if-eqz v6, :cond_33

    iget-wide v10, v0, Lenv;->c:J

    sub-long/2addr v10, v8

    iget-boolean v0, v4, Ldjy;->b:Z

    if-eqz v0, :cond_32

    .line 97
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_32
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 98
    check-cast v0, Lenv;

    iget v6, v0, Lenv;->a:I

    const/4 v12, 0x2

    or-int/2addr v6, v12

    iput v6, v0, Lenv;->a:I

    iput-wide v10, v0, Lenv;->c:J

    :cond_33
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 99
    check-cast v0, Lenv;

    iget v6, v0, Lenv;->a:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_35

    iget-wide v10, v0, Lenv;->d:J

    sub-long/2addr v10, v8

    iget-boolean v0, v4, Ldjy;->b:Z

    if-eqz v0, :cond_34

    .line 100
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_34
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 101
    check-cast v0, Lenv;

    iget v6, v0, Lenv;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v0, Lenv;->a:I

    iput-wide v10, v0, Lenv;->d:J

    :cond_35
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 102
    check-cast v0, Lenv;

    iget v6, v0, Lenv;->a:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_37

    iget-wide v10, v0, Lenv;->e:J

    sub-long/2addr v10, v8

    iget-boolean v0, v4, Ldjy;->b:Z

    if-eqz v0, :cond_36

    .line 103
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_36
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 104
    check-cast v0, Lenv;

    iget v6, v0, Lenv;->a:I

    or-int/lit8 v6, v6, 0x8

    iput v6, v0, Lenv;->a:I

    iput-wide v10, v0, Lenv;->e:J

    .line 105
    :cond_37
    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lenv;

    iget-boolean v4, v3, Ldjy;->b:Z

    if-eqz v4, :cond_38

    .line 106
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_38
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 107
    check-cast v4, Lenx;

    .line 108
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lenx;->k:Lenv;

    iget v0, v4, Lenx;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, v4, Lenx;->a:I

    :cond_39
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 109
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit16 v4, v4, 0x800

    if-eqz v4, :cond_42

    iget-object v0, v0, Lenx;->l:Lenv;

    if-nez v0, :cond_3a

    .line 110
    sget-object v0, Lenv;->f:Lenv;

    :cond_3a
    nop

    .line 111
    invoke-virtual {v0, v5}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldjy;

    .line 112
    invoke-virtual {v4, v0}, Ldjy;->a(Ldkd;)V

    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 113
    check-cast v0, Lenv;

    iget v5, v0, Lenv;->a:I

    const/4 v6, 0x2

    and-int/2addr v5, v6

    if-eqz v5, :cond_3c

    iget-wide v5, v0, Lenv;->c:J

    sub-long/2addr v5, v8

    iget-boolean v0, v4, Ldjy;->b:Z

    if-eqz v0, :cond_3b

    .line 114
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_3b
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 115
    check-cast v0, Lenv;

    iget v10, v0, Lenv;->a:I

    const/4 v11, 0x2

    or-int/2addr v10, v11

    iput v10, v0, Lenv;->a:I

    iput-wide v5, v0, Lenv;->c:J

    :cond_3c
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 116
    check-cast v0, Lenv;

    iget v5, v0, Lenv;->a:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_3e

    iget-wide v5, v0, Lenv;->d:J

    sub-long/2addr v5, v8

    iget-boolean v0, v4, Ldjy;->b:Z

    if-eqz v0, :cond_3d

    .line 117
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_3d
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 118
    check-cast v0, Lenv;

    iget v10, v0, Lenv;->a:I

    or-int/lit8 v10, v10, 0x4

    iput v10, v0, Lenv;->a:I

    iput-wide v5, v0, Lenv;->d:J

    :cond_3e
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 119
    check-cast v0, Lenv;

    iget v5, v0, Lenv;->a:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_40

    iget-wide v5, v0, Lenv;->e:J

    sub-long/2addr v5, v8

    iget-boolean v0, v4, Ldjy;->b:Z

    if-eqz v0, :cond_3f

    .line 120
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_3f
    iget-object v0, v4, Ldjy;->a:Ldkd;

    .line 121
    check-cast v0, Lenv;

    iget v10, v0, Lenv;->a:I

    or-int/lit8 v10, v10, 0x8

    iput v10, v0, Lenv;->a:I

    iput-wide v5, v0, Lenv;->e:J

    .line 122
    :cond_40
    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Lenv;

    iget-boolean v4, v3, Ldjy;->b:Z

    if-eqz v4, :cond_41

    .line 123
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_41
    iget-object v4, v3, Ldjy;->a:Ldkd;

    .line 124
    check-cast v4, Lenx;

    .line 125
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v4, Lenx;->l:Lenv;

    iget v0, v4, Lenx;->a:I

    or-int/lit16 v0, v0, 0x800

    iput v0, v4, Lenx;->a:I

    :cond_42
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 126
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_44

    iget-wide v4, v0, Lenx;->d:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_43

    .line 127
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_43
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 128
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->d:J

    :cond_44
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 129
    check-cast v0, Lenx;

    iget v4, v0, Lenx;->a:I

    const/4 v5, 0x2

    and-int/2addr v4, v5

    if-eqz v4, :cond_46

    iget-wide v4, v0, Lenx;->c:J

    sub-long/2addr v4, v8

    iget-boolean v0, v3, Ldjy;->b:Z

    if-eqz v0, :cond_45

    .line 130
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v7, v3, Ldjy;->b:Z

    :cond_45
    iget-object v0, v3, Ldjy;->a:Ldkd;

    .line 131
    check-cast v0, Lenx;

    iget v6, v0, Lenx;->a:I

    const/4 v8, 0x2

    or-int/2addr v6, v8

    iput v6, v0, Lenx;->a:I

    iput-wide v4, v0, Lenx;->c:J

    .line 74
    :cond_46
    :goto_f
    iget-object v0, v2, Lbzh;->h:Lbry;

    iget-object v0, v1, Lbzi;->c:Leip;

    .line 132
    invoke-interface {v0}, Leip;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbzl;

    sget-object v2, Lcqb;->a:Lcqb;

    .line 133
    invoke-static {v2}, Ldab;->a(Ljava/lang/Object;)Lczu;

    move-result-object v2

    sget-object v4, Lcqb;->a:Lcqb;

    .line 134
    invoke-static {v4}, Ldab;->a(Ljava/lang/Object;)Lczu;

    move-result-object v4

    const/4 v5, 0x2

    new-array v5, v5, [Lczu;

    aput-object v4, v5, v7

    const/4 v6, 0x1

    aput-object v2, v5, v6

    .line 135
    invoke-static {v5}, Lcsi;->a([Ljava/lang/Object;)Lcsi;

    move-result-object v5

    new-instance v6, Lbzk;

    .line 136
    invoke-direct {v6, v0, v3, v4, v2}, Lbzk;-><init>(Lbzl;Ldjy;Lczu;Lczu;)V

    .line 137
    sget-object v0, Lczj;->a:Lczj;

    .line 138
    new-instance v2, Lczi;

    invoke-direct {v2, v5, v0, v6}, Lczi;-><init>(Lcsd;Ljava/util/concurrent/Executor;Lczc;)V

    .line 139
    invoke-static {v2}, Lbte;->a(Lczu;)V

    return-void

    .line 49
    :cond_47
    return-void

    :cond_48
    sget-object v0, Lbzi;->a:Lcua;

    invoke-virtual {v0}, Lctx;->c()Lcup;

    move-result-object v0

    .line 140
    check-cast v0, Lctz;

    const/16 v2, 0xed

    const-string v3, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricHandler"

    const-string v4, "onAppToBackground"

    const-string v5, "StartupMetricHandler.java"

    invoke-interface {v0, v3, v4, v2, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "missing firstDraw timestamp"

    invoke-interface {v0, v2}, Lctz;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbzi;->b:Lbqy;

    .line 141
    invoke-virtual {v0, p0}, Lbqy;->a(Lbqx;)V

    return-void
.end method
