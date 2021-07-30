.class public final Lbde;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lbdh;

.field public b:Ljava/util/ArrayList;

.field public c:Ljava/lang/String;

.field public final d:Ldsg;

.field e:Z

.field public final f:Ldka;


# direct methods
.method public constructor <init>(Lbdh;[B)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 1
    invoke-static {p2}, Ldib;->a([B)Ldib;

    move-result-object p2

    goto :goto_0

    .line 21
    :cond_0
    move-object p2, v0

    .line 1
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lbde;->b:Ljava/util/ArrayList;

    .line 2
    sget-object v0, Ldrt;->j:Ldrt;

    .line 3
    invoke-virtual {v0}, Ldkd;->g()Ldjy;

    move-result-object v0

    check-cast v0, Ldka;

    iput-object v0, p0, Lbde;->f:Ldka;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lbde;->e:Z

    iput-object p1, p0, Lbde;->a:Lbdh;

    iget-object v2, p1, Lbdh;->f:Ljava/lang/String;

    iput-object v2, p0, Lbde;->c:Ljava/lang/String;

    iget-object v2, p1, Lbdh;->g:Ldsg;

    iput-object v2, p0, Lbde;->d:Ldsg;

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-boolean v4, v0, Ldjy;->b:Z

    if-eqz v4, :cond_1

    .line 5
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_1
    iget-object v4, v0, Ldka;->a:Ldkd;

    .line 6
    check-cast v4, Ldrt;

    iget v5, v4, Ldrt;->a:I

    or-int/lit8 v5, v5, 0x1

    iput v5, v4, Ldrt;->a:I

    iput-wide v2, v4, Ldrt;->c:J

    iget-object v2, v0, Ldka;->a:Ldkd;

    .line 7
    check-cast v2, Ldrt;

    iget-wide v2, v2, Ldrt;->c:J

    .line 8
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/util/TimeZone;->getOffset(J)I

    move-result v2

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    iget-boolean v4, v0, Ldjy;->b:Z

    if-eqz v4, :cond_2

    .line 9
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_2
    iget-object v4, v0, Ldka;->a:Ldkd;

    .line 10
    check-cast v4, Ldrt;

    iget v5, v4, Ldrt;->a:I

    const/high16 v6, 0x10000

    or-int/2addr v5, v6

    iput v5, v4, Ldrt;->a:I

    iput-wide v2, v4, Ldrt;->g:J

    iget-object v2, p1, Lbdh;->d:Landroid/content/Context;

    .line 11
    invoke-static {v2}, Lbqg;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object p1, p1, Lbdh;->d:Landroid/content/Context;

    .line 12
    invoke-static {p1}, Lbqg;->a(Landroid/content/Context;)Z

    move-result p1

    iget-boolean v2, v0, Ldjy;->b:Z

    if-eqz v2, :cond_3

    .line 13
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_3
    iget-object v2, v0, Ldka;->a:Ldkd;

    .line 14
    check-cast v2, Ldrt;

    iget v3, v2, Ldrt;->a:I

    const/high16 v4, 0x800000

    or-int/2addr v3, v4

    iput v3, v2, Ldrt;->a:I

    iput-boolean p1, v2, Ldrt;->h:Z

    .line 15
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_6

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_5

    .line 17
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_5
    iget-object p1, v0, Ldka;->a:Ldkd;

    .line 18
    check-cast p1, Ldrt;

    iget v4, p1, Ldrt;->a:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p1, Ldrt;->a:I

    iput-wide v2, p1, Ldrt;->d:J

    :cond_6
    if-eqz p2, :cond_8

    iget-boolean p1, v0, Ldjy;->b:Z

    if-eqz p1, :cond_7

    .line 19
    invoke-virtual {v0}, Ldjy;->b()V

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_7
    iget-object p1, v0, Ldka;->a:Ldkd;

    .line 20
    check-cast p1, Ldrt;

    .line 21
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p1, Ldrt;->a:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p1, Ldrt;->a:I

    iput-object p2, p1, Ldrt;->f:Ldib;

    :cond_8
    return-void
.end method


# virtual methods
.method public final a()Lbun;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lbde;->e:Z

    if-nez v0, :cond_2

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbde;->e:Z

    iget-object v1, p0, Lbde;->a:Lbdh;

    iget-object v1, v1, Lbdh;->k:Lbes;

    .line 23
    new-instance v2, Lbfn;

    iget-object v3, v1, Lbes;->g:Lbev;

    invoke-direct {v2, p0, v3}, Lbfn;-><init>(Lbde;Lbev;)V

    iget-boolean v3, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h:Z

    if-nez v3, :cond_1

    sget-object v3, Lcom/google/android/gms/common/api/internal/BasePendingResult;->a:Ljava/lang/ThreadLocal;

    .line 24
    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    nop

    .line 24
    :goto_0
    iput-boolean v0, v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h:Z

    iget-object v0, v1, Lbes;->h:Lbgj;

    new-instance v3, Lbfg;

    .line 25
    invoke-direct {v3, v2}, Lbfg;-><init>(Lbfn;)V

    iget-object v4, v0, Lbgj;->n:Landroid/os/Handler;

    new-instance v5, Lbgq;

    iget-object v0, v0, Lbgj;->j:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-direct {v5, v3, v0, v1}, Lbgq;-><init>(Lbfj;ILbes;)V

    const/4 v0, 0x4

    .line 27
    invoke-virtual {v4, v0, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 28
    invoke-virtual {v4, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-object v2

    .line 0
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 22
    const-string v1, "do not reuse LogEventBuilder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lbde;->f:Ldka;

    iget-boolean v1, v0, Ldjy;->b:Z

    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v0}, Ldjy;->b()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Ldjy;->b:Z

    :cond_0
    iget-object v0, v0, Ldka;->a:Ldkd;

    .line 30
    check-cast v0, Ldrt;

    sget-object v1, Ldrt;->j:Ldrt;

    iget v1, v0, Ldrt;->a:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Ldrt;->a:I

    iput p1, v0, Ldrt;->e:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "ClearcutLogger.LogEventBuilder["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v1, "uploadAccount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    const-string v2, ", logSourceName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbde;->c:Ljava/lang/String;

    .line 35
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    const-string v2, ", logSource#: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    const/4 v2, -0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, ", qosTier: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbde;->d:Ldsg;

    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    const-string v2, ", loggingId: null, MessageProducer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    const-string v2, ", veMessageProducer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    const-string v2, ", testCodes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-static {v1}, Lbdh;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v2, ", mendelPackages: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbde;->b:Ljava/util/ArrayList;

    .line 48
    invoke-static {v2}, Lbdh;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    const-string v2, ", experimentIds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    invoke-static {v1}, Lbdh;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 52
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    const-string v2, ", experimentTokens: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    invoke-static {v1}, Lbdh;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v2, ", experimentTokensBytes: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-static {v1}, Lbdh;->a(Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v2

    .line 58
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    const-string v2, ", addPhenotype: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ", logVerifier: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
