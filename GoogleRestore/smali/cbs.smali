.class public final Lcbs;
.super Lcbx;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field private final e:Landroid/content/Context;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/lang/String;

.field private volatile h:Lbdh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricTransmitter"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lcbs;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcbk;Lcbp;)V
    .locals 0

    invoke-direct {p0}, Lcbx;-><init>()V

    iput-object p1, p0, Lcbs;->e:Landroid/content/Context;

    .line 1
    invoke-static {p2}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lcbs;->g:Ljava/lang/String;

    .line 2
    invoke-static {p3}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p4}, Lcrj;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const-string p3, "com.google.android.libraries.performance.primes#"

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    iput-object p1, p0, Lcbs;->f:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final b(Lepj;)V
    .locals 9

    sget-object v0, Lcbs;->a:Lcua;

    invoke-virtual {v0}, Lctx;->f()Lcup;

    move-result-object v1

    .line 5
    check-cast v1, Lctz;

    const-string v2, "com/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricTransmitter"

    const-string v3, "logSystemHealthMetric"

    const-string v4, "ClearcutMetricTransmitter.java"

    const/16 v5, 0x3d

    invoke-interface {v1, v2, v3, v5, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v2, "%s"

    invoke-virtual {p1}, Ldkd;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0}, Lctx;->e()Lcup;

    move-result-object v1

    .line 6
    check-cast v1, Lctz;

    invoke-interface {v1}, Lctz;->k()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_a

    iget v1, p1, Lepj;->a:I

    and-int/lit16 v4, v1, 0x80

    if-nez v4, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 17
    :cond_0
    const-string v4, "primes stats"

    .line 6
    :goto_0
    and-int/lit8 v5, v1, 0x20

    if-eqz v5, :cond_1

    const-string v4, "network metric"

    :cond_1
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_2

    const-string v4, "timer metric"

    :cond_2
    and-int/lit8 v5, v1, 0x1

    if-ne v2, v5, :cond_3

    const-string v4, "memory metric"

    :cond_3
    and-int/lit16 v5, v1, 0x200

    if-eqz v5, :cond_4

    const-string v4, "battery metric"

    :cond_4
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_5

    const-string v4, "crash metric"

    :cond_5
    and-int/lit16 v5, v1, 0x800

    if-eqz v5, :cond_6

    const-string v4, "jank metric"

    :cond_6
    and-int/lit16 v5, v1, 0x100

    if-eqz v5, :cond_7

    const-string v4, "package metric"

    :cond_7
    const v5, 0x8000

    and-int/2addr v1, v5

    if-eqz v1, :cond_8

    const-string v4, "trace"

    :cond_8
    if-nez v4, :cond_9

    const-string v4, "unknown"

    :cond_9
    invoke-virtual {v0}, Lctx;->e()Lcup;

    move-result-object v1

    .line 7
    check-cast v1, Lctz;

    const-string v5, "com/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricTransmitter"

    const-string v6, "logSystemHealthMetric"

    const/16 v7, 0x5e

    const-string v8, "ClearcutMetricTransmitter.java"

    invoke-interface {v1, v5, v6, v7, v8}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v5, "Sending Primes %s"

    invoke-interface {v1, v5, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_a
    invoke-virtual {p1}, Ldhi;->b()[B

    move-result-object p1

    iget-object v1, p0, Lcbs;->g:Ljava/lang/String;

    invoke-virtual {v0}, Lctx;->f()Lcup;

    move-result-object v0

    .line 9
    check-cast v0, Lctz;

    const-string v4, "com/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricTransmitter"

    const-string v5, "send"

    const/16 v6, 0x6d

    const-string v7, "ClearcutMetricTransmitter.java"

    invoke-interface {v0, v4, v5, v6, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v4, "%s"

    const/4 v5, 0x2

    invoke-static {p1, v5}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcbs;->h:Lbdh;

    if-nez v0, :cond_c

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcbs;->h:Lbdh;

    if-nez v0, :cond_b

    .line 10
    new-instance v0, Lbdh;

    iget-object v4, p0, Lcbs;->e:Landroid/content/Context;

    invoke-direct {v0, v4, v3}, Lbdh;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcbs;->h:Lbdh;

    .line 11
    :cond_b
    monitor-exit p0

    goto :goto_1

    .line 17
    :catchall_0
    move-exception p1

    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_c
    :goto_1
    iget-object v0, p0, Lcbs;->h:Lbdh;

    .line 12
    invoke-virtual {v0, p1}, Lbdh;->a([B)Lbde;

    move-result-object p1

    iput-object v1, p1, Lbde;->c:Ljava/lang/String;

    .line 13
    invoke-static {v3}, Lcqv;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e

    iget-object p1, p1, Lbde;->f:Ldka;

    iget-boolean v0, p1, Ldjy;->b:Z

    if-eqz v0, :cond_d

    .line 25
    invoke-virtual {p1}, Ldjy;->b()V

    const/4 v0, 0x0

    iput-boolean v0, p1, Ldjy;->b:Z

    :cond_d
    iget-object p1, p1, Ldka;->a:Ldkd;

    .line 26
    check-cast p1, Ldrt;

    sget-object p1, Ldrt;->j:Ldrt;

    .line 27
    throw v3

    :cond_e
    :try_start_1
    iget-object v0, p0, Lcbs;->f:Ljava/lang/String;

    iget-object v1, p1, Lbde;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_f

    new-instance v1, Ljava/util/ArrayList;

    .line 14
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p1, Lbde;->b:Ljava/util/ArrayList;

    :cond_f
    iget-object v1, p1, Lbde;->b:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 11
    :catch_0
    move-exception v0

    sget-object v1, Lcbs;->a:Lcua;

    invoke-virtual {v1}, Lctx;->d()Lcup;

    move-result-object v1

    .line 16
    check-cast v1, Lctz;

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string v0, "com/google/android/libraries/performance/primes/transmitter/clearcut/ClearcutMetricTransmitter"

    const-string v3, "send"

    const/16 v4, 0x7b

    const-string v5, "ClearcutMetricTransmitter.java"

    invoke-interface {v1, v0, v3, v4, v5}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Failed to associate config package."

    invoke-interface {v1, v0}, Lctz;->a(Ljava/lang/String;)V

    .line 17
    :goto_2
    invoke-virtual {p1}, Lbde;->a()Lbun;

    move-result-object p1

    sget-object v0, Lcbq;->a:Lbez;

    move-object v1, p1

    check-cast v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v1, v1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_2
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-boolean v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->g:Z

    xor-int/2addr v3, v2

    const-string v4, "Result has already been consumed."

    .line 18
    invoke-static {v3, v4}, Lbir;->a(ZLjava/lang/Object;)V

    .line 17
    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v3, v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i:Lbfc;

    const-string v3, "Cannot set callbacks if then() has been called."

    .line 19
    invoke-static {v2, v3}, Lbir;->a(ZLjava/lang/Object;)V

    .line 17
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b:Ljava/lang/Object;

    monitor-enter v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 17
    :try_start_4
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 22
    invoke-virtual {v2}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 17
    move-object v2, p1

    check-cast v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iget-object v2, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->c:Lbfs;

    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->b()Lbey;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Lbfs;->a(Lbez;Lbey;)V

    goto :goto_3

    .line 17
    :cond_10
    check-cast p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;

    iput-object v0, p1, Lcom/google/android/gms/common/api/internal/BasePendingResult;->e:Lbez;

    .line 24
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception p1

    .line 21
    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    .line 16
    :catchall_2
    move-exception p1

    .line 24
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1
.end method
