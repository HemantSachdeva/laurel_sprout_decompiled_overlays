.class Landroid/car/drivingstate/CarUxRestrictions$1;
.super Ljava/lang/Object;
.source "CarUxRestrictions.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/drivingstate/CarUxRestrictions;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/drivingstate/CarUxRestrictions;
    .locals 1

    .line 340
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictions;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictions;-><init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarUxRestrictions$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictions$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/drivingstate/CarUxRestrictions;
    .locals 0

    .line 345
    new-array p0, p1, [Landroid/car/drivingstate/CarUxRestrictions;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 337
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictions$1;->newArray(I)[Landroid/car/drivingstate/CarUxRestrictions;

    move-result-object p0

    return-object p0
.end method
