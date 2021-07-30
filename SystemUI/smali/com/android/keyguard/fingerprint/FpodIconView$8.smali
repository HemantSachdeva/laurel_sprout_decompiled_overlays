.class Lcom/android/keyguard/fingerprint/FpodIconView$8;
.super Ljava/lang/Object;
.source "FpodIconView.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    .line 343
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$8;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 346
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    .line 347
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$8;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1902(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    goto :goto_0

    .line 349
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$8;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0, v0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1902(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    :goto_0
    return-void
.end method
