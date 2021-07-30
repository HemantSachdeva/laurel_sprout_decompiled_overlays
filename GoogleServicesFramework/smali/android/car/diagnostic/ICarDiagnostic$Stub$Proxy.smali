.class Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarDiagnostic.java"

# interfaces
.implements Landroid/car/diagnostic/ICarDiagnostic;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/ICarDiagnostic$Stub;
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

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 257
    iput-object p1, p0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 261
    iget-object p0, p0, Landroid/car/diagnostic/ICarDiagnostic$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object p0
.end method
