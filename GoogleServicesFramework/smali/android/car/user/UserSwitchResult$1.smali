.class Landroid/car/user/UserSwitchResult$1;
.super Ljava/lang/Object;
.source "UserSwitchResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/user/UserSwitchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/user/UserSwitchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/user/UserSwitchResult;
    .locals 0

    .line 336
    new-instance p0, Landroid/car/user/UserSwitchResult;

    invoke-direct {p0, p1}, Landroid/car/user/UserSwitchResult;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/car/user/UserSwitchResult$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/user/UserSwitchResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/user/UserSwitchResult;
    .locals 0

    .line 331
    new-array p0, p1, [Landroid/car/user/UserSwitchResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 328
    invoke-virtual {p0, p1}, Landroid/car/user/UserSwitchResult$1;->newArray(I)[Landroid/car/user/UserSwitchResult;

    move-result-object p0

    return-object p0
.end method
