.class Landroid/car/drivingstate/CarDrivingStateEvent$1;
.super Ljava/lang/Object;
.source "CarDrivingStateEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarDrivingStateEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/drivingstate/CarDrivingStateEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/drivingstate/CarDrivingStateEvent;
    .locals 1

    .line 92
    new-instance p0, Landroid/car/drivingstate/CarDrivingStateEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarDrivingStateEvent;-><init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarDrivingStateEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarDrivingStateEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/drivingstate/CarDrivingStateEvent;
    .locals 0

    .line 97
    new-array p0, p1, [Landroid/car/drivingstate/CarDrivingStateEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarDrivingStateEvent$1;->newArray(I)[Landroid/car/drivingstate/CarDrivingStateEvent;

    move-result-object p0

    return-object p0
.end method
