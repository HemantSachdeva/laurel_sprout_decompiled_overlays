.class Lcom/android/dynsystem/DynamicSystemInstallationService$IncomingHandler;
.super Landroid/os/Handler;
.source "DynamicSystemInstallationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dynsystem/DynamicSystemInstallationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IncomingHandler"
.end annotation


# instance fields
.field private final mWeakService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/dynsystem/DynamicSystemInstallationService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/dynsystem/DynamicSystemInstallationService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/dynsystem/DynamicSystemInstallationService;

    .line 118
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 119
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService$IncomingHandler;->mWeakService:Ljava/lang/ref/WeakReference;

    .line 120
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 124
    iget-object v0, p0, Lcom/android/dynsystem/DynamicSystemInstallationService$IncomingHandler;->mWeakService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/dynsystem/DynamicSystemInstallationService;

    .line 126
    .local v0, "service":Lcom/android/dynsystem/DynamicSystemInstallationService;
    if-eqz v0, :cond_0

    .line 127
    invoke-virtual {v0, p1}, Lcom/android/dynsystem/DynamicSystemInstallationService;->handleMessage(Landroid/os/Message;)V

    .line 129
    :cond_0
    return-void
.end method
