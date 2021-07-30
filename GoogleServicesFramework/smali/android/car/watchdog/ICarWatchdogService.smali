.class public interface abstract Landroid/car/watchdog/ICarWatchdogService;
.super Ljava/lang/Object;
.source "ICarWatchdogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/watchdog/ICarWatchdogService$Stub;
    }
.end annotation


# virtual methods
.method public abstract tellClientAlive(Landroid/automotive/watchdog/ICarWatchdogClient;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
