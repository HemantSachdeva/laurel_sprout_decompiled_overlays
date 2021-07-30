.class Lcom/android/keyguard/fingerprint/FpodIconView$9;
.super Ljava/lang/Object;
.source "FpodIconView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/fingerprint/FpodIconView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/fingerprint/FpodIconView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/fingerprint/FpodIconView;)V
    .locals 0

    .line 361
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 364
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 365
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    new-instance v1, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2402(Lcom/android/keyguard/fingerprint/FpodIconView;Ljava/util/Date;)Ljava/util/Date;

    .line 367
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 368
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2400(Lcom/android/keyguard/fingerprint/FpodIconView;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2502(Lcom/android/keyguard/fingerprint/FpodIconView;J)J

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2500(Lcom/android/keyguard/fingerprint/FpodIconView;)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 374
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2300(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2302(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 378
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2700(Lcom/android/keyguard/fingerprint/FpodIconView;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$9;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2600(Lcom/android/keyguard/fingerprint/FpodIconView;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
