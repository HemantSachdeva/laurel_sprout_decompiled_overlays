.class final Lcll;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lclo;


# direct methods
.method public constructor <init>(Lclo;)V
    .locals 0

    iput-object p1, p0, Lcll;->a:Lclo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcll;->a:Lclo;

    new-instance v0, Lclm;

    .line 1
    const/4 v1, 0x7

    invoke-direct {v0, v1}, Lclm;-><init>(I)V

    .line 2
    invoke-virtual {p1, v0}, Lclo;->a(Lclm;)V

    return-void
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcll;->a:Lclo;

    new-instance v0, Lclm;

    .line 3
    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lclm;-><init>(I)V

    .line 4
    invoke-virtual {p1, v0}, Lclo;->a(Lclm;)V

    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    if-nez p2, :cond_0

    .line 5
    const-string p1, "SucServiceProvider"

    const-string v0, "Binder is null when onServiceConnected was called!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x5

    goto :goto_0

    .line 9
    :cond_0
    const/4 p1, 0x4

    .line 5
    :goto_0
    iget-object v0, p0, Lcll;->a:Lclo;

    new-instance v1, Lclm;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    .line 11
    :cond_1
    nop

    .line 6
    const-string v2, "com.google.android.setupcompat.ISetupCompatService"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    .line 7
    instance-of v3, v2, Lcky;

    if-eqz v3, :cond_2

    .line 8
    move-object p2, v2

    check-cast p2, Lcky;

    goto :goto_1

    :cond_2
    new-instance v2, Lcky;

    .line 9
    invoke-direct {v2, p2}, Lcky;-><init>(Landroid/os/IBinder;)V

    move-object p2, v2

    .line 10
    :goto_1
    invoke-direct {v1, p1, p2}, Lclm;-><init>(ILcky;)V

    .line 11
    invoke-virtual {v0, v1}, Lclo;->a(Lclm;)V

    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object p1, p0, Lcll;->a:Lclo;

    new-instance v0, Lclm;

    .line 12
    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lclm;-><init>(I)V

    .line 13
    invoke-virtual {p1, v0}, Lclo;->a(Lclm;)V

    return-void
.end method
