.class Landroid/car/user/UserIdentificationAssociationResponse$1;
.super Ljava/lang/Object;
.source "UserIdentificationAssociationResponse.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/user/UserIdentificationAssociationResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/user/UserIdentificationAssociationResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/user/UserIdentificationAssociationResponse;
    .locals 0

    .line 228
    new-instance p0, Landroid/car/user/UserIdentificationAssociationResponse;

    invoke-direct {p0, p1}, Landroid/car/user/UserIdentificationAssociationResponse;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Landroid/car/user/UserIdentificationAssociationResponse$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/user/UserIdentificationAssociationResponse;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/user/UserIdentificationAssociationResponse;
    .locals 0

    .line 223
    new-array p0, p1, [Landroid/car/user/UserIdentificationAssociationResponse;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 220
    invoke-virtual {p0, p1}, Landroid/car/user/UserIdentificationAssociationResponse$1;->newArray(I)[Landroid/car/user/UserIdentificationAssociationResponse;

    move-result-object p0

    return-object p0
.end method
