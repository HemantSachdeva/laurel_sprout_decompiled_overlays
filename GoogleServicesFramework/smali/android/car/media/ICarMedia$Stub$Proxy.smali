.class Landroid/car/media/ICarMedia$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarMedia.java"

# interfaces
.implements Landroid/car/media/ICarMedia;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/media/ICarMedia$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Landroid/car/media/ICarMedia$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 186
    iget-object p0, p0, Landroid/car/media/ICarMedia$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method