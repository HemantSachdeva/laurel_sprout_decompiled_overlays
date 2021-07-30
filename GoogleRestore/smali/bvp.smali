.class final Lbvp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lczm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 4

    sget-object v0, Lbvq;->a:Lcua;

    invoke-virtual {v0}, Lctx;->b()Lcup;

    move-result-object v0

    .line 1
    check-cast v0, Lctz;

    invoke-interface {v0, p1}, Lctz;->a(Ljava/lang/Throwable;)V

    const-string p1, "com/google/android/libraries/performance/primes/metrics/core/MetricRecorder$1"

    const-string v1, "onFailure"

    const/16 v2, 0x2b

    const-string v3, "MetricRecorder.java"

    invoke-interface {v0, p1, v1, v2, v3}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    const-string p1, "Metric collection failed."

    invoke-interface {v0, p1}, Lctz;->a(Ljava/lang/String;)V

    return-void
.end method
