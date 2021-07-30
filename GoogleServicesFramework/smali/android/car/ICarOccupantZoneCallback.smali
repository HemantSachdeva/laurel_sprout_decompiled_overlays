.class public interface abstract Landroid/car/ICarOccupantZoneCallback;
.super Ljava/lang/Object;
.source "ICarOccupantZoneCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/ICarOccupantZoneCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onOccupantZoneConfigChanged(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
