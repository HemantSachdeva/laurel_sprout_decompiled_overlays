.class public Landroid/car/vms/VmsProviderInfo;
.super Ljava/lang/Object;
.source "VmsProviderInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/vms/VmsProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDescription:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 125
    new-instance v0, Landroid/car/vms/VmsProviderInfo$1;

    invoke-direct {v0}, Landroid/car/vms/VmsProviderInfo$1;-><init>()V

    sput-object v0, Landroid/car/vms/VmsProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p1

    .line 119
    :goto_0
    iput-object p1, p0, Landroid/car/vms/VmsProviderInfo;->mDescription:[B

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_2

    .line 74
    const-class v0, Landroid/car/vms/VmsProviderInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 76
    :cond_1
    check-cast p1, Landroid/car/vms/VmsProviderInfo;

    .line 78
    iget-object p0, p0, Landroid/car/vms/VmsProviderInfo;->mDescription:[B

    iget-object p1, p1, Landroid/car/vms/VmsProviderInfo;->mDescription:[B

    .line 79
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 89
    iget-object p0, p0, Landroid/car/vms/VmsProviderInfo;->mDescription:[B

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0

    const/16 v0, 0x1f

    add-int/2addr v0, p0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 100
    iget-object p2, p0, Landroid/car/vms/VmsProviderInfo;->mDescription:[B

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    int-to-byte p2, p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 101
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 102
    iget-object p0, p0, Landroid/car/vms/VmsProviderInfo;->mDescription:[B

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_1
    return-void
.end method
