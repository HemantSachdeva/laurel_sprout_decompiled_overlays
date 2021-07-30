.class public interface abstract Landroid/car/trust/ICarTrustAgentBleCallback;
.super Ljava/lang/Object;
.source "ICarTrustAgentBleCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/trust/ICarTrustAgentBleCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onBleEnrollmentDeviceConnected(Landroid/bluetooth/BluetoothDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onBleEnrollmentDeviceDisconnected(Landroid/bluetooth/BluetoothDevice;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnrollmentAdvertisingFailed()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onEnrollmentAdvertisingStarted()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
