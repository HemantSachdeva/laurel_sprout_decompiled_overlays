.class public final Landroid/car/occupantawareness/SystemStatusEvent;
.super Ljava/lang/Object;
.source "SystemStatusEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/occupantawareness/SystemStatusEvent;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final detectionType:I

.field public final systemStatus:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 129
    new-instance v0, Landroid/car/occupantawareness/SystemStatusEvent$1;

    invoke-direct {v0}, Landroid/car/occupantawareness/SystemStatusEvent$1;-><init>()V

    sput-object v0, Landroid/car/occupantawareness/SystemStatusEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 104
    iput v0, p0, Landroid/car/occupantawareness/SystemStatusEvent;->systemStatus:I

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Landroid/car/occupantawareness/SystemStatusEvent;->detectionType:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/occupantawareness/SystemStatusEvent;->systemStatus:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/occupantawareness/SystemStatusEvent;->detectionType:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/occupantawareness/SystemStatusEvent$1;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Landroid/car/occupantawareness/SystemStatusEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SystemStatusEvent{systemStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/occupantawareness/SystemStatusEvent;->systemStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", detectionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/occupantawareness/SystemStatusEvent;->detectionType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 115
    iget p2, p0, Landroid/car/occupantawareness/SystemStatusEvent;->systemStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget p0, p0, Landroid/car/occupantawareness/SystemStatusEvent;->detectionType:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
