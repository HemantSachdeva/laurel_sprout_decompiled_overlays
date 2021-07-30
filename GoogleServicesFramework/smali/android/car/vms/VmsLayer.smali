.class public final Landroid/car/vms/VmsLayer;
.super Ljava/lang/Object;
.source "VmsLayer.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/vms/VmsLayer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mChannel:I

.field private mType:I

.field private mVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 209
    new-instance v0, Landroid/car/vms/VmsLayer$1;

    invoke-direct {v0}, Landroid/car/vms/VmsLayer$1;-><init>()V

    sput-object v0, Landroid/car/vms/VmsLayer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 201
    iput v0, p0, Landroid/car/vms/VmsLayer;->mType:I

    .line 202
    iput v1, p0, Landroid/car/vms/VmsLayer;->mChannel:I

    .line 203
    iput p1, p0, Landroid/car/vms/VmsLayer;->mVersion:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 152
    const-class v2, Landroid/car/vms/VmsLayer;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 154
    :cond_1
    check-cast p1, Landroid/car/vms/VmsLayer;

    .line 156
    iget v2, p0, Landroid/car/vms/VmsLayer;->mType:I

    iget v3, p1, Landroid/car/vms/VmsLayer;->mType:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Landroid/car/vms/VmsLayer;->mChannel:I

    iget v3, p1, Landroid/car/vms/VmsLayer;->mChannel:I

    if-ne v2, v3, :cond_2

    iget p0, p0, Landroid/car/vms/VmsLayer;->mVersion:I

    iget p1, p1, Landroid/car/vms/VmsLayer;->mVersion:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 169
    iget v0, p0, Landroid/car/vms/VmsLayer;->mType:I

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 170
    iget v2, p0, Landroid/car/vms/VmsLayer;->mChannel:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 171
    iget p0, p0, Landroid/car/vms/VmsLayer;->mVersion:I

    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VmsLayer { type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/vms/VmsLayer;->mType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", channel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/vms/VmsLayer;->mChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/vms/VmsLayer;->mVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 181
    iget p2, p0, Landroid/car/vms/VmsLayer;->mType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget p2, p0, Landroid/car/vms/VmsLayer;->mChannel:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget p0, p0, Landroid/car/vms/VmsLayer;->mVersion:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
