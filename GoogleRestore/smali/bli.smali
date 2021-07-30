.class final Lbli;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lblj;


# direct methods
.method public constructor <init>(Lblj;)V
    .locals 0

    iput-object p1, p0, Lbli;->a:Lblj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object p1, p0, Lbli;->a:Lblj;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 5
    :cond_0
    nop

    .line 1
    const-string v0, "com.google.android.gms.http.IGoogleHttpService"

    invoke-interface {p2, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lbll;

    if-eqz v1, :cond_1

    .line 3
    move-object p2, v0

    check-cast p2, Lbll;

    goto :goto_0

    :cond_1
    new-instance v0, Lbll;

    .line 4
    invoke-direct {v0, p2}, Lbll;-><init>(Landroid/os/IBinder;)V

    move-object p2, v0

    .line 0
    :goto_0
    iput-object p2, p1, Lblj;->b:Lbll;

    iget-object p1, p0, Lbli;->a:Lblj;

    iget-object p1, p1, Lblj;->a:Ljava/util/concurrent/CountDownLatch;

    .line 5
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    return-void
.end method
