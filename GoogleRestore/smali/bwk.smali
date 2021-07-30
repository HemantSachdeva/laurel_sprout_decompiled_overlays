.class final Lbwk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# instance fields
.field public final a:Ljava/lang/Thread$UncaughtExceptionHandler;

.field final synthetic b:Lbwl;


# direct methods
.method public constructor <init>(Lbwl;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 0

    iput-object p1, p0, Lbwk;->b:Lbwl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbwk;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    return-void
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 12

    const-string v0, "createCrashMetric"

    const-string v1, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl"

    const-string v2, "CrashMetricServiceImpl.java"

    iget-object v3, p0, Lbwk;->b:Lbwl;

    iget-object v3, v3, Lbwl;->g:Lcbh;

    .line 1
    invoke-virtual {v3}, Lcbh;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v3, p0, Lbwk;->b:Lbwl;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    .line 3
    sget-object v5, Leoi;->i:Leoi;

    .line 4
    invoke-virtual {v5}, Ldkd;->g()Ldjy;

    move-result-object v5

    iget-object v6, v3, Lbwl;->b:Lbry;

    invoke-static {v6}, Lbry;->a(Lbry;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    iget-boolean v8, v5, Ldjy;->b:Z

    if-eqz v8, :cond_1

    .line 5
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v7, v5, Ldjy;->b:Z

    :cond_1
    iget-object v8, v5, Ldjy;->a:Ldkd;

    .line 6
    check-cast v8, Leoi;

    .line 7
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v8, Leoi;->a:I

    or-int/lit8 v9, v9, 0x4

    iput v9, v8, Leoi;->a:I

    iput-object v6, v8, Leoi;->d:Ljava/lang/String;

    :cond_2
    iget-boolean v6, v5, Ldjy;->b:Z

    if-eqz v6, :cond_3

    .line 8
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v7, v5, Ldjy;->b:Z

    :cond_3
    iget-object v6, v5, Ldjy;->a:Ldkd;

    .line 9
    check-cast v6, Leoi;

    iget v8, v6, Leoi;->a:I

    const/4 v9, 0x1

    or-int/2addr v8, v9

    iput v8, v6, Leoi;->a:I

    iput-boolean v9, v6, Leoi;->b:Z

    .line 10
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    or-int/lit8 v8, v8, 0x8

    iput v8, v6, Leoi;->a:I

    iput-object v4, v6, Leoi;->e:Ljava/lang/String;

    .line 11
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-class v6, Ljava/lang/OutOfMemoryError;

    if-ne v4, v6, :cond_4

    .line 12
    sget-object v4, Leoh;->c:Leoh;

    goto :goto_0

    .line 35
    :cond_4
    const-class v6, Ljava/lang/NullPointerException;

    .line 13
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 14
    sget-object v4, Leoh;->b:Leoh;

    goto :goto_0

    :cond_5
    const-class v6, Ljava/lang/RuntimeException;

    .line 15
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 16
    sget-object v4, Leoh;->d:Leoh;

    goto :goto_0

    :cond_6
    const-class v6, Ljava/lang/Error;

    .line 17
    invoke-virtual {v6, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 19
    sget-object v4, Leoh;->e:Leoh;

    goto :goto_0

    .line 18
    :cond_7
    sget-object v4, Leoh;->a:Leoh;

    .line 12
    :goto_0
    iget-boolean v6, v5, Ldjy;->b:Z

    if-eqz v6, :cond_8

    .line 20
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v7, v5, Ldjy;->b:Z

    :cond_8
    iget-object v6, v5, Ldjy;->a:Ldkd;

    .line 21
    check-cast v6, Leoi;

    iget v4, v4, Leoh;->f:I

    iput v4, v6, Leoi;->f:I

    iget v4, v6, Leoi;->a:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v6, Leoi;->a:I

    .line 22
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    iget-boolean v6, v5, Ldjy;->b:Z

    if-eqz v6, :cond_9

    .line 23
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v7, v5, Ldjy;->b:Z

    :cond_9
    iget-object v6, v5, Ldjy;->a:Ldkd;

    .line 24
    check-cast v6, Leoi;

    .line 25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v6, Leoi;->a:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v6, Leoi;->a:I

    iput-object v4, v6, Leoi;->h:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v4, Ljava/io/StringWriter;

    .line 26
    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    new-instance v6, Ljava/io/PrintWriter;

    .line 27
    invoke-direct {v6, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    invoke-static {p2, v6}, Ldat;->a(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V

    .line 28
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "([^:^\n]+).*((?:\n\\s*at [^:~\n]*:?~?[0-9]*[^\n]*)+)(?:(\nCaused by: )([^:^\n]+).*((?:\n\\s*at [^:~\n]*:?~?[0-9]*[^\n]*)+))?(?:(\nCaused by: )([^:^\n]+).*((?:\n\\s*at [^:~\n]*:?~?[0-9]*[^\n]*)+))?"

    .line 30
    invoke-static {v8}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v8

    .line 31
    invoke-virtual {v8, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 32
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_b

    const/4 v8, 0x1

    .line 33
    :goto_1
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v10

    if-gt v8, v10, :cond_b

    .line 34
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_a

    goto :goto_2

    .line 35
    :cond_a
    invoke-virtual {v4, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 36
    :cond_b
    :goto_2
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 37
    invoke-static {v4}, Ldam;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 38
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    iget-boolean v4, v5, Ldjy;->b:Z

    if-eqz v4, :cond_c

    .line 39
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v7, v5, Ldjy;->b:Z

    :cond_c
    iget-object v4, v5, Ldjy;->a:Ldkd;

    .line 40
    check-cast v4, Leoi;

    iget v6, v4, Leoi;->a:I

    or-int/lit8 v6, v6, 0x20

    iput v6, v4, Leoi;->a:I

    iput-wide v10, v4, Leoi;->g:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    .line 65
    :catch_0
    move-exception v4

    :try_start_2
    sget-object v6, Lbwl;->a:Lcua;

    invoke-virtual {v6}, Lctx;->b()Lcup;

    move-result-object v6

    .line 41
    check-cast v6, Lctz;

    invoke-interface {v6, v4}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v4, 0xea

    invoke-interface {v6, v1, v0, v4, v2}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "Failed to generate hashed stack trace."

    invoke-interface {v6, v4}, Lctz;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 42
    :cond_d
    :goto_3
    :try_start_3
    sget-object v4, Leoa;->c:Leoa;

    .line 43
    invoke-virtual {v4}, Ldkd;->g()Ldjy;

    move-result-object v4

    iget-object v3, v3, Lbwl;->c:Landroid/app/Application;

    const/4 v6, 0x0

    .line 44
    invoke-static {v6, v3}, Lbun;->a(Ljava/lang/String;Landroid/content/Context;)Leny;

    move-result-object v3

    iget-boolean v6, v4, Ldjy;->b:Z

    if-eqz v6, :cond_e

    .line 45
    invoke-virtual {v4}, Ldjy;->b()V

    iput-boolean v7, v4, Ldjy;->b:Z

    :cond_e
    iget-object v6, v4, Ldjy;->a:Ldkd;

    .line 46
    check-cast v6, Leoa;

    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v6, Leoa;->b:Leny;

    iget v3, v6, Leoa;->a:I

    or-int/2addr v3, v9

    iput v3, v6, Leoa;->a:I

    iget-boolean v3, v5, Ldjy;->b:Z

    if-eqz v3, :cond_f

    .line 48
    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v7, v5, Ldjy;->b:Z

    :cond_f
    iget-object v3, v5, Ldjy;->a:Ldkd;

    .line 49
    check-cast v3, Leoi;

    invoke-virtual {v4}, Ldjy;->f()Ldkd;

    move-result-object v4

    check-cast v4, Leoa;

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v4, v3, Leoi;->c:Leoa;

    iget v4, v3, Leoi;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, v3, Leoi;->a:I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    .line 41
    :catch_1
    move-exception v3

    :try_start_4
    sget-object v4, Lbwl;->a:Lcua;

    invoke-virtual {v4}, Lctx;->b()Lcup;

    move-result-object v4

    .line 51
    check-cast v4, Lctz;

    invoke-interface {v4, v3}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v3, 0xf1

    invoke-interface {v4, v1, v0, v3, v2}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Failed to get process stats."

    invoke-interface {v4, v0}, Lctz;->a(Ljava/lang/String;)V

    .line 52
    :goto_4
    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Leoi;

    .line 53
    sget-object v1, Lepj;->w:Lepj;

    .line 54
    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v3, v1, Ldjy;->b:Z

    if-eqz v3, :cond_10

    .line 55
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v7, v1, Ldjy;->b:Z

    :cond_10
    iget-object v3, v1, Ldjy;->a:Ldkd;

    .line 56
    check-cast v3, Lepj;

    .line 57
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v3, Lepj;->g:Leoi;

    iget v0, v3, Lepj;->a:I

    or-int/lit8 v0, v0, 0x40

    iput v0, v3, Lepj;->a:I

    iget-object v0, p0, Lbwk;->b:Lbwl;

    .line 58
    invoke-virtual {v0}, Lbwl;->e()V

    iget-object v0, p0, Lbwk;->b:Lbwl;

    iget-object v0, v0, Lbwl;->f:Lbvq;

    .line 59
    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lepj;

    invoke-virtual {v0, v1}, Lbvq;->a(Lepj;)V

    iget-object v0, p0, Lbwk;->b:Lbwl;

    iget-object v0, v0, Lbwl;->f:Lbvq;

    new-instance v1, Lbwj;

    .line 60
    invoke-direct {v1, p0}, Lbwj;-><init>(Lbwk;)V

    .line 61
    invoke-virtual {v0, v1}, Lbvq;->a(Lczc;)Lczu;

    move-result-object v1

    iget-object v3, v0, Lbvq;->f:Lczm;

    iget-object v0, v0, Lbvq;->e:Ljava/util/concurrent/Executor;

    .line 62
    invoke-static {v1, v3, v0}, Ldab;->a(Lczu;Lczm;Ljava/util/concurrent/Executor;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v0, p0, Lbwk;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_11

    .line 64
    :goto_5
    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    .line 18
    :catch_2
    move-exception v0

    :try_start_5
    sget-object v1, Lbwl;->a:Lcua;

    invoke-virtual {v1}, Lctx;->b()Lcup;

    move-result-object v1

    .line 63
    check-cast v1, Lctz;

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "com/google/android/libraries/performance/primes/metrics/crash/CrashMetricServiceImpl$PrimesUncaughtExceptionHandler"

    const-string v3, "uncaughtException"

    const/16 v4, 0xb7

    invoke-interface {v1, v0, v3, v4, v2}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Failed to record crash."

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    iget-object v0, p0, Lbwk;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_11

    .line 64
    goto :goto_5

    :cond_11
    return-void

    :goto_6
    iget-object v1, p0, Lbwk;->a:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v1, :cond_12

    invoke-interface {v1, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 65
    :cond_12
    goto :goto_8

    :goto_7
    throw v0

    :goto_8
    goto :goto_7
.end method
