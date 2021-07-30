.class public final Landroid/car/storagemonitoring/WearEstimate;
.super Ljava/lang/Object;
.source "WearEstimate.java"

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
            "Landroid/car/storagemonitoring/WearEstimate;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final typeA:I

.field public final typeB:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/car/storagemonitoring/WearEstimate;-><init>(II)V

    .line 49
    new-instance v0, Landroid/car/storagemonitoring/WearEstimate$1;

    invoke-direct {v0}, Landroid/car/storagemonitoring/WearEstimate$1;-><init>()V

    sput-object v0, Landroid/car/storagemonitoring/WearEstimate;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    invoke-static {p1}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    iput p1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    .line 79
    invoke-static {p2}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    iput p2, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    iput v0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Landroid/car/storagemonitoring/WearEstimate;->validateWearValue(I)I

    iput p1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    return-void
.end method

.method private static validateWearValue(I)I
    .locals 2

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    if-ltz p0, :cond_1

    const/16 v0, 0x64

    if-gt p0, v0, :cond_1

    return p0

    .line 74
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " is not a valid wear estimate"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static wearValueToString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const-string p0, "unknown"

    return-object p0

    .line 152
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "%"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 138
    instance-of v0, p1, Landroid/car/storagemonitoring/WearEstimate;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 139
    check-cast p1, Landroid/car/storagemonitoring/WearEstimate;

    .line 140
    iget v0, p1, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    iget v2, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    if-ne v0, v2, :cond_0

    iget p1, p1, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 147
    iget v1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type A: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    invoke-static {v1}, Landroid/car/storagemonitoring/WearEstimate;->wearValueToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type B: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    invoke-static {p0}, Landroid/car/storagemonitoring/WearEstimate;->wearValueToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 122
    iget p2, p0, Landroid/car/storagemonitoring/WearEstimate;->typeA:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p0, p0, Landroid/car/storagemonitoring/WearEstimate;->typeB:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
