.class public final Lcnm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lcmb;


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcnm;->a:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcnm;->b:Z

    iput-boolean v0, p0, Lcnm;->c:Z

    return-void
.end method

.method private final a()V
    .locals 2

    iget-object v0, p0, Lcnm;->a:Landroid/os/Handler;

    new-instance v1, Lcnl;

    invoke-direct {v1}, Lcnl;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcnm;->b:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcnm;->c:Z

    if-nez p1, :cond_1

    .line 2
    invoke-direct {p0}, Lcnm;->a()V

    iput-boolean v0, p0, Lcnm;->b:Z

    :cond_1
    return-void

    .line 3
    :cond_2
    invoke-direct {p0}, Lcnm;->a()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcnm;->b:Z

    iput-boolean v0, p0, Lcnm;->c:Z

    return-void
.end method
