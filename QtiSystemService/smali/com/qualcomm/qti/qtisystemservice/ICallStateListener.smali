.class public interface abstract Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;
.super Ljava/lang/Object;
.source "ICallStateListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onCallStateChanged(Landroid/telecom/ParcelableCall;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
