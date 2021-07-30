.class public Lcom/google/android/gms/nearby/exposurenotification/WakeUpService;
.super Landroid/app/Service;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 2
    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lblp;

    .line 3
    invoke-direct {v0}, Lblp;-><init>()V

    .line 2
    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    return-object p1
.end method
