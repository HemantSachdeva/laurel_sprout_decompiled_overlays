.class public interface abstract Landroid/car/drivingstate/ICarUxRestrictionsManager;
.super Ljava/lang/Object;
.source "ICarUxRestrictionsManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
