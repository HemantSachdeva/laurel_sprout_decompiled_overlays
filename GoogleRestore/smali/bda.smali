.class public final Lbda;
.super Lacu;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Lbpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 2
    const-string v0, "com.google.android.gms.checkin.internal.ICheckinApiCallbacks"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbpl;)V
    .locals 0

    iput-object p1, p0, Lbda;->a:Lbpl;

    .line 1
    const-string p1, "com.google.android.gms.checkin.internal.ICheckinApiCallbacks"

    invoke-direct {p0, p1}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 0

    const/4 p3, 0x5

    if-ne p1, p3, :cond_0

    .line 3
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lbda;->a:Lbpl;

    .line 5
    invoke-static {p1, p2, p3}, Lbuo;->a(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lbpl;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
