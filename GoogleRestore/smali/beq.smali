.class public final Lbeq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Lbuo;

.field private b:Landroid/os/Looper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lber;
    .locals 4

    iget-object v0, p0, Lbeq;->a:Lbuo;

    if-nez v0, :cond_0

    new-instance v0, Lbuo;

    invoke-direct {v0}, Lbuo;-><init>()V

    iput-object v0, p0, Lbeq;->a:Lbuo;

    :cond_0
    iget-object v0, p0, Lbeq;->b:Landroid/os/Looper;

    if-nez v0, :cond_1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lbeq;->b:Landroid/os/Looper;

    .line 2
    :cond_1
    new-instance v0, Lber;

    iget-object v1, p0, Lbeq;->a:Lbuo;

    iget-object v2, p0, Lbeq;->b:Landroid/os/Looper;

    .line 3
    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lber;-><init>(Lbuo;Landroid/os/Looper;[B[B)V

    return-object v0
.end method
