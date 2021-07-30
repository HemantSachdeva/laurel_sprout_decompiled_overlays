.class final Lbuz;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final b:Lcua;

.field private static final c:Ljava/util/regex/Pattern;


# instance fields
.field final a:Lj$/util/concurrent/ConcurrentHashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/battery/HashingNameSanitizer"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbuz;->b:Lcua;

    .line 1
    const-string v0, "^(\\*[a-z]+\\*).*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lbuz;->c:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lbuz;->a:Lj$/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 43
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 44
    :cond_0
    const/4 p0, 0x0

    .line 45
    aget-object p0, v0, p0

    return-object p0

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lbuz;->b:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 44
    check-cast v0, Lctz;

    const/16 v1, 0x34

    const-string v2, "com/google/android/libraries/performance/primes/metrics/battery/HashingNameSanitizer"

    const-string v3, "sanitizeSyncName"

    const-string v4, "HashingNameSanitizer.java"

    invoke-interface {v0, v2, v3, v1, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "malformed sync name: %s"

    invoke-interface {v0, v1, p0}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p0, "MALFORMED"

    return-object p0
.end method


# virtual methods
.method final a(Lbuy;Lejg;)Lejg;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    iget-object v3, v2, Lejg;->d:Leja;

    if-nez v3, :cond_0

    .line 3
    sget-object v3, Leja;->d:Leja;

    :cond_0
    iget v3, v3, Leja;->a:I

    const/4 v4, 0x2

    and-int/2addr v3, v4

    if-eqz v3, :cond_b

    iget-object v3, v2, Lejg;->d:Leja;

    if-nez v3, :cond_1

    sget-object v3, Leja;->d:Leja;

    .line 4
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldjy;

    .line 5
    invoke-virtual {v6, v3}, Ldjy;->a(Ldkd;)V

    .line 6
    invoke-virtual {v2, v5}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ldjy;

    .line 7
    invoke-virtual {v3, v2}, Ldjy;->a(Ldkd;)V

    iget-object v2, v6, Ldjy;->a:Ldkd;

    .line 8
    check-cast v2, Leja;

    iget-object v2, v2, Leja;->c:Ljava/lang/String;

    .line 9
    invoke-static {v2}, Ldam;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v5}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v5, v0, Lbuz;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v5, v9}, Lj$/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v10, 0x1

    if-nez v5, :cond_8

    .line 11
    sget-object v5, Lbuy;->a:Lbuy;

    invoke-virtual/range {p1 .. p1}, Lbuy;->ordinal()I

    move-result v5

    const-string v11, "HashingNameSanitizer.java"

    const-string v12, "com/google/android/libraries/performance/primes/metrics/battery/HashingNameSanitizer"

    if-eqz v5, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v4, :cond_2

    goto :goto_0

    .line 19
    :cond_2
    const-string v4, "--"

    goto :goto_1

    :cond_3
    invoke-static {v2}, Lbuz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 29
    :cond_4
    sget-object v4, Lbuz;->c:Ljava/util/regex/Pattern;

    .line 12
    invoke-virtual {v4, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 13
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v5

    const-string v13, "sanitizeWakelockName"

    if-eqz v5, :cond_7

    .line 14
    const-string v5, "*sync*/"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_6

    const/4 v4, 0x7

    .line 15
    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lbuz;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_5

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    nop

    .line 16
    invoke-virtual {v4, v10}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lbuz;->b:Lcua;

    invoke-virtual {v5}, Lctx;->d()Lcup;

    move-result-object v5

    .line 17
    check-cast v5, Lctz;

    const/16 v14, 0x49

    invoke-interface {v5, v12, v13, v14, v11}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v13, "non-sync system task wakelock: %s"

    invoke-interface {v5, v13, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    sget-object v4, Lbuz;->b:Lcua;

    invoke-virtual {v4}, Lctx;->d()Lcup;

    move-result-object v4

    .line 18
    check-cast v4, Lctz;

    const/16 v5, 0x4e

    invoke-interface {v4, v12, v13, v5, v11}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "wakelock: %s"

    invoke-interface {v4, v5, v2}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 20
    :goto_0
    move-object v4, v2

    :goto_1
    invoke-static {v4}, Ldam;->a(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    sget-object v13, Lbuz;->b:Lcua;

    invoke-virtual {v13}, Lctx;->d()Lcup;

    move-result-object v14

    .line 21
    check-cast v14, Lctz;

    const/16 v15, 0x88

    const-string v10, "rawHashFor"

    invoke-interface {v14, v12, v10, v15, v11}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v15, "Sanitized Hash: [%s] %s -> %d"

    invoke-interface {v14, v15, v1, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13}, Lctx;->f()Lcup;

    move-result-object v4

    .line 22
    check-cast v4, Lctz;

    const/16 v13, 0x89

    invoke-interface {v4, v12, v10, v13, v11}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v10, "Raw Hash: [%s] %s -> %d"

    invoke-interface {v4, v10, v1, v2, v9}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    if-eqz v5, :cond_8

    iget-object v1, v0, Lbuz;->a:Lj$/util/concurrent/ConcurrentHashMap;

    .line 23
    invoke-virtual {v1, v9, v5}, Lj$/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    iget-boolean v1, v6, Ldjy;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    .line 24
    invoke-virtual {v6}, Ldjy;->b()V

    iput-boolean v2, v6, Ldjy;->b:Z

    :cond_9
    iget-object v1, v6, Ldjy;->a:Ldkd;

    .line 25
    check-cast v1, Leja;

    iget v4, v1, Leja;->a:I

    const/4 v5, 0x1

    or-int/2addr v4, v5

    iput v4, v1, Leja;->a:I

    iput-wide v7, v1, Leja;->b:J

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Leja;->a:I

    sget-object v4, Leja;->d:Leja;

    iget-object v4, v4, Leja;->c:Ljava/lang/String;

    iput-object v4, v1, Leja;->c:Ljava/lang/String;

    iget-boolean v1, v3, Ldjy;->b:Z

    if-eqz v1, :cond_a

    .line 26
    invoke-virtual {v3}, Ldjy;->b()V

    iput-boolean v2, v3, Ldjy;->b:Z

    :cond_a
    iget-object v1, v3, Ldjy;->a:Ldkd;

    .line 27
    check-cast v1, Lejg;

    invoke-virtual {v6}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Leja;

    .line 28
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v2, v1, Lejg;->d:Leja;

    iget v2, v1, Lejg;->a:I

    or-int/lit8 v2, v2, 0x4

    iput v2, v1, Lejg;->a:I

    .line 29
    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lejg;

    return-object v1

    .line 19
    :cond_b
    return-object v2
.end method

.method final a(Lejg;)Lejg;
    .locals 6

    iget-object v0, p1, Lejg;->d:Leja;

    if-nez v0, :cond_0

    .line 30
    sget-object v0, Leja;->d:Leja;

    :cond_0
    iget v0, v0, Leja;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    iget-object v0, p1, Lejg;->d:Leja;

    if-nez v0, :cond_1

    sget-object v0, Leja;->d:Leja;

    .line 31
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldjy;

    .line 32
    invoke-virtual {v2, v0}, Ldjy;->a(Ldkd;)V

    iget-object v0, p0, Lbuz;->a:Lj$/util/concurrent/ConcurrentHashMap;

    iget-object v3, v2, Ldjy;->a:Ldkd;

    .line 33
    check-cast v3, Leja;

    iget-wide v3, v3, Leja;->b:J

    .line 34
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v0, v3}, Lj$/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-static {v0}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    invoke-virtual {p1, v1}, Ldkd;->b(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldjy;

    .line 36
    invoke-virtual {v1, p1}, Ldjy;->a(Ldkd;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    iget-boolean p1, v2, Ldjy;->b:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 38
    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v0, v2, Ldjy;->b:Z

    :cond_2
    iget-object p1, v2, Ldjy;->a:Ldkd;

    .line 39
    check-cast p1, Leja;

    iget v5, p1, Leja;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p1, Leja;->a:I

    iput-wide v3, p1, Leja;->b:J

    iget-boolean p1, v1, Ldjy;->b:Z

    if-eqz p1, :cond_3

    .line 40
    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v0, v1, Ldjy;->b:Z

    :cond_3
    iget-object p1, v1, Ldjy;->a:Ldkd;

    .line 41
    check-cast p1, Lejg;

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v0

    check-cast v0, Leja;

    .line 42
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p1, Lejg;->d:Leja;

    iget v0, p1, Lejg;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p1, Lejg;->a:I

    .line 37
    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object p1

    check-cast p1, Lejg;

    :cond_4
    return-object p1
.end method
