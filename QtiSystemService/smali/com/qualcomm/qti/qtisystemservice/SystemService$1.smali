.class Lcom/qualcomm/qti/qtisystemservice/SystemService$1;
.super Lcom/qualcomm/qti/qtisystemservice/ISystemService$Stub;
.source "SystemService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/qti/qtisystemservice/SystemService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/qualcomm/qti/qtisystemservice/SystemService;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/qualcomm/qti/qtisystemservice/ISystemService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaInfo()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 35
    invoke-static {}, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;->getInstance()Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;

    move-result-object p0

    invoke-virtual {p0}, Lcom/qualcomm/qti/qtisystemservice/MetaInfoParser;->getMetaInfo()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
