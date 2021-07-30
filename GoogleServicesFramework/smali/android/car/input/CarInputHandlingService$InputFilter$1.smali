.class Landroid/car/input/CarInputHandlingService$InputFilter$1;
.super Ljava/lang/Object;
.source "CarInputHandlingService.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/input/CarInputHandlingService$InputFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/input/CarInputHandlingService$InputFilter;
    .locals 0

    .line 192
    new-instance p0, Landroid/car/input/CarInputHandlingService$InputFilter;

    invoke-direct {p0, p1}, Landroid/car/input/CarInputHandlingService$InputFilter;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Landroid/car/input/CarInputHandlingService$InputFilter$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/input/CarInputHandlingService$InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/input/CarInputHandlingService$InputFilter;
    .locals 0

    .line 196
    new-array p0, p1, [Landroid/car/input/CarInputHandlingService$InputFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Landroid/car/input/CarInputHandlingService$InputFilter$1;->newArray(I)[Landroid/car/input/CarInputHandlingService$InputFilter;

    move-result-object p0

    return-object p0
.end method
