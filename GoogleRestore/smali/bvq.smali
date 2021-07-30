.class public final Lbvq;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lcua;


# instance fields
.field public final b:Lcbh;

.field public final c:Leip;

.field public final d:Leip;

.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Lczm;

.field private final g:Lbtr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/libraries/performance/primes/metrics/core/MetricRecorder"

    invoke-static {v0}, Lcua;->a(Ljava/lang/String;)Lcua;

    move-result-object v0

    sput-object v0, Lbvq;->a:Lcua;

    return-void
.end method

.method public constructor <init>(Leip;Leip;Lbtr;Ljava/util/concurrent/Executor;Lcbh;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lbvp;

    invoke-direct {v0}, Lbvp;-><init>()V

    iput-object v0, p0, Lbvq;->f:Lczm;

    iput-object p3, p0, Lbvq;->g:Lbtr;

    iput-object p5, p0, Lbvq;->b:Lcbh;

    iput-object p1, p0, Lbvq;->c:Leip;

    iput-object p2, p0, Lbvq;->d:Leip;

    iput-object p4, p0, Lbvq;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Lczc;)Lczu;
    .locals 1

    iget-object v0, p0, Lbvq;->g:Lbtr;

    iget-boolean v0, v0, Lbtr;->b:Z

    if-eqz v0, :cond_0

    .line 1
    invoke-static {}, Ldab;->a()Lczu;

    move-result-object p1

    return-object p1

    :cond_0
    :try_start_0
    new-instance v0, Lbvn;

    .line 2
    invoke-direct {v0, p0, p1}, Lbvn;-><init>(Lbvq;Lczc;)V

    iget-object p1, p0, Lbvq;->e:Ljava/util/concurrent/Executor;

    .line 3
    invoke-static {v0, p1}, Ldab;->a(Lczc;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    invoke-static {p1}, Ldab;->a(Ljava/lang/Throwable;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;ZLepj;Lekw;)Lczu;
    .locals 7

    if-nez p3, :cond_1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p3, "metric is null, skipping recorded metric for event: "

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p4

    if-eqz p4, :cond_0

    invoke-virtual {p3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Ldab;->a(Ljava/lang/Throwable;)Lczu;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object v0, p0, Lbvq;->g:Lbtr;

    iget-boolean v0, v0, Lbtr;->b:Z

    if-eqz v0, :cond_2

    .line 6
    invoke-static {}, Ldab;->a()Lczu;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v6, Lbvo;

    .line 7
    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move v3, p2

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lbvo;-><init>(Lbvq;Lepj;ZLjava/lang/String;Lekw;)V

    iget-object p1, p0, Lbvq;->e:Ljava/util/concurrent/Executor;

    invoke-static {v6, p1}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lepj;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p1, v0}, Lbvq;->a(Ljava/lang/String;ZLepj;Lekw;)Lczu;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void
.end method
