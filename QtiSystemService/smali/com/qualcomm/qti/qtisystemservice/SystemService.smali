.class public Lcom/qualcomm/qti/qtisystemservice/SystemService;
.super Landroid/app/Service;
.source "SystemService.java"


# instance fields
.field mSysBinder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Lcom/qualcomm/qti/qtisystemservice/SystemService$1;

    invoke-direct {v0, p0}, Lcom/qualcomm/qti/qtisystemservice/SystemService$1;-><init>(Lcom/qualcomm/qti/qtisystemservice/SystemService;)V

    iput-object v0, p0, Lcom/qualcomm/qti/qtisystemservice/SystemService;->mSysBinder:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/qualcomm/qti/qtisystemservice/SystemService;->mSysBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method public onCreate()V
    .locals 2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onCreate"

    .line 18
    invoke-static {p0, v1, v0}, Lcom/qualcomm/qti/qtisystemservice/QLog;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
