.class Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;
.super Ljava/lang/Object;
.source "GoogleLoginCredentialsResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/GoogleLoginCredentialsResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gsf/GoogleLoginCredentialsResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 1

    .line 129
    new-instance p0, Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/GoogleLoginCredentialsResult;-><init>(Landroid/os/Parcel;Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/google/android/gsf/GoogleLoginCredentialsResult;
    .locals 0

    .line 133
    new-array p0, p1, [Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 127
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/GoogleLoginCredentialsResult$1;->newArray(I)[Lcom/google/android/gsf/GoogleLoginCredentialsResult;

    move-result-object p0

    return-object p0
.end method
