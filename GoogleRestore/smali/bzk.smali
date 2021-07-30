.class final synthetic Lbzk;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbzl;

.field private final b:Lczu;

.field private final c:Lczu;

.field private final d:Ldjy;


# direct methods
.method public constructor <init>(Lbzl;Ldjy;Lczu;Lczu;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbzk;->a:Lbzl;

    iput-object p2, p0, Lbzk;->d:Ldjy;

    iput-object p3, p0, Lbzk;->b:Lczu;

    iput-object p4, p0, Lbzk;->c:Lczu;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 13

    iget-object v0, p0, Lbzk;->a:Lbzl;

    iget-object v1, p0, Lbzk;->d:Ldjy;

    iget-object v2, p0, Lbzk;->b:Lczu;

    iget-object v3, p0, Lbzk;->c:Lczu;

    const/4 v4, 0x0

    :try_start_0
    invoke-static {v2}, Ldab;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcqu;

    invoke-virtual {v2}, Lcqu;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v5, v1, Ldjy;->a:Ldkd;

    check-cast v5, Lenx;

    iget-wide v5, v5, Lenx;->b:J

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    sub-long/2addr v9, v5

    iget-boolean v7, v1, Ldjy;->b:Z

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v4, v1, Ldjy;->b:Z

    :cond_1
    iget-object v7, v1, Ldjy;->a:Ldkd;

    check-cast v7, Lenx;

    iget-object v11, v7, Lenx;->m:Ldle;

    iget-boolean v12, v11, Ldle;->a:Z

    if-nez v12, :cond_2

    invoke-virtual {v11}, Ldle;->a()Ldle;

    move-result-object v11

    iput-object v11, v7, Lenx;->m:Ldle;

    :cond_2
    iget-object v7, v7, Lenx;->m:Ldle;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v5, Lbzl;->a:Lcua;

    invoke-virtual {v5}, Lctx;->b()Lcup;

    move-result-object v5

    check-cast v5, Lctz;

    invoke-interface {v5, v2}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v2, 0x50

    const-string v6, "com/google/android/libraries/performance/primes/metrics/startup/StartupMetricRecordingService"

    const-string v7, "setCustomTimestamps"

    const-string v8, "StartupMetricRecordingService.java"

    invoke-interface {v5, v6, v7, v2, v8}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "Failed to get custom timestamps future"

    invoke-interface {v5, v2}, Lctz;->a(Ljava/lang/String;)V

    :cond_3
    :goto_1
    iget-object v0, v0, Lbzl;->b:Lbvq;

    sget-object v2, Lepj;->w:Lepj;

    invoke-virtual {v2}, Ldkd;->g()Ldjy;

    move-result-object v2

    sget-object v5, Lenr;->f:Lenr;

    invoke-virtual {v5}, Ldkd;->g()Ldjy;

    move-result-object v5

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v6

    iget-boolean v8, v5, Ldjy;->b:Z

    if-eqz v8, :cond_4

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v4, v5, Ldjy;->b:Z

    :cond_4
    iget-object v8, v5, Ldjy;->a:Ldkd;

    check-cast v8, Lenr;

    iget v9, v8, Lenr;->a:I

    const/4 v10, 0x1

    or-int/2addr v9, v10

    iput v9, v8, Lenr;->a:I

    iput-wide v6, v8, Lenr;->b:J

    sget-object v6, Lenq;->c:Lenq;

    iget-boolean v7, v5, Ldjy;->b:Z

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v4, v5, Ldjy;->b:Z

    :cond_5
    iget-object v7, v5, Ldjy;->a:Ldkd;

    check-cast v7, Lenr;

    iget v6, v6, Lenq;->e:I

    iput v6, v7, Lenr;->c:I

    iget v6, v7, Lenr;->a:I

    or-int/lit8 v6, v6, 0x2

    iput v6, v7, Lenr;->a:I

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lenx;

    iget-boolean v6, v5, Ldjy;->b:Z

    if-eqz v6, :cond_6

    invoke-virtual {v5}, Ldjy;->b()V

    iput-boolean v4, v5, Ldjy;->b:Z

    :cond_6
    iget-object v6, v5, Ldjy;->a:Ldkd;

    check-cast v6, Lenr;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v6, Lenr;->e:Lenx;

    iget v1, v6, Lenr;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v6, Lenr;->a:I

    invoke-virtual {v5}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lenr;

    iget-boolean v5, v2, Ldjy;->b:Z

    if-eqz v5, :cond_7

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v4, v2, Ldjy;->b:Z

    :cond_7
    iget-object v4, v2, Ldjy;->a:Ldkd;

    check-cast v4, Lepj;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v1, v4, Lepj;->m:Lenr;

    iget v1, v4, Lepj;->a:I

    const v5, 0x8000

    or-int/2addr v1, v5

    iput v1, v4, Lepj;->a:I

    const/4 v1, 0x0

    invoke-virtual {v2}, Ldjy;->f()Ldkd;

    move-result-object v2

    check-cast v2, Lepj;

    invoke-static {v3}, Ldab;->a(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcqu;

    invoke-virtual {v3}, Lcqu;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lekw;

    invoke-virtual {v0, v1, v10, v2, v3}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object v0

    return-object v0
.end method
