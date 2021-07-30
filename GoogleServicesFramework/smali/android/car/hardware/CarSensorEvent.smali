.class public Landroid/car/hardware/CarSensorEvent;
.super Ljava/lang/Object;
.source "CarSensorEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/hardware/CarSensorEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final floatValues:[F

.field public final intValues:[I

.field public final longValues:[J

.field public sensorType:I

.field public timestamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 167
    new-instance v0, Landroid/car/hardware/CarSensorEvent$1;

    invoke-direct {v0}, Landroid/car/hardware/CarSensorEvent$1;-><init>()V

    sput-object v0, Landroid/car/hardware/CarSensorEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    .line 137
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 139
    new-array v0, v0, [F

    iput-object v0, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readFloatArray([F)V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    new-array v0, v0, [I

    iput-object v0, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    .line 143
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 146
    new-array v0, v0, [J

    iput-object v0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    .line 147
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readLongArray([J)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 753
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v2, Landroid/car/hardware/CarSensorEvent;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 756
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    const-string v2, " "

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    array-length v1, v1

    if-lez v1, :cond_0

    const-string v1, " float values:"

    .line 757
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 758
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    array-length v4, v1

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    aget v6, v1, v5

    .line 759
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 762
    :cond_0
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    if-eqz v1, :cond_1

    array-length v1, v1

    if-lez v1, :cond_1

    const-string v1, " int values:"

    .line 763
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 764
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    array-length v4, v1

    move v5, v3

    :goto_1
    if-ge v5, v4, :cond_1

    aget v6, v1, v5

    .line 765
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 768
    :cond_1
    iget-object v1, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    if-eqz v1, :cond_2

    array-length v1, v1

    if-lez v1, :cond_2

    const-string v1, " long values:"

    .line 769
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 770
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    array-length v1, p0

    :goto_2
    if-ge v3, v1, :cond_2

    aget-wide v4, p0, v3

    .line 771
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    const-string p0, "]"

    .line 774
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 157
    iget p2, p0, Landroid/car/hardware/CarSensorEvent;->sensorType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-wide v0, p0, Landroid/car/hardware/CarSensorEvent;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 159
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->floatValues:[F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 161
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->intValues:[I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 163
    iget-object p2, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object p0, p0, Landroid/car/hardware/CarSensorEvent;->longValues:[J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void
.end method
