.class public final Lbkh;
.super Lact;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.dynamite.IDynamiteLoader"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    const/4 v1, 0x6

    invoke-virtual {p0, v1, v0}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 5
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return v1
.end method
