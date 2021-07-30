.class public final Lcpi;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    .line 1
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 2

    .line 3
    sget-object v0, Lcpm;->b:Ljava/lang/ThreadLocal;

    .line 4
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcpl;

    iget-object v0, v0, Lcpl;->b:Lcpg;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcpf;

    invoke-direct {v0}, Lcpf;-><init>()V

    :cond_0
    new-instance v1, Lcph;

    .line 6
    invoke-direct {v1, v0, p0}, Lcph;-><init>(Lcpg;Ljava/lang/Runnable;)V

    return-object v1
.end method
