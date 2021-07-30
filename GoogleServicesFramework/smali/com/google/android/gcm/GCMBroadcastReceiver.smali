.class public Lcom/google/android/gcm/GCMBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GCMBroadcastReceiver.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static mReceiverSet:Z = false


# instance fields
.field private final mLogger:Lcom/google/android/gcm/GCMLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 41
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 45
    new-instance v0, Lcom/google/android/gcm/GCMLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCMBroadcastReceiver"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gcm/GCMLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mLogger:Lcom/google/android/gcm/GCMLogger;

    return-void
.end method

.method static final getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".GCMIntentService"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-static {p1}, Lcom/google/android/gcm/GCMBroadcastReceiver;->getDefaultIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 50
    iget-object v0, p0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x2

    const-string v5, "onReceive: %s"

    invoke-virtual {v0, v3, v5, v2}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 52
    sget-boolean v0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    if-nez v0, :cond_0

    .line 53
    sput-boolean v1, Lcom/google/android/gcm/GCMBroadcastReceiver;->mReceiverSet:Z

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {p1, v0}, Lcom/google/android/gcm/GCMRegistrar;->setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V

    .line 57
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/android/gcm/GCMBroadcastReceiver;->getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v2, p0, Lcom/google/android/gcm/GCMBroadcastReceiver;->mLogger:Lcom/google/android/gcm/GCMLogger;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v4

    const-string v4, "GCM IntentService class: %s"

    invoke-virtual {v2, v3, v4, v1}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 60
    invoke-static {p1, p2, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->isOrderedBroadcast()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, -0x1

    const/4 p2, 0x0

    .line 62
    invoke-virtual {p0, p1, p2, p2}, Landroid/content/BroadcastReceiver;->setResult(ILjava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method
