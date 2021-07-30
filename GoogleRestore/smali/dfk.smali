.class final Ldfk;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# instance fields
.field public a:Ldfl;


# direct methods
.method public constructor <init>(Ldfl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Ldfk;->a:Ldfl;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    iget-object p1, p0, Ldfk;->a:Ldfl;

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p1}, Ldfl;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-static {}, Lcom/google/firebase/iid/FirebaseInstanceId;->i()V

    iget-object p1, p0, Ldfk;->a:Ldfl;

    .line 4
    iget-object p2, p1, Ldfl;->a:Lcom/google/firebase/iid/FirebaseInstanceId;

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/firebase/iid/FirebaseInstanceId;->a(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Ldfk;->a:Ldfl;

    .line 6
    invoke-virtual {p1}, Ldfl;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Ldfk;->a:Ldfl;

    return-void
.end method
