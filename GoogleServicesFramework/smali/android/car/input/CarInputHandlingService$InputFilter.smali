.class public final Landroid/car/input/CarInputHandlingService$InputFilter;
.super Ljava/lang/Object;
.source "CarInputHandlingService.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final mKeyCode:I

.field public final mTargetDisplay:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 190
    new-instance v0, Landroid/car/input/CarInputHandlingService$InputFilter$1;

    invoke-direct {v0}, Landroid/car/input/CarInputHandlingService$InputFilter$1;-><init>()V

    sput-object v0, Landroid/car/input/CarInputHandlingService$InputFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/input/CarInputHandlingService$InputFilter;->mKeyCode:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/car/input/CarInputHandlingService$InputFilter;->mTargetDisplay:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 186
    iget p2, p0, Landroid/car/input/CarInputHandlingService$InputFilter;->mKeyCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget p0, p0, Landroid/car/input/CarInputHandlingService$InputFilter;->mTargetDisplay:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
