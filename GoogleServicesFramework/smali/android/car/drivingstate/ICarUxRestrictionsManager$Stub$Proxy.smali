.class Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarUxRestrictionsManager.java"

# interfaces
.implements Landroid/car/drivingstate/ICarUxRestrictionsManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/drivingstate/ICarUxRestrictionsManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 214
    iput-object p1, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 218
    iget-object p0, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 265
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 269
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 270
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-object p0, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 272
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 273
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->getCurrentUxRestrictions(I)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    .line 275
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p0

    if-eqz p0, :cond_1

    .line 277
    sget-object p0, Landroid/car/drivingstate/CarUxRestrictions;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/drivingstate/CarUxRestrictions;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    .line 284
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object p0

    :catchall_0
    move-exception p0

    .line 284
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 285
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 286
    throw p0
.end method

.method public registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 226
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 227
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.drivingstate.ICarUxRestrictionsManager"

    .line 229
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 230
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 231
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object p0, p0, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 233
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 234
    invoke-static {}, Landroid/car/drivingstate/ICarUxRestrictionsManager$Stub;->getDefaultImpl()Landroid/car/drivingstate/ICarUxRestrictionsManager;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/car/drivingstate/ICarUxRestrictionsManager;->registerUxRestrictionsChangeListener(Landroid/car/drivingstate/ICarUxRestrictionsChangeListener;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 237
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 241
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 242
    throw p0
.end method
