.class Landroid/car/occupantawareness/SystemStatusEvent$1;
.super Ljava/lang/Object;
.source "SystemStatusEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/occupantawareness/SystemStatusEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/occupantawareness/SystemStatusEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 130
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/occupantawareness/SystemStatusEvent;
    .locals 1

    .line 132
    new-instance p0, Landroid/car/occupantawareness/SystemStatusEvent;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/car/occupantawareness/SystemStatusEvent;-><init>(Landroid/os/Parcel;Landroid/car/occupantawareness/SystemStatusEvent$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Landroid/car/occupantawareness/SystemStatusEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/occupantawareness/SystemStatusEvent;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Landroid/car/occupantawareness/SystemStatusEvent;
    .locals 0

    .line 136
    new-array p0, p1, [Landroid/car/occupantawareness/SystemStatusEvent;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 130
    invoke-virtual {p0, p1}, Landroid/car/occupantawareness/SystemStatusEvent$1;->newArray(I)[Landroid/car/occupantawareness/SystemStatusEvent;

    move-result-object p0

    return-object p0
.end method
