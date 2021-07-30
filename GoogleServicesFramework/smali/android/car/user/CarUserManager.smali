.class public final Landroid/car/user/CarUserManager;
.super Landroid/car/CarManagerBase;
.source "CarUserManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CarUserManager"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 75
    invoke-static {}, Landroid/sysprop/CarProperties;->user_hal_timeout()Ljava/util/Optional;

    move-result-object v0

    const/16 v1, 0x1388

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/car/ICarUserService;Landroid/os/UserManager;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 198
    invoke-direct {p0, p1}, Landroid/car/CarManagerBase;-><init>(Landroid/car/Car;)V

    return-void
.end method

.method public constructor <init>(Landroid/car/Car;Landroid/os/IBinder;)V
    .locals 1

    .line 189
    invoke-static {p2}, Landroid/car/ICarUserService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICarUserService;

    move-result-object p2

    invoke-virtual {p1}, Landroid/car/Car;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/car/user/CarUserManager;-><init>(Landroid/car/Car;Landroid/car/ICarUserService;Landroid/os/UserManager;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 72
    sget-object v0, Landroid/car/user/CarUserManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Landroid/car/user/CarUserManager;Landroid/content/pm/UserInfo;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Landroid/car/user/CarUserManager;->onGuestCreated(Landroid/content/pm/UserInfo;)V

    return-void
.end method

.method private onGuestCreated(Landroid/content/pm/UserInfo;)V
    .locals 2

    .line 311
    invoke-virtual {p0}, Landroid/car/CarManagerBase;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    const-string v0, "skip_first_use_hints"

    const-string v1, "1"

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public onCarDisconnected()V
    .locals 0

    return-void
.end method
