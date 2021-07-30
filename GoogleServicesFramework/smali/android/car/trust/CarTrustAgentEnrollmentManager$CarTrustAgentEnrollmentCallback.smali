.class public interface abstract Landroid/car/trust/CarTrustAgentEnrollmentManager$CarTrustAgentEnrollmentCallback;
.super Ljava/lang/Object;
.source "CarTrustAgentEnrollmentManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/trust/CarTrustAgentEnrollmentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarTrustAgentEnrollmentCallback"
.end annotation


# virtual methods
.method public abstract onAuthStringAvailable(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)V
.end method

.method public abstract onEnrollmentHandshakeFailure(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public abstract onEscrowTokenActiveStateChanged(JZ)V
.end method

.method public abstract onEscrowTokenAdded(J)V
.end method

.method public abstract onEscrowTokenRemoved(J)V
.end method
