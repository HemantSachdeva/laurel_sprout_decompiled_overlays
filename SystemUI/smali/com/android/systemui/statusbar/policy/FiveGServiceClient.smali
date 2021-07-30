.class public Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
.super Ljava/lang/Object;
.source "FiveGServiceClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;,
        Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;


# instance fields
.field private mBindRetryTimes:I

.field protected mCallback:Lorg/codeaurora/internal/INetworkCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mClient:Lorg/codeaurora/internal/Client;

.field private mContext:Landroid/content/Context;

.field private final mCurrentServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mInitRetryTimes:I

.field private final mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/keyguard/KeyguardUpdateMonitorCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLastServiceStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

.field private mPackageName:Ljava/lang/String;

.field private mServiceConnected:Z

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field final mStatesListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "FiveGServiceClient"

    const/4 v1, 0x3

    .line 66
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    .line 77
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    .line 79
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 87
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    .line 88
    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    .line 284
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$1;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    .line 304
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$2;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 346
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$3;-><init>(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCallback:Lorg/codeaurora/internal/INetworkCallback;

    .line 133
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyListenersIfNecessary(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->notifyMonitorCallback()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/IExtTelephony;)Lorg/codeaurora/internal/IExtTelephony;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Lorg/codeaurora/internal/Client;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p0
.end method

.method static synthetic access$602(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Lorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Client;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/policy/FiveGServiceClient;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    return p0
.end method

.method private binderService()V
    .locals 4

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-static {v0, v1}, Lorg/codeaurora/internal/ServiceUtil;->bindService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    move-result v0

    .line 170
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " bind service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    .line 171
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    mul-int/lit16 v2, v2, 0x7d0

    add-int/lit16 v2, v2, 0xbb8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 174
    iget v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mBindRetryTimes:I

    :cond_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient;
    .locals 1

    .line 138
    sget-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    if-nez v0, :cond_0

    .line 139
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    .line 142
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->sInstance:Lcom/android/systemui/statusbar/policy/FiveGServiceClient;

    return-object p0
.end method

.method private getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method private getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;
    .locals 0

    .line 263
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->UNKNOWN:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 269
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_UWB:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    goto :goto_0

    .line 266
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/policy/TelephonyIcons;->FIVE_G_BASIC:Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    :goto_0
    return-object p0
.end method

.method private static getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/util/SparseArray<",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;"
        }
    .end annotation

    .line 193
    invoke-virtual {p1, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    if-nez v0, :cond_0

    .line 195
    new-instance v0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;-><init>()V

    .line 196
    invoke-virtual {p1, p0, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private initFiveGServiceState()V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initFiveGServiceState size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 227
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private initFiveGServiceState(I)V
    .locals 4

    const-string v0, "initFiveGServiceState: Exception = "

    .line 232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNetworkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mClient="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGServiceClient"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    if-eqz v1, :cond_0

    .line 234
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "query 5G service state for phoneId "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    invoke-interface {v1, p1, v3}, Lorg/codeaurora/internal/IExtTelephony;->queryNrIconType(ILorg/codeaurora/internal/Client;)Lorg/codeaurora/internal/Token;

    move-result-object p1

    .line 237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryNrIconType result:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 247
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    const/4 v0, 0x4

    if-ge p1, v0, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 v0, 0x401

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 249
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    iget v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    mul-int/lit16 v1, v1, 0x7d0

    add-int/lit16 v1, v1, 0xbb8

    int-to-long v1, v1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 251
    iget p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    goto :goto_0

    :catch_1
    move-exception p1

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "try to re-binder service"

    .line 240
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 241
    iput p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mInitRetryTimes:I

    .line 242
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    const/4 p1, 0x0

    .line 243
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mNetworkService:Lorg/codeaurora/internal/IExtTelephony;

    .line 244
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mClient:Lorg/codeaurora/internal/Client;

    .line 245
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyListenersIfNecessary(I)V
    .locals 4

    .line 202
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v0

    .line 203
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getLastServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object v1

    .line 204
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->equals(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 206
    sget-boolean v2, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "phoneId("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") Change in state from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " \n\tto "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FiveGServiceClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->copyFrom(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;

    if-eqz p1, :cond_1

    .line 215
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;->onStateChanged(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)V

    .line 218
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x402

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method

.method private notifyMonitorCallback()V
    .locals 2

    const/4 v0, 0x0

    .line 276
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 277
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v1, :cond_0

    .line 279
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onRefreshCarrierInfo()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getCurrentServiceState(I)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getServiceState(ILandroid/util/SparseArray;)Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;

    move-result-object p0

    return-object p0
.end method

.method public isServiceConnected()Z
    .locals 0

    .line 179
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mServiceConnected:Z

    return p0
.end method

.method public registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V
    .locals 1

    .line 146
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mKeyguardUpdateMonitorCallbacks:Ljava/util/ArrayList;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public registerListener(ILcom/android/systemui/statusbar/policy/FiveGServiceClient$IFiveGStateListener;)V
    .locals 2

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->isServiceConnected()Z

    move-result p2

    if-nez p2, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->binderService()V

    goto :goto_0

    .line 157
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->initFiveGServiceState(I)V

    :goto_0
    return-void
.end method

.method public unregisterListener(I)V
    .locals 2

    .line 162
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unregisterListener phoneId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FiveGServiceClient"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mStatesListeners:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mCurrentServiceStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->mLastServiceStates:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method update5GIcon(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;I)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 259
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$100(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient;->getNrIconGroup(II)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;->access$002(Lcom/android/systemui/statusbar/policy/FiveGServiceClient$FiveGServiceState;Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;)Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileIconGroup;

    return-void
.end method
