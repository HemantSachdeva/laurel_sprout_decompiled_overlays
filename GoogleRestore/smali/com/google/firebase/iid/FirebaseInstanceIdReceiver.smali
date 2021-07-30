.class public final Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;
.super Ldm;
.source "PG"


# static fields
.field public static final synthetic a:I


# instance fields
.field private final b:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ldm;-><init>()V

    .line 2
    invoke-static {}, Lddr;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b:Ljava/util/concurrent/ExecutorService;

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    .line 3
    :cond_0
    const-string v0, "wrapped_intent"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/content/Intent;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast v0, Landroid/content/Intent;

    goto :goto_0

    .line 10
    :cond_1
    move-object v0, v2

    .line 4
    :goto_0
    if-eqz v0, :cond_2

    move-object p2, v0

    .line 5
    :cond_2
    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 8
    const-string v0, "from"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.com/iid"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Ldeh;

    iget-object v0, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b:Ljava/util/concurrent/ExecutorService;

    .line 9
    invoke-direct {p1, v0}, Ldeh;-><init>(Ljava/util/concurrent/ExecutorService;)V

    goto :goto_1

    .line 14
    :cond_3
    new-instance v0, Lddp;

    iget-object v1, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b:Ljava/util/concurrent/ExecutorService;

    .line 10
    invoke-direct {v0, p1, v1}, Lddp;-><init>(Landroid/content/Context;Ljava/util/concurrent/ExecutorService;)V

    move-object p1, v0

    .line 11
    :goto_1
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->isOrderedBroadcast()Z

    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object v1

    .line 13
    invoke-interface {p1, p2}, Lddk;->a(Landroid/content/Intent;)Lbpi;

    move-result-object p1

    iget-object p2, p0, Lcom/google/firebase/iid/FirebaseInstanceIdReceiver;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lded;

    invoke-direct {v2, v0, v1}, Lded;-><init>(ZLandroid/content/BroadcastReceiver$PendingResult;)V

    .line 14
    invoke-virtual {p1, p2, v2}, Lbpi;->a(Ljava/util/concurrent/Executor;Lbox;)V

    return-void
.end method
