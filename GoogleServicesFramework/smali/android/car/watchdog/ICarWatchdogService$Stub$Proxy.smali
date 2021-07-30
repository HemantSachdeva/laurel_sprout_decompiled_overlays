.class Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarWatchdogService.java"

# interfaces
.implements Landroid/car/watchdog/ICarWatchdogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/watchdog/ICarWatchdogService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Landroid/car/watchdog/ICarWatchdogService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    iput-object p1, p0, Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 111
    iget-object p0, p0, Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method

.method public tellClientAlive(Landroid/automotive/watchdog/ICarWatchdogClient;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "android.car.watchdog.ICarWatchdogService"

    .line 163
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 164
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 165
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object p0, p0, Landroid/car/watchdog/ICarWatchdogService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {p0, v2, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    if-nez p0, :cond_1

    .line 167
    invoke-static {}, Landroid/car/watchdog/ICarWatchdogService$Stub;->getDefaultImpl()Landroid/car/watchdog/ICarWatchdogService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 168
    invoke-static {}, Landroid/car/watchdog/ICarWatchdogService$Stub;->getDefaultImpl()Landroid/car/watchdog/ICarWatchdogService;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/car/watchdog/ICarWatchdogService;->tellClientAlive(Landroid/automotive/watchdog/ICarWatchdogClient;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    .line 171
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :catchall_0
    move-exception p0

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw p0
.end method
