.class final synthetic Lbyr;
.super Ljava/lang/Object;

# interfaces
.implements Lczc;


# instance fields
.field private final a:Lbys;

.field private final b:[Lbyn;


# direct methods
.method public constructor <init>(Lbys;[Lbyn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbyr;->a:Lbys;

    iput-object p2, p0, Lbyr;->b:[Lbyn;

    return-void
.end method


# virtual methods
.method public final a()Lczu;
    .locals 9

    iget-object v0, p0, Lbyr;->a:Lbys;

    iget-object v1, p0, Lbyr;->b:[Lbyn;

    iget-object v2, v0, Lbys;->b:Leip;

    check-cast v2, Lbro;

    invoke-virtual {v2}, Lbro;->b()Lbym;

    move-result-object v2

    invoke-virtual {v2}, Lbym;->a()Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v0, Lczr;->a:Lczu;

    goto/16 :goto_1

    :cond_0
    iget-object v2, v0, Lbys;->a:Lbvq;

    iget-object v0, v0, Lbys;->c:Lbyo;

    sget-object v3, Lemn;->b:Lemn;

    invoke-virtual {v3}, Ldkd;->g()Ldjy;

    move-result-object v3

    array-length v4, v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-lez v4, :cond_3

    sget-object v2, Lemm;->i:Lemm;

    invoke-virtual {v2}, Ldkd;->g()Ldjy;

    move-result-object v2

    aget-object v3, v1, v6

    iget v4, v3, Lbyn;->d:I

    iget v4, v3, Lbyn;->c:I

    iget-wide v7, v3, Lbyn;->b:J

    iget-wide v7, v3, Lbyn;->a:J

    iget v3, v3, Lbyn;->g:I

    iget-boolean v3, v2, Ldjy;->b:Z

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v6, v2, Ldjy;->b:Z

    :cond_1
    iget-object v3, v2, Ldjy;->a:Ldkd;

    check-cast v3, Lemm;

    iget v4, v3, Lemm;->a:I

    or-int/lit8 v4, v4, 0x20

    iput v4, v3, Lemm;->a:I

    iput v6, v3, Lemm;->b:I

    aget-object v3, v1, v6

    iget v4, v3, Lbyn;->k:I

    iget-object v4, v3, Lbyn;->h:Ljava/lang/String;

    iget-object v3, v3, Lbyn;->f:Ljava/lang/String;

    sget-object v3, Lemr;->a:Lemr;

    iget-boolean v4, v2, Ldjy;->b:Z

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Ldjy;->b()V

    iput-boolean v6, v2, Ldjy;->b:Z

    :cond_2
    iget-object v2, v2, Ldjy;->a:Ldkd;

    check-cast v2, Lemm;

    iget v3, v3, Lemr;->i:I

    iput v3, v2, Lemm;->c:I

    iget v3, v2, Lemm;->a:I

    or-int/lit16 v3, v3, 0x100

    iput v3, v2, Lemm;->a:I

    iget-object v0, v0, Lbyo;->b:Leip;

    check-cast v0, Lbro;

    invoke-virtual {v0}, Lbro;->b()Lbym;

    aget-object v0, v1, v6

    iget-object v1, v0, Lbyn;->e:Ljava/lang/String;

    iget-object v1, v0, Lbyn;->i:[Ljava/lang/String;

    iget-object v0, v0, Lbyn;->j:Leny;

    throw v5

    :cond_3
    sget-object v1, Lepj;->w:Lepj;

    invoke-virtual {v1}, Ldkd;->g()Ldjy;

    move-result-object v1

    iget-boolean v4, v1, Ldjy;->b:Z

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Ldjy;->b()V

    iput-boolean v6, v1, Ldjy;->b:Z

    :cond_4
    iget-object v4, v1, Ldjy;->a:Ldkd;

    check-cast v4, Lepj;

    invoke-virtual {v3}, Ldjy;->f()Ldkd;

    move-result-object v3

    check-cast v3, Lemn;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v4, Lepj;->f:Lemn;

    iget v3, v4, Lepj;->a:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v4, Lepj;->a:I

    :try_start_0
    iget-object v0, v0, Lbyo;->b:Leip;

    check-cast v0, Lbro;

    invoke-virtual {v0}, Lbro;->b()Lbym;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v3, Lbyo;->a:Lcua;

    invoke-virtual {v3}, Lctx;->b()Lcup;

    move-result-object v3

    check-cast v3, Lctz;

    invoke-interface {v3, v0}, Lctz;->a(Ljava/lang/Throwable;)V

    const/16 v0, 0xec

    const-string v4, "com/google/android/libraries/performance/primes/metrics/network/NetworkMetricCollector"

    const-string v6, "getMetric"

    const-string v7, "NetworkMetricCollector.java"

    invoke-interface {v3, v4, v6, v0, v7}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string v0, "Exception while getting network metric extension!"

    invoke-interface {v3, v0}, Lctz;->a(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {v1}, Ldjy;->f()Ldkd;

    move-result-object v1

    check-cast v1, Lepj;

    invoke-virtual {v2, v5, v0, v1, v5}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object v0

    :goto_1
    return-object v0
.end method
