.class public final Lbuj;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public final a:Lbtr;

.field public final b:Lcrm;

.field private final c:Lcrm;


# direct methods
.method public constructor <init>(Lbtr;Lcrm;Lcrm;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Lbuj;->a:Lbtr;

    iput-object p2, p0, Lbuj;->b:Lcrm;

    iput-object p3, p0, Lbuj;->c:Lcrm;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget-object v0, Lbul;->a:Lcua;

    invoke-virtual {v0}, Lctx;->d()Lcup;

    move-result-object v0

    .line 2
    check-cast v0, Lctz;

    const-string v1, "com/google/android/libraries/performance/primes/flags/PrimesShutdown$GServicesBroadcastReceiver"

    const-string v2, "onReceive"

    const/16 v3, 0x4e

    const-string v4, "PrimesShutdown.java"

    invoke-interface {v0, v1, v2, v3, v4}, Lctz;->a(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BroadcastReceiver: action = %s"

    invoke-interface {v0, v2, v1}, Lctz;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lbuj;->a:Lbtr;

    iget-boolean v0, v0, Lbtr;->b:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void

    :cond_0
    nop

    .line 4
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lbuj;->c:Lcrm;

    if-nez p1, :cond_2

    return-void

    .line 5
    :cond_2
    invoke-interface {p1}, Lcrm;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lczw;

    if-nez p1, :cond_3

    return-void

    :cond_3
    new-instance p2, Lbui;

    .line 6
    invoke-direct {p2, p0}, Lbui;-><init>(Lbuj;)V

    .line 7
    invoke-static {p2, p1}, Ldab;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lczu;

    move-result-object p1

    .line 6
    invoke-static {p1}, Lbte;->a(Lczu;)V

    return-void
.end method
