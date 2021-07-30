.class public final Lapa;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "delayMillis must be non-negative."

    invoke-static {v0, v1}, Lcrj;->a(ZLjava/lang/Object;)V

    iput-wide p1, p0, Lapa;->a:J

    return-void
.end method

.method public static a(JLjava/util/concurrent/TimeUnit;)Lapa;
    .locals 1

    new-instance v0, Lapa;

    .line 2
    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lapa;-><init>(J)V

    return-object v0
.end method
