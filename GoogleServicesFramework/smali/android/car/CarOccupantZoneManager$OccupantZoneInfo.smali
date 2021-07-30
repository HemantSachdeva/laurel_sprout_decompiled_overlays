.class public final Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;
.super Ljava/lang/Object;
.source "CarOccupantZoneManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarOccupantZoneManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OccupantZoneInfo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final occupantType:I

.field public final seat:I

.field public zoneId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 197
    new-instance v0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo$1;

    invoke-direct {v0}, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo$1;-><init>()V

    sput-object v0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->zoneId:I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->seat:I

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

    .line 180
    :cond_0
    instance-of v1, p1, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 183
    :cond_1
    check-cast p1, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;

    .line 184
    iget v1, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->zoneId:I

    iget v3, p1, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->zoneId:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    iget v3, p1, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    if-ne v1, v3, :cond_2

    iget p0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->seat:I

    iget p1, p1, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->seat:I

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 191
    iget v0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->zoneId:I

    const/16 v1, 0x187

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    .line 192
    iget v0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x11

    .line 193
    iget p0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->seat:I

    add-int/2addr v1, p0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "OccupantZoneInfo{zoneId="

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget v1, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->zoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " type="

    .line 213
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    iget v1, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " seat="

    .line 215
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    iget p0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->seat:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    .line 217
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 170
    iget p2, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->zoneId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget p2, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->occupantType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 172
    iget p0, p0, Landroid/car/CarOccupantZoneManager$OccupantZoneInfo;->seat:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
