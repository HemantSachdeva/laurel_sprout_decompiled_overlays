.class public final Ldcw;
.super Lact;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    const-string v0, "com.google.firebase.crash.internal.IFirebaseCrashApi"

    invoke-direct {p0, p1, v0}, Lact;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Lact;->h()Landroid/os/Parcel;

    move-result-object v0

    .line 3
    invoke-static {v0, p1}, Lacv;->a(Landroid/os/Parcel;Z)V

    .line 4
    const/16 p1, 0xa

    invoke-virtual {p0, p1, v0}, Lact;->b(ILandroid/os/Parcel;)V

    return-void
.end method
