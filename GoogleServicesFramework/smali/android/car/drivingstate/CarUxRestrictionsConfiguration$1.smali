.class Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 1

    .line 617
    new-instance p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
    .locals 0

    .line 622
    new-array p0, p1, [Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 613
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;->newArray(I)[Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    move-result-object p0

    return-object p0
.end method
