.class public final Lahf;
.super Lact;
.source "PG"

# interfaces
.implements Lahh;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.apps.pixelmigrate.cloudrestore.service.IBoundCloudRestoreService"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lahk;)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 7
    invoke-static {v0, p5}, Lacv;->a(Landroid/os/Parcel;Landroid/os/IInterface;)V

    .line 8
    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lact;->c(ILandroid/os/Parcel;)V

    return-void
.end method
