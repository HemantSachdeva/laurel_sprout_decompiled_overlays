.class public final Lbdb;
.super Lact;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.android.gms.checkin.internal.ICheckinApiService"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method