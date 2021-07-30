.class final Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;
.super Ljava/lang/Object;
.source "CarUxRestrictionsConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/drivingstate/CarUxRestrictionsConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictionModeContainer"
.end annotation


# instance fields
.field private final mDriveStateUxRestrictions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 6

    .line 1219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1216
    new-instance v0, Landroid/util/ArrayMap;

    .line 1217
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$1700()[I

    move-result-object v1

    array-length v1, v1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    .line 1220
    invoke-static {}, Landroid/car/drivingstate/CarUxRestrictionsConfiguration;->access$1700()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1221
    iget-object v4, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 1247
    :cond_0
    instance-of v0, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 1250
    :cond_1
    check-cast p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;

    .line 1251
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    iget-object p1, p1, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method getRestrictionsForDriveState(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;"
        }
    .end annotation

    .line 1233
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1256
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method setRestrictionsForDriveState(ILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionsPerSpeedRange;",
            ">;)V"
        }
    .end annotation

    const-string v0, "null restrictions are not allows"

    .line 1238
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1239
    iget-object p0, p0, Landroid/car/drivingstate/CarUxRestrictionsConfiguration$RestrictionModeContainer;->mDriveStateUxRestrictions:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
