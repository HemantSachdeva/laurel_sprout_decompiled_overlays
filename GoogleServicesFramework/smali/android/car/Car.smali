.class public final Landroid/car/Car;
.super Ljava/lang/Object;
.source "Car.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/Car$CarServiceLifecycleListener;
    }
.end annotation


# instance fields
.field private mConnectionRetryCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

.field private final mConnectionRetryRunnable:Ljava/lang/Runnable;

.field private mConnectionState:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mConstructionStack:Ljava/lang/Exception;

.field private final mContext:Landroid/content/Context;

.field private final mEventHandler:Landroid/os/Handler;

.field private final mFeatures:Landroid/car/CarFeatures;

.field private final mLock:Ljava/lang/Object;

.field private final mMainThreadEventHandler:Landroid/os/Handler;

.field private mService:Landroid/car/ICar;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mServiceConnectionListener:Landroid/content/ServiceConnection;

.field private final mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

.field private final mServiceMap:Ljava/util/HashMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/car/CarManagerBase;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V
    .locals 1

    .line 1271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 898
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    .line 911
    new-instance v0, Landroid/car/Car$1;

    invoke-direct {v0, p0}, Landroid/car/Car$1;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    .line 918
    new-instance v0, Landroid/car/Car$2;

    invoke-direct {v0, p0}, Landroid/car/Car$2;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    .line 926
    new-instance v0, Landroid/car/Car$3;

    invoke-direct {v0, p0}, Landroid/car/Car$3;-><init>(Landroid/car/Car;)V

    iput-object v0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    .line 979
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    .line 987
    new-instance v0, Landroid/car/CarFeatures;

    invoke-direct {v0}, Landroid/car/CarFeatures;-><init>()V

    iput-object v0, p0, Landroid/car/Car;->mFeatures:Landroid/car/CarFeatures;

    .line 1272
    iput-object p1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    .line 1273
    invoke-static {p5}, Landroid/car/Car;->determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    .line 1274
    invoke-static {p1}, Landroid/car/Car;->determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    .line 1276
    iput-object p2, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz p2, :cond_0

    const/4 p1, 0x2

    .line 1278
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1280
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    .line 1282
    :goto_0
    iput-object p3, p0, Landroid/car/Car;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    .line 1283
    iput-object p4, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    if-nez p3, :cond_1

    if-nez p4, :cond_1

    .line 1287
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    iput-object p1, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1289
    iput-object p1, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    :goto_1
    return-void
.end method

