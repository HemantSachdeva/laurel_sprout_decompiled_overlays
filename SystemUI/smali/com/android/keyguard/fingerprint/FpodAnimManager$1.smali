.class Lcom/android/keyguard/fingerprint/FpodAnimManager$1;
.super Landroid/database/ContentObserver;
.source "FpodAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodAnimManager;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodAnimManager;Landroid/os/Handler;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$1;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 30
    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->access$000()Z

    move-result p1

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodAnimManager$1;->this$0:Lcom/android/keyguard/fingerprint/FpodAnimManager;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->access$200(Lcom/android/keyguard/fingerprint/FpodAnimManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "fod_animation_type"

    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/keyguard/fingerprint/FpodAnimManager;->access$102(Lcom/android/keyguard/fingerprint/FpodAnimManager;I)I

    return-void
.end method
