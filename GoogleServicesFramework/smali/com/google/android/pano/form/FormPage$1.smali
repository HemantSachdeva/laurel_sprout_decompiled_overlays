.class Lcom/google/android/pano/form/FormPage$1;
.super Ljava/lang/Object;
.source "FormPage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/pano/form/FormPage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/pano/form/FormPage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/pano/form/FormPage;
    .locals 0

    .line 29
    new-instance p0, Lcom/google/android/pano/form/FormPage;

    invoke-direct {p0, p1}, Lcom/google/android/pano/form/FormPage;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/pano/form/FormPage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/pano/form/FormPage;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/pano/form/FormPage;
    .locals 0

    .line 34
    new-array p0, p1, [Lcom/google/android/pano/form/FormPage;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/google/android/pano/form/FormPage$1;->newArray(I)[Lcom/google/android/pano/form/FormPage;

    move-result-object p0

    return-object p0
.end method
