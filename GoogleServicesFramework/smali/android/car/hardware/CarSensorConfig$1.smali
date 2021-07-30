.class Landroid/car/hardware/CarSensorConfig$1;
.super Ljava/lang/Object;
.source "CarSensorConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/CarSensorConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/hardware/CarSensorConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/hardware/CarSensorConfig;
    .locals 0

    .line 74
    new-instance p0, Landroid/car/hardware/CarSensorConfig;

    invoke-direct {p0, p1}, Landroid/car/hardware/CarSensorConfig;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/car/hardware/CarSensorConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/hardware/CarSensorConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/hardware/CarSensorConfig;
    .locals 0

    .line 79
    new-array p0, p1, [Landroid/car/hardware/CarSensorConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Landroid/car/hardware/CarSensorConfig$1;->newArray(I)[Landroid/car/hardware/CarSensorConfig;

    move-result-object p0

    return-object p0
.end method
