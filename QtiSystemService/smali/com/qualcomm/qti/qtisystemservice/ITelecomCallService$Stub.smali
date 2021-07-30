.class public abstract Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService$Stub;
.super Landroid/os/Binder;
.source "ITelecomCallService.java"

# interfaces
.implements Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.qualcomm.qti.qtisystemservice.ITelecomCallService"

    .line 40
    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.qualcomm.qti.qtisystemservice.ITelecomCallService"

    if-eq p1, v0, :cond_6

    const/4 v2, 0x2

    if-eq p1, v2, :cond_5

    const/4 v2, 0x3

    if-eq p1, v2, :cond_4

    const/4 v2, 0x4

    if-eq p1, v2, :cond_3

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    .line 68
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 107
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-interface {p0}, Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;->getForegroundCall()Landroid/telecom/ParcelableCall;

    move-result-object p0

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_2

    .line 111
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    invoke-virtual {p0, p3, v0}, Landroid/telecom/ParcelableCall;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    .line 115
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 99
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-interface {p0}, Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;->hasAnyHeldCall()Z

    move-result p0

    .line 101
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 91
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-interface {p0}, Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;->hasAnyActiveCall()Z

    move-result p0

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 82
    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    move-result-object p1

    .line 85
    invoke-interface {p0, p1}, Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;->unregisterCallStateChanged(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :cond_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    move-result-object p1

    .line 76
    invoke-interface {p0, p1}, Lcom/qualcomm/qti/qtisystemservice/ITelecomCallService;->registerCallStateChanged(Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0
.end method
