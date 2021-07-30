.class public Lfg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final a:Landroid/os/Handler;

.field b:Lfe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lff;

    invoke-direct {v0}, Lff;-><init>()V

    sput-object v0, Lfg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lfg;->a:Landroid/os/Handler;

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    const-string v0, "android.support.v4.os.IResultReceiver"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Lfe;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lfe;

    goto :goto_0

    :cond_1
    new-instance v0, Lfc;

    .line 4
    invoke-direct {v0, p1}, Lfc;-><init>(Landroid/os/IBinder;)V

    .line 1
    :goto_0
    iput-object v0, p0, Lfg;->b:Lfe;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Lfg;->b:Lfe;

    if-nez p2, :cond_0

    new-instance p2, Lfd;

    .line 6
    invoke-direct {p2, p0}, Lfd;-><init>(Lfg;)V

    iput-object p2, p0, Lfg;->b:Lfe;

    :cond_0
    iget-object p2, p0, Lfg;->b:Lfe;

    .line 7
    invoke-interface {p2}, Lfe;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
