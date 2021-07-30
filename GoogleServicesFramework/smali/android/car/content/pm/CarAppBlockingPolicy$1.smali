.class Landroid/car/content/pm/CarAppBlockingPolicy$1;
.super Ljava/lang/Object;
.source "CarAppBlockingPolicy.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/content/pm/CarAppBlockingPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/content/pm/CarAppBlockingPolicy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/content/pm/CarAppBlockingPolicy;
    .locals 0

    .line 93
    new-instance p0, Landroid/car/content/pm/CarAppBlockingPolicy;

    invoke-direct {p0, p1}, Landroid/car/content/pm/CarAppBlockingPolicy;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Landroid/car/content/pm/CarAppBlockingPolicy$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/content/pm/CarAppBlockingPolicy;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/content/pm/CarAppBlockingPolicy;
    .locals 0

    .line 98
    new-array p0, p1, [Landroid/car/content/pm/CarAppBlockingPolicy;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 89
    invoke-virtual {p0, p1}, Landroid/car/content/pm/CarAppBlockingPolicy$1;->newArray(I)[Landroid/car/content/pm/CarAppBlockingPolicy;

    move-result-object p0

    return-object p0
.end method
