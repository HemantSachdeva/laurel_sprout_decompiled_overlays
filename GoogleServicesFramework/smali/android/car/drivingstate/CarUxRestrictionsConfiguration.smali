.class public final Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;,
        Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration;",
            ">;"
        }
    .end annotation
.end field

.field private static final DRIVING_STATES:[I


# instance fields
.field private final mMaxContentDepth:I

.field private final mMaxCumulativeContentItems:I

.field private final mMaxStringLength:I

.field private final mPhysicalPort:Ljava/lang/Byte;

.field private final mRestrictionModes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 605
    fill-array-data v0, :array_0

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    .line 612
    new-instance v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;

    invoke-direct {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;-><init>()V

    sput-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    :array_0
    .array-data 4
        -0x1
        0x0
        0x1
        0x2
    .end array-data
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 11

    .line 631
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    .line 632
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 634
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 635
    new-instance v4, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;-><init>()V

    .line 636
    sget-object v5, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v6, v5

    move v7, v1

    :goto_1
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 637
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 638
    sget-object v10, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v9, v10}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 639
    invoke-virtual {v4, v8, v9}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->setRestrictionsForDriveState(ILjava/util/List;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 641
    :cond_0
    iget-object v5, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 644
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_2

    .line 646
    :cond_2
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$1;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method static synthetic access$1700()[I
    .locals 1

    .line 53
    sget-object v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    return-object v0
.end method

.method private writeRestrictionMode(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string v0, "parked_restrictions"

    .line 260
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x0

    .line 261
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "idling_restrictions"

    .line 263
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x1

    .line 264
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "moving_restrictions"

    .line 266
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, 0x2

    .line 267
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    const-string v0, "unknown_restrictions"

    .line 269
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    const/4 v0, -0x1

    .line 271
    invoke-virtual {p2, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object p2

    .line 270
    invoke-direct {p0, p1, p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V

    .line 272
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeRestrictions(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 286
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string p0, "req_opt"

    .line 287
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-boolean v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mReqOpt:Z

    invoke-virtual {p0, v0}, Landroid/util/JsonWriter;->value(Z)Landroid/util/JsonWriter;

    const-string p0, "restrictions"

    .line 288
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mRestrictions:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 289
    iget-object p0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    if-eqz p0, :cond_0

    const-string p0, "speed_range"

    .line 290
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 291
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    const-string p0, "min_speed"

    .line 292
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-object v0, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$400(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result v0

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    const-string p0, "max_speed"

    .line 293
    invoke-virtual {p1, p0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object p0

    iget-object p2, p2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;->mSpeedRange:Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;

    invoke-static {p2}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;->access$500(Landroid/car/drivingstate/CarUxRestrictionsConfiguration$Builder$SpeedRange;)F

    move-result p2

    float-to-double v0, p2

    invoke-virtual {p0, v0, v1}, Landroid/util/JsonWriter;->value(D)Landroid/util/JsonWriter;

    .line 294
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    .line 296
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method private writeRestrictionsList(Landroid/util/JsonWriter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonWriter;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginArray()Landroid/util/JsonWriter;

    .line 278
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;

    .line 279
    invoke-direct {p0, p1, v0}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictions(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endArray()Landroid/util/JsonWriter;

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

    .line 528
    :cond_0
    instance-of v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 532
    :cond_1
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;

    .line 534
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    iget-object v3, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    if-ne v1, v3, :cond_2

    .line 535
    invoke-virtual {p0, p1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    .line 536
    invoke-interface {p0, p1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hasSameParameters(Landroid/car/drivingstate/CarUxRestrictionsConfiguration;)Z
    .locals 2

    const-string v0, "other must not be null"

    .line 543
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 544
    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    iget v1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    if-ne v0, v1, :cond_0

    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    iget p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    .line 519
    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    const/4 v1, 0x4

    aput-object p0, v0, v1

    .line 519
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 301
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 302
    new-instance v1, Landroid/util/JsonWriter;

    invoke-direct {v1, v0}, Landroid/util/JsonWriter;-><init>(Ljava/io/Writer;)V

    const-string v2, "\t"

    .line 303
    invoke-virtual {v1, v2}, Landroid/util/JsonWriter;->setIndent(Ljava/lang/String;)V

    .line 305
    :try_start_0
    invoke-virtual {p0, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeJson(Landroid/util/JsonWriter;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 307
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 309
    :goto_0
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeJson(Landroid/util/JsonWriter;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "writer must not be null"

    .line 234
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 236
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->setLenient(Z)V

    .line 238
    invoke-virtual {p1}, Landroid/util/JsonWriter;->beginObject()Landroid/util/JsonWriter;

    .line 239
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    const-string v1, "physical_port"

    if-nez v0, :cond_0

    .line 240
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/JsonWriter;->nullValue()Landroid/util/JsonWriter;

    goto :goto_0

    .line 242
    :cond_0
    invoke-virtual {p1, v1}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget-object v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    :goto_0
    const-string v0, "max_content_depth"

    .line 244
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "max_cumulative_content_items"

    .line 245
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    const-string v0, "max_string_length"

    .line 247
    invoke-virtual {p1, v0}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    move-result-object v0

    iget v1, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/util/JsonWriter;->value(J)Landroid/util/JsonWriter;

    .line 249
    iget-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 250
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/util/JsonWriter;->name(Ljava/lang/String;)Landroid/util/JsonWriter;

    .line 251
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-direct {p0, p1, v1}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->writeRestrictionMode(Landroid/util/JsonWriter;Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;)V

    goto :goto_1

    .line 254
    :cond_1
    invoke-virtual {p1}, Landroid/util/JsonWriter;->endObject()Landroid/util/JsonWriter;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 655
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 656
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mRestrictionModes:Ljava/util/Map;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 657
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 658
    sget-object v2, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->DRIVING_STATES:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget v4, v2, v1

    .line 659
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    invoke-virtual {v5, v4}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->getRestrictionsForDriveState(I)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_1
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    if-nez p2, :cond_2

    const/4 p2, 0x1

    goto :goto_1

    :cond_2
    move p2, v1

    .line 663
    :goto_1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    if-eqz p2, :cond_3

    goto :goto_2

    .line 665
    :cond_3
    iget-object p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mPhysicalPort:Ljava/lang/Byte;

    invoke-virtual {p2}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    :goto_2
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 667
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxContentDepth:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 668
    iget p2, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxCumulativeContentItems:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 669
    iget p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->mMaxStringLength:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
