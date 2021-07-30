.class public final Lasd;
.super Lacu;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field final synthetic a:Lbpl;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback"

    invoke-direct {p0, v0}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lbpl;)V
    .locals 0

    iput-object p1, p0, Lasd;->a:Lbpl;

    .line 9
    const-string p1, "com.google.android.gms.auth.account.data.IGetTokenWithDetailsCallback"

    invoke-direct {p0, p1}, Lacu;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final a(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 2

    const/4 p3, 0x0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 2
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    .line 3
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, v0}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    iget-object v0, p0, Lasd;->a:Lbpl;

    .line 4
    sget-object v1, Lash;->a:Lbjb;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p2}, Lbpl;->b(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    .line 8
    :cond_0
    new-instance p2, Lbep;

    .line 7
    invoke-direct {p2, p1}, Lbep;-><init>(Lcom/google/android/gms/common/api/Status;)V

    invoke-virtual {v0, p2}, Lbpl;->b(Ljava/lang/Exception;)Z

    move-result p1

    .line 6
    :goto_0
    if-nez p1, :cond_1

    sget-object p1, Lash;->a:Lbjb;

    new-array p2, p3, [Ljava/lang/Object;

    .line 8
    const-string p3, "The task is already complete."

    invoke-virtual {p1, p3, p2}, Lbjb;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    return p3
.end method
