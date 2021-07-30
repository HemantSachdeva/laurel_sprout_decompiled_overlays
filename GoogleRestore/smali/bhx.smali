.class public final Lbhx;
.super Lbiy;
.source "PG"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:I

.field final b:I

.field final c:I

.field d:Ljava/lang/String;

.field e:Landroid/os/IBinder;

.field f:[Lcom/google/android/gms/common/api/Scope;

.field g:Landroid/os/Bundle;

.field h:Landroid/accounts/Account;

.field i:[Lbdv;

.field j:[Lbdv;

.field k:Z

.field l:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbhy;

    invoke-direct {v0}, Lbhy;-><init>()V

    sput-object v0, Lbhx;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lbiy;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lbhx;->a:I

    .line 1
    sget v0, Lbdz;->b:I

    iput v0, p0, Lbhx;->c:I

    iput p1, p0, Lbhx;->b:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lbhx;->k:Z

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Lbdv;[Lbdv;ZI)V
    .locals 0

    invoke-direct {p0}, Lbiy;-><init>()V

    iput p1, p0, Lbhx;->a:I

    iput p2, p0, Lbhx;->b:I

    iput p3, p0, Lbhx;->c:I

    .line 2
    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iput-object p2, p0, Lbhx;->d:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iput-object p4, p0, Lbhx;->d:Ljava/lang/String;

    .line 2
    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_4

    const/4 p1, 0x0

    if-eqz p5, :cond_3

    .line 3
    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    .line 4
    instance-of p4, p3, Lbik;

    if-eqz p4, :cond_1

    .line 5
    check-cast p3, Lbik;

    goto :goto_1

    .line 13
    :cond_1
    new-instance p3, Lbik;

    .line 6
    invoke-direct {p3, p5}, Lbik;-><init>(Landroid/os/IBinder;)V

    .line 5
    :goto_1
    if-eqz p3, :cond_2

    .line 7
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    .line 8
    :try_start_0
    invoke-virtual {p3}, Lact;->h()Landroid/os/Parcel;

    move-result-object p8

    .line 9
    invoke-virtual {p3, p2, p8}, Lact;->a(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    .line 10
    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lacv;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p3

    goto :goto_3

    .line 12
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 6
    :catch_0
    move-exception p2

    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p3, "Remote account accessor probably died"

    .line 12
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 14
    throw p1

    .line 13
    :cond_2
    goto :goto_3

    .line 6
    :cond_3
    nop

    .line 13
    :goto_3
    iput-object p1, p0, Lbhx;->h:Landroid/accounts/Account;

    goto :goto_4

    .line 6
    :cond_4
    iput-object p5, p0, Lbhx;->e:Landroid/os/IBinder;

    iput-object p8, p0, Lbhx;->h:Landroid/accounts/Account;

    .line 13
    :goto_4
    iput-object p6, p0, Lbhx;->f:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Lbhx;->g:Landroid/os/Bundle;

    iput-object p9, p0, Lbhx;->i:[Lbdv;

    iput-object p10, p0, Lbhx;->j:[Lbdv;

    iput-boolean p11, p0, Lbhx;->k:Z

    iput p12, p0, Lbhx;->l:I

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 15
    invoke-static {p0, p1, p2}, Lbhy;->a(Lbhx;Landroid/os/Parcel;I)V

    return-void
.end method
