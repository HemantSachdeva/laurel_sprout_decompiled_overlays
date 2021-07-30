.class Landroid/car/hardware/CarPropertyConfig$AreaConfig$1;
.super Ljava/lang/Object;
.source "CarPropertyConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/CarPropertyConfig$AreaConfig;->getCreator(Ljava/lang/Class;)Landroid/os/Parcelable$Creator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/hardware/CarPropertyConfig$AreaConfig<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final synthetic val$clazz:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0

    .line 441
    iput-object p1, p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig$1;->val$clazz:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/hardware/CarPropertyConfig$AreaConfig;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Landroid/car/hardware/CarPropertyConfig$AreaConfig<",
            "TE;>;"
        }
    .end annotation

    .line 444
    new-instance p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/car/hardware/CarPropertyConfig$AreaConfig;-><init>(Landroid/os/Parcel;Landroid/car/hardware/CarPropertyConfig$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 441
    invoke-virtual {p0, p1}, Landroid/car/hardware/CarPropertyConfig$AreaConfig$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/hardware/CarPropertyConfig$AreaConfig;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[",
            "Landroid/car/hardware/CarPropertyConfig$AreaConfig<",
            "TE;>;"
        }
    .end annotation

    .line 449
    iget-object p0, p0, Landroid/car/hardware/CarPropertyConfig$AreaConfig$1;->val$clazz:Ljava/lang/Class;

    invoke-static {p0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 441
    invoke-virtual {p0, p1}, Landroid/car/hardware/CarPropertyConfig$AreaConfig$1;->newArray(I)[Landroid/car/hardware/CarPropertyConfig$AreaConfig;

    move-result-object p0

    return-object p0
.end method
