.class Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICallStateListener.java"

# interfaces
.implements Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    iput-object p1, p0, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCallStateChanged(Landroid/telecom/ParcelableCall;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 96
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "com.qualcomm.qti.qtisystemservice.ICallStateListener"

    .line 98
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 100
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 101
    invoke-virtual {p1, v0, v1}, Landroid/telecom/ParcelableCall;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {p0, v2, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 109
    invoke-static {}, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub;->getDefaultImpl()Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 110
    invoke-static {}, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener$Stub;->getDefaultImpl()Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lcom/qualcomm/qti/qtisystemservice/ICallStateListener;->onCallStateChanged(Landroid/telecom/ParcelableCall;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 116
    throw p0
.end method
