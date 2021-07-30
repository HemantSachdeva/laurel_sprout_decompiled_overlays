.class public interface abstract Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentBleCallback;
.super Ljava/lang/Object;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarTrustAgentBleCallback"
.end annotation


# virtual methods
.method public abstract onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onEnrollmentAdvertisingFailed()V
.end method

.method public abstract onEnrollmentAdvertisingStarted()V
.end method
