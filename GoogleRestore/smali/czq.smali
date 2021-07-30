.class final Lczq;
.super Lcyn;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcyn;-><init>()V

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcyr;->cancel(Z)Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0}, Lcyn;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lcyr;->a(Ljava/lang/Throwable;)Z

    return-void
.end method