.method static synthetic access$000(Landroid/car/Car;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroid/car/Car;->startCarService()V

    return-void
.end method

.method static synthetic access$100(Landroid/car/Car;)Landroid/content/ServiceConnection;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$200(Landroid/car/Car;)Ljava/lang/Object;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$300(Landroid/car/Car;)Landroid/car/ICar;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    return-object p0
.end method

.method static synthetic access$302(Landroid/car/Car;Landroid/car/ICar;)Landroid/car/ICar;
    .locals 0

    .line 95
    iput-object p1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    return-object p1
.end method

.method static synthetic access$400(Landroid/car/Car;)I
    .locals 0

    .line 95
    iget p0, p0, Landroid/car/Car;->mConnectionState:I

    return p0
.end method

.method static synthetic access$402(Landroid/car/Car;I)I
    .locals 0

    .line 95
    iput p1, p0, Landroid/car/Car;->mConnectionState:I

    return p1
.end method

.method static synthetic access$500(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    return-object p0
.end method

.method static synthetic access$600(Landroid/car/Car;)Landroid/content/ServiceConnection;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListenerClient:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method static synthetic access$700(Landroid/car/Car;)Landroid/car/CarFeatures;
    .locals 0

    .line 95
    iget-object p0, p0, Landroid/car/Car;->mFeatures:Landroid/car/CarFeatures;

    return-object p0
.end method

.method static synthetic access$800(Landroid/car/Car;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroid/car/Car;->handleCarDisconnectLocked()V

    return-void
.end method

.method static synthetic access$900(Landroid/car/Car;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Landroid/car/Car;->finishClient()V

    return-void
.end method

.method private static assertNonNullContext(Landroid/content/Context;)V
    .locals 1

    .line 1250
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    instance-of v0, p0, Landroid/content/ContextWrapper;

    if-eqz v0, :cond_1

    check-cast p0, Landroid/content/ContextWrapper;

    .line 1252
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1253
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ContextWrapper with null base passed as Context, forgot to set base Context?"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private constructCarManager(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;
    .locals 6

    .line 1781
    :try_start_0
    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 1782
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    .line 1783
    const-class v3, Landroid/car/Car;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Landroid/os/IBinder;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v4

    aput-object p2, v1, v5

    .line 1784
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/CarManagerBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1788
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot construct CarManager, class:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CAR.L"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public static createCar(Landroid/content/Context;Landroid/os/Handler;JLandroid/car/Car$CarServiceLifecycleListener;)Landroid/car/Car;
    .locals 21

    move-wide/from16 v0, p2

    .line 1168
    invoke-static/range {p0 .. p0}, Landroid/car/Car;->assertNonNullContext(Landroid/content/Context;)V

    .line 1169
    invoke-static/range {p4 .. p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const-wide/16 v5, 0x32

    if-lez v4, :cond_0

    .line 1176
    div-long v7, v0, v5

    cmp-long v9, v7, v2

    if-nez v9, :cond_1

    const-wide/16 v7, 0x1

    goto :goto_0

    :cond_0
    move-wide v7, v2

    .line 1182
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v9

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v10

    const/4 v11, 0x1

    const/4 v12, 0x0

    if-ne v9, v10, :cond_2

    move v9, v11

    goto :goto_1

    :cond_2
    move v9, v12

    :goto_1
    const/4 v10, 0x0

    move v13, v12

    :goto_2
    const-string v14, "car_service"

    .line 1184
    invoke-static {v14}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v14

    if-nez v10, :cond_3

    .line 1187
    new-instance v10, Landroid/car/Car;

    invoke-static {v14}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v17

    const/16 v18, 0x0

    move-object v15, v10

    move-object/from16 v16, p0

    move-object/from16 v19, p4

    move-object/from16 v20, p1

    invoke-direct/range {v15 .. v20}, Landroid/car/Car;-><init>(Landroid/content/Context;Landroid/car/ICar;Landroid/content/ServiceConnection;Landroid/car/Car$CarServiceLifecycleListener;Landroid/os/Handler;)V

    :cond_3
    if-eqz v14, :cond_6

    if-nez v12, :cond_4

    .line 1192
    invoke-direct {v10, v9}, Landroid/car/Car;->dispatchCarReadyToMainThread(Z)V

    .line 1195
    invoke-direct {v10}, Landroid/car/Car;->startCarService()V

    return-object v10

    .line 1230
    :cond_4
    iget-object v15, v10, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v15

    :try_start_0
    const-string v0, "CAR.L"

    .line 1231
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waited for car_service (ms):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-long v2, v13

    mul-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1236
    iget-object v0, v10, Landroid/car/Car;->mService:Landroid/car/ICar;

    if-eqz v0, :cond_5

    .line 1237
    monitor-exit v15

    return-object v10

    .line 1242
    :cond_5
    invoke-static {v14}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v0

    iput-object v0, v10, Landroid/car/Car;->mService:Landroid/car/ICar;

    const/4 v0, 0x2

    .line 1243
    iput v0, v10, Landroid/car/Car;->mConnectionState:I

    .line 1244
    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1245
    invoke-direct {v10, v9}, Landroid/car/Car;->dispatchCarReadyToMainThread(Z)V

    return-object v10

    :catchall_0
    move-exception v0

    .line 1244
    :try_start_1
    monitor-exit v15
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    if-nez v12, :cond_7

    .line 1202
    invoke-direct {v10}, Landroid/car/Car;->startCarService()V

    move v12, v11

    :cond_7
    add-int/lit8 v13, v13, 0x1

    if-gez v4, :cond_8

    int-to-long v14, v13

    const-wide/16 v16, 0x64

    cmp-long v18, v14, v16

    if-ltz v18, :cond_8

    .line 1206
    rem-long v16, v14, v16

    cmp-long v16, v16, v2

    if-nez v16, :cond_8

    .line 1209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-long/2addr v14, v5

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3}, Ljava/lang/RuntimeException;-><init>()V

    const-string v14, "CAR.L"

    invoke-static {v14, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_8
    if-ltz v4, :cond_a

    int-to-long v2, v13

    cmp-long v2, v2, v7

    if-lez v2, :cond_a

    if-lez v4, :cond_9

    .line 1214
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car_service not ready, waited for car service (ms):"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1}, Ljava/lang/RuntimeException;-><init>()V

    const-string v2, "CAR.L"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_9
    return-object v10

    .line 1222
    :cond_a
    :goto_3
    :try_start_2
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    const-wide/16 v2, 0x0

    goto/16 :goto_2

    .line 1224
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 1225
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    const-string v1, "CAR.L"

    const-string v2, "interrupted"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v10
.end method

.method private createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;
    .locals 2

    .line 1663
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const-string v1, "vehicle_map_service"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x10

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x17

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "trust_enroll"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "app_focus"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "car_bugreport"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "android.car.input"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "cluster_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "car_watchdog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1c

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "uxrestriction"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "car_user_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "vehicle_map_subscriber_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "power"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "cabin"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "hvac"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "storage_monitoring"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "car_media"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "car_occupant_zone_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "drivingstate"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "car-service-test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_15
    const-string v0, "package"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_16
    const-string v0, "vendor_extension"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_17
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_18
    const-string v0, "property"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_19
    const-string v0, "diagnostic"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_1a
    const-string v0, "occupant_awareness"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_1b
    const-string v0, "car_navigation_service"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_1c
    const-string v0, "car_bluetooth"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_1d
    const-string v0, "projection"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 1755
    :pswitch_0
    new-instance p1, Landroid/car/input/CarInputManager;

    invoke-direct {p1, p0, p2}, Landroid/car/input/CarInputManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1752
    :pswitch_1
    new-instance p1, Landroid/car/watchdog/CarWatchdogManager;

    invoke-direct {p1, p0, p2}, Landroid/car/watchdog/CarWatchdogManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1749
    :pswitch_2
    new-instance p1, Landroid/car/user/CarUserManager;

    invoke-direct {p1, p0, p2}, Landroid/car/user/CarUserManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1746
    :pswitch_3
    new-instance p1, Landroid/car/CarBugreportManager;

    invoke-direct {p1, p0, p2}, Landroid/car/CarBugreportManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1743
    :pswitch_4
    new-instance p1, Landroid/car/media/CarMediaManager;

    invoke-direct {p1, p0, p2}, Landroid/car/media/CarMediaManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1740
    :pswitch_5
    new-instance p1, Landroid/car/trust/CarTrustAgentEnrollmentManager;

    invoke-direct {p1, p0, p2}, Landroid/car/trust/CarTrustAgentEnrollmentManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1737
    :pswitch_6
    new-instance p1, Landroid/car/settings/CarConfigurationManager;

    invoke-direct {p1, p0, p2}, Landroid/car/settings/CarConfigurationManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1734
    :pswitch_7
    new-instance p1, Landroid/car/occupantawareness/OccupantAwarenessManager;

    invoke-direct {p1, p0, p2}, Landroid/car/occupantawareness/OccupantAwarenessManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1731
    :pswitch_8
    new-instance p1, Landroid/car/drivingstate/CarUxRestrictionsManager;

    invoke-direct {p1, p0, p2}, Landroid/car/drivingstate/CarUxRestrictionsManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1728
    :pswitch_9
    new-instance p1, Landroid/car/drivingstate/CarDrivingStateManager;

    invoke-direct {p1, p0, p2}, Landroid/car/drivingstate/CarDrivingStateManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1725
    :pswitch_a
    new-instance p1, Landroid/car/storagemonitoring/CarStorageMonitoringManager;

    invoke-direct {p1, p0, p2}, Landroid/car/storagemonitoring/CarStorageMonitoringManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1722
    :pswitch_b
    new-instance p1, Landroid/car/CarBluetoothManager;

    invoke-direct {p1, p0, p2}, Landroid/car/CarBluetoothManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1719
    :pswitch_c
    invoke-virtual {p0, v1}, Landroid/car/Car;->getCarManager(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/car/vms/VmsClientManager;

    .line 1718
    invoke-static {p0, p1}, Landroid/car/vms/VmsSubscriberManager;->wrap(Landroid/car/Car;Landroid/car/vms/VmsClientManager;)Landroid/car/vms/VmsSubscriberManager;

    move-result-object p1

    goto/16 :goto_3

    .line 1715
    :pswitch_d
    new-instance p1, Landroid/car/vms/VmsClientManager;

    invoke-direct {p1, p0, p2}, Landroid/car/vms/VmsClientManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1712
    :pswitch_e
    new-instance p1, Landroid/car/test/CarTestManagerBinderWrapper;

    invoke-direct {p1, p0, p2}, Landroid/car/test/CarTestManagerBinderWrapper;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1707
    :pswitch_f
    new-instance p1, Landroid/car/cluster/CarInstrumentClusterManager;

    invoke-direct {p1, p0, p2}, Landroid/car/cluster/CarInstrumentClusterManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1704
    :pswitch_10
    new-instance p1, Landroid/car/hardware/CarVendorExtensionManager;

    invoke-direct {p1, p0, p2}, Landroid/car/hardware/CarVendorExtensionManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1701
    :pswitch_11
    new-instance p1, Landroid/car/hardware/property/CarPropertyManager;

    invoke-static {p2}, Landroid/car/hardware/property/ICarProperty$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/hardware/property/ICarProperty;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Landroid/car/hardware/property/CarPropertyManager;-><init>(Landroid/car/Car;Landroid/car/hardware/property/ICarProperty;)V

    goto/16 :goto_3

    .line 1698
    :pswitch_12
    new-instance p1, Landroid/car/CarProjectionManager;

    invoke-direct {p1, p0, p2}, Landroid/car/CarProjectionManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto/16 :goto_3

    .line 1695
    :pswitch_13
    new-instance p1, Landroid/car/hardware/power/CarPowerManager;

    invoke-direct {p1, p0, p2}, Landroid/car/hardware/power/CarPowerManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1692
    :pswitch_14
    new-instance p1, Landroid/car/hardware/hvac/CarHvacManager;

    invoke-direct {p1, p0, p2}, Landroid/car/hardware/hvac/CarHvacManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1689
    :pswitch_15
    new-instance p1, Landroid/car/diagnostic/CarDiagnosticManager;

    invoke-direct {p1, p0, p2}, Landroid/car/diagnostic/CarDiagnosticManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1686
    :pswitch_16
    new-instance p1, Landroid/car/hardware/cabin/CarCabinManager;

    invoke-direct {p1, p0, p2}, Landroid/car/hardware/cabin/CarCabinManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1683
    :pswitch_17
    new-instance p1, Landroid/car/navigation/CarNavigationStatusManager;

    invoke-direct {p1, p0, p2}, Landroid/car/navigation/CarNavigationStatusManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1680
    :pswitch_18
    new-instance p1, Landroid/car/CarOccupantZoneManager;

    invoke-direct {p1, p0, p2}, Landroid/car/CarOccupantZoneManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1677
    :pswitch_19
    new-instance p1, Landroid/car/content/pm/CarPackageManager;

    invoke-direct {p1, p0, p2}, Landroid/car/content/pm/CarPackageManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1674
    :pswitch_1a
    new-instance p1, Landroid/car/CarAppFocusManager;

    invoke-direct {p1, p0, p2}, Landroid/car/CarAppFocusManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1671
    :pswitch_1b
    new-instance p1, Landroid/car/CarInfoManager;

    invoke-direct {p1, p0, p2}, Landroid/car/CarInfoManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1668
    :pswitch_1c
    new-instance p1, Landroid/car/hardware/CarSensorManager;

    invoke-direct {p1, p0, p2}, Landroid/car/hardware/CarSensorManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    .line 1665
    :pswitch_1d
    new-instance p1, Landroid/car/media/CarAudioManager;

    invoke-direct {p1, p0, p2}, Landroid/car/media/CarAudioManager;-><init>(Landroid/car/Car;Landroid/os/IBinder;)V

    goto :goto_3

    :goto_2
    const/4 v0, 0x0

    .line 1761
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    invoke-interface {v1, p1}, Landroid/car/ICar;->getCarManagerClassForFeature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_1

    .line 1767
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot construct CarManager for service:"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " : no class defined"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CAR.L"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1771
    :cond_1
    invoke-direct {p0, v1, p2}, Landroid/car/Car;->constructCarManager(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;

    move-result-object p1

    :goto_3
    return-object p1

    :catch_0
    move-exception p1

    .line 1763
    invoke-virtual {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        -0x756b35b1 -> :sswitch_1d
        -0x6e917bfd -> :sswitch_1c
        -0x6e7fee2b -> :sswitch_1b
        -0x5d57624d -> :sswitch_1a
        -0x5c432459 -> :sswitch_19
        -0x3b32222b -> :sswitch_18
        -0x35ffac46 -> :sswitch_17
        -0x341b3df8 -> :sswitch_16
        -0x301acbba -> :sswitch_15
        -0x23f279fd -> :sswitch_14
        -0x1a8272d6 -> :sswitch_13
        -0x185b51c7 -> :sswitch_12
        -0x1664dc47 -> :sswitch_11
        -0xf701374 -> :sswitch_10
        0x310db0 -> :sswitch_f
        0x3164ae -> :sswitch_e
        0x58d9bd6 -> :sswitch_d
        0x5a0abe9 -> :sswitch_c
        0x65e8905 -> :sswitch_b
        0x1d05dc14 -> :sswitch_a
        0x3022a0cc -> :sswitch_9
        0x401b9149 -> :sswitch_8
        0x52f29a18 -> :sswitch_7
        0x6201e570 -> :sswitch_6
        0x62822071 -> :sswitch_5
        0x691dedfd -> :sswitch_4
        0x6d19553a -> :sswitch_3
        0x70ba7c6d -> :sswitch_2
        0x733374f6 -> :sswitch_1
        0x77ee823f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static determineEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 1

    if-nez p0, :cond_0

    .line 1309
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    .line 1310
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object p0, v0

    :cond_0
    return-object p0
.end method

.method private static determineMainThreadEventHandler(Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    .line 1303
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 1304
    invoke-virtual {p0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/os/Handler;

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    :goto_0
    return-object p0
.end method

.method private dispatchCarReadyToMainThread(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1260
    iget-object p1, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    const/4 v0, 0x1

    invoke-interface {p1, p0, v0}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_0

    .line 1263
    :cond_0
    iget-object p1, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    new-instance v0, Landroid/car/-$$Lambda$Car$Y2U0t8cCv-IWFLzW1mxSSFa_QVc;

    invoke-direct {v0, p0}, Landroid/car/-$$Lambda$Car$Y2U0t8cCv-IWFLzW1mxSSFa_QVc;-><init>(Landroid/car/Car;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private finishClient()V
    .locals 3

    .line 1608
    iget-object v0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_3

    .line 1611
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_1

    .line 1612
    check-cast v0, Landroid/app/Activity;

    .line 1613
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1614
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Car service crashed, client not handling it, finish Activity, created from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CAR.L"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void

    .line 1620
    :cond_1
    instance-of v1, v0, Landroid/app/Service;

    if-eqz v1, :cond_2

    .line 1621
    check-cast v0, Landroid/app/Service;

    .line 1622
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/app/Service;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/car/Car;->killClient(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 1624
    invoke-direct {p0, v0}, Landroid/car/Car;->killClient(Ljava/lang/String;)V

    :goto_0
    return-void

    .line 1609
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Car service has crashed, null Context"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleCarDisconnectLocked()V
    .locals 2

    .line 1335
    iget v0, p0, Landroid/car/Car;->mConnectionState:I

    if-nez v0, :cond_0

    return-void

    .line 1339
    :cond_0
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1340
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1341
    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    .line 1342
    invoke-direct {p0}, Landroid/car/Car;->tearDownCarManagersLocked()V

    const/4 v1, 0x0

    .line 1343
    iput-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    .line 1344
    iput v0, p0, Landroid/car/Car;->mConnectionState:I

    return-void
.end method

.method private killClient(Ljava/lang/String;)V
    .locals 2

    .line 1629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "**Car service has crashed. Client("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ") is not handling it. Client should use Car.createCar(..., CarServiceLifecycleListener, ...) to handle it properly. Check pritned callstack to check where other version of Car.createCar() was called. Killing the client process**"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Landroid/car/Car;->mConstructionStack:Ljava/lang/Exception;

    const-string v0, "CAR.L"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1634
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    return-void
.end method

.method private synthetic lambda$dispatchCarReadyToMainThread$0()V
    .locals 2

    .line 1264
    iget-object v0, p0, Landroid/car/Car;->mStatusChangeCallback:Landroid/car/Car$CarServiceLifecycleListener;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    return-void
.end method

.method private startCarService()V
    .locals 6

    .line 1794
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.car"

    .line 1795
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.car.ICar"

    .line 1796
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1797
    iget-object v1, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT_OR_SELF:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 1799
    iget-object v1, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v1

    if-nez v0, :cond_1

    .line 1801
    :try_start_0
    iget v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    add-int/2addr v0, v4

    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    int-to-long v2, v0

    const-wide/16 v4, 0x14

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    const-string v0, "CAR.L"

    const-string v2, "cannot bind to car service after max retry"

    .line 1803
    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1806
    :cond_0
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object p0, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 1810
    :cond_1
    iget-object v0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1811
    iget-object v0, p0, Landroid/car/Car;->mMainThreadEventHandler:Landroid/os/Handler;

    iget-object v2, p0, Landroid/car/Car;->mConnectionRetryFailedRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 1812
    iput v0, p0, Landroid/car/Car;->mConnectionRetryCount:I

    .line 1815
    :goto_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private tearDownCarManagersLocked()V
    .locals 2

    .line 1820
    iget-object v0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarManagerBase;

    .line 1821
    invoke-virtual {v1}, Landroid/car/CarManagerBase;->onCarDisconnected()V

    goto :goto_0

    .line 1823
    :cond_0
    iget-object p0, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method


# virtual methods
.method public getCarManager(Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    .line 1400
    iget-object v0, p0, Landroid/car/Car;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1401
    :try_start_0
    iget-object v1, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p0, "CAR.L"

    const-string p1, "getCarManager not working while car service not ready"

    .line 1402
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    monitor-exit v0

    return-object v2

    .line 1405
    :cond_0
    iget-object v1, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/car/CarManagerBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_3

    .line 1408
    :try_start_1
    iget-object v3, p0, Landroid/car/Car;->mService:Landroid/car/ICar;

    invoke-interface {v3, p1}, Landroid/car/ICar;->getCarService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v3, "CAR.L"

    .line 1410
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarManager could not get binder for service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1412
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v2

    .line 1414
    :cond_1
    :try_start_3
    invoke-direct {p0, p1, v3}, Landroid/car/Car;->createCarManagerLocked(Ljava/lang/String;Landroid/os/IBinder;)Landroid/car/CarManagerBase;

    move-result-object v1

    if-nez v1, :cond_2

    const-string v3, "CAR.L"

    .line 1416
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCarManager could not create manager for service:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1418
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    return-object v2

    .line 1420
    :cond_2
    :try_start_5
    iget-object v2, p0, Landroid/car/Car;->mServiceMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1422
    :try_start_6
    invoke-virtual {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    .line 1425
    :cond_3
    :goto_0
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 1580
    iget-object p0, p0, Landroid/car/Car;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getEventHandler()Landroid/os/Handler;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1586
    iget-object p0, p0, Landroid/car/Car;->mEventHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getServiceConnectionListener()Landroid/content/ServiceConnection;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 1386
    iget-object p0, p0, Landroid/car/Car;->mServiceConnectionListener:Landroid/content/ServiceConnection;

    return-object p0
.end method

.method public handleRemoteExceptionFromCarService(Landroid/os/RemoteException;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/os/RemoteException;",
            "TT;)TT;"
        }
    .end annotation

    .line 1592
    invoke-virtual {p0, p1}, Landroid/car/Car;->handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V

    return-object p2
.end method

.method handleRemoteExceptionFromCarService(Landroid/os/RemoteException;)V
    .locals 2

    .line 1598
    instance-of p0, p1, Landroid/os/TransactionTooLargeException;

    const-string v0, "CAR.L"

    if-nez p0, :cond_0

    const-string p0, "Car service has crashed"

    .line 1602
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void

    :cond_0
    const-string p0, "Car service threw TransactionTooLargeException"

    .line 1599
    invoke-static {v0, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1600
    new-instance p0, Landroid/car/CarTransactionException;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Car service threw TransactionTooLargException"

    invoke-direct {p0, p1, v1, v0}, Landroid/car/CarTransactionException;-><init>(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    throw p0
.end method

.method public synthetic lambda$dispatchCarReadyToMainThread$0$Car()V
    .locals 0

    invoke-direct {p0}, Landroid/car/Car;->lambda$dispatchCarReadyToMainThread$0()V

    return-void
.end method
