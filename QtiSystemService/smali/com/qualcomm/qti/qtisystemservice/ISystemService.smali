.class public interface abstract Lcom/qualcomm/qti/qtisystemservice/ISystemService;
.super Ljava/lang/Object;
.source "ISystemService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/qtisystemservice/ISystemService$Stub;
    }
.end annotation


# virtual methods
.method public abstract getMetaInfo()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
