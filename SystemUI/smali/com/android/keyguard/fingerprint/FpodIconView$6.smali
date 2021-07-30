.class Lcom/android/keyguard/fingerprint/FpodIconView$6;
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

    .line 252
    iput-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    const-string v0, "FpodIconView2"

    const-string v1, "enter mMoveSensorListener onSensorChanged... "

    .line 256
    invoke-static {v0, v1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p0, "enter mMoveSensorListener onSensorChanged... return as event is null"

    .line 258
    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 261
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1900(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "FpodIconView"

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v4, 0x40400000    # 3.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    invoke-static {}, Lcom/android/keyguard/fingerprint/FpodManager;->getInstance()Lcom/android/keyguard/fingerprint/FpodManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/keyguard/fingerprint/FpodManager;->isFpodIconCanShow()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "detect device move"

    .line 262
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "mMoveSensorListener onSensorChanged start showFingerprintIcon"

    .line 263
    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2000(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    .line 265
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 266
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2202(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    goto/16 :goto_0

    .line 268
    :cond_1
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    cmpl-float v1, v1, v4

    if-nez v1, :cond_4

    const-string p1, "detect device stable"

    .line 269
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "enter mMoveSensorListener onSensorChanged... event.values[0] == 2.0f"

    .line 270
    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 272
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1, v2}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$2202(Lcom/android/keyguard/fingerprint/FpodIconView;Z)Z

    .line 273
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detect device stable && mDozeShowIconTimeout : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$100(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detect device stable && mDozing : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {v1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$000(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p0, "enter mMoveSensorListener onSensorChanged... event.values[0] == 2.0f ... return as !mDozing"

    .line 277
    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 280
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p1}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$200(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "detect device stable scheduleSetIconTransparen "

    .line 281
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "enter mMoveSensorListener onSensorChanged... event.values[0] == 2.0f ... mTouchDown"

    .line 282
    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$300(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    goto :goto_0

    :cond_3
    const-string p1, "enter mMoveSensorListener onSensorChanged... event.values[0] == 2.0f ... dismissFingerpirntIcon"

    .line 285
    invoke-static {v0, p1}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "detect device stable dismissFingerpirntIcon "

    .line 286
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$400(Lcom/android/keyguard/fingerprint/FpodIconView;)V

    goto :goto_0

    .line 291
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "event.values[0] = "

    .line 292
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget p1, p1, v2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, "  and mIsPSensorCovered : "

    .line 294
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    iget-object p0, p0, Lcom/android/keyguard/fingerprint/FpodIconView$6;->this$0:Lcom/android/keyguard/fingerprint/FpodIconView;

    invoke-static {p0}, Lcom/android/keyguard/fingerprint/FpodIconView;->access$1900(Lcom/android/keyguard/fingerprint/FpodIconView;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "mMoveSensorListener onSensorChanged... else  "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/keyguard/fingerprint/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_0
    return-void
.end method
