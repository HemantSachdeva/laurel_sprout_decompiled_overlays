.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsGCMBroadcastReceiver;
.super Lcom/google/android/gcm/GCMBroadcastReceiver;
.source "SubscribedFeedsGCMBroadcastReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected getGCMIntentServiceClassName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 15
    const-class p0, Lcom/google/android/gsf/subscribedfeeds/GCMIntentService;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
