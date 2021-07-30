.class Landroid/car/media/ICarAudio$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarAudio.java"

# interfaces
.implements Landroid/car/media/ICarAudio;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarAudio$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/media/ICarAudio;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 384
    iput-object p1, p0, Landroid/car/media/ICarAudio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 388
    iget-object p0, p0, Landroid/car/media/ICarAudio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public unregisterVolumeCallback(Landroid/os/IBinder;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 829
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 830
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.media.ICarAudio"

    .line 832
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 833
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 834
    iget-object p0, p0, Landroid/car/media/ICarAudio$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 835
    invoke-static {}, Landroid/car/media/ICarAudio$Stub;->getDefaultImpl()Landroid/car/media/ICarAudio;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 836
    invoke-static {}, Landroid/car/media/ICarAudio$Stub;->getDefaultImpl()Landroid/car/media/ICarAudio;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/media/ICarAudio;->unregisterVolumeCallback(Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 839
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 842
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 843
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 844
    throw p0
.end method
