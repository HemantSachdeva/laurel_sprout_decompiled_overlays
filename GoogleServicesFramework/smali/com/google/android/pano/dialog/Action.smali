.class public Lcom/google/android/pano/dialog/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# instance fields
.field private mCheckSetId:I

.field private mChecked:Z

.field private mDescription:Ljava/lang/String;

.field private mDrawableResource:I

.field private mIconUri:Landroid/net/Uri;

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mMultilineDescription:Z

.field private mResourcePackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 390
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 391
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 392
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 393
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mResourcePackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 394
    iget v0, p0, Lcom/google/android/pano/dialog/Action;->mDrawableResource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 395
    iget-object v0, p0, Lcom/google/android/pano/dialog/Action;->mIconUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 396
    iget-boolean p2, p0, Lcom/google/android/pano/dialog/Action;->mChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    iget-boolean p2, p0, Lcom/google/android/pano/dialog/Action;->mMultilineDescription:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 398
    iget p0, p0, Lcom/google/android/pano/dialog/Action;->mCheckSetId:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
