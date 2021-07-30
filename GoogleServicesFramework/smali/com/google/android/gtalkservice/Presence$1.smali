.class Lcom/google/android/gtalkservice/Presence$1;
.super Ljava/lang/Object;
.source "Presence.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gtalkservice/Presence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gtalkservice/Presence;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 537
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/Presence;
    .locals 0

    .line 539
    new-instance p0, Lcom/google/android/gtalkservice/Presence;

    invoke-direct {p0, p1}, Lcom/google/android/gtalkservice/Presence;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gtalkservice/Presence;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/gtalkservice/Presence;
    .locals 0

    .line 543
    new-array p0, p1, [Lcom/google/android/gtalkservice/Presence;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/google/android/gtalkservice/Presence$1;->newArray(I)[Lcom/google/android/gtalkservice/Presence;

    move-result-object p0

    return-object p0
.end method
