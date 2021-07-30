.class public final Landroid/car/drivingstate/CarDrivingStateEvent;
.super Ljava/lang/Object;
.source "CarDrivingStateEvent.java"

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
            "Landroid/car/drivingstate/CarDrivingStateEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final eventValue:I

.field public final timeStamp:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Landroid/car/drivingstate/CarDrivingStateEvent$1;

    invoke-direct {v0}, Landroid/car/drivingstate/CarDrivingStateEvent$1;-><init>()V

    sput-object v0, Landroid/car/drivingstate/CarDrivingStateEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/drivingstate/CarDrivingStateEvent;->timeStamp:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarDrivingStateEvent$1;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarDrivingStateEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/car/drivingstate/CarDrivingStateEvent;->timeStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 83
    iget p2, p0, Landroid/car/drivingstate/CarDrivingStateEvent;->eventValue:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 84
    iget-wide v0, p0, Landroid/car/drivingstate/CarDrivingStateEvent;->timeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
