.class public abstract Lcom/google/android/gcm/GCMBaseIntentService;
.super Landroid/app/IntentService;
.source "GCMBaseIntentService.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOCK:Ljava/lang/Object;

.field private static final MAX_BACKOFF_MS:I

.field private static sCounter:I

.field private static final sRandom:Ljava/util/Random;

.field private static sWakeLock:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final mLogger:Lcom/google/android/gcm/GCMLogger;

.field private final mSenderIds:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 75
    const-class v0, Lcom/google/android/gcm/GCMBaseIntentService;

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 80
    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    .line 82
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    .line 84
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xe10

    .line 85
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    return-void
.end method

.method protected constructor <init>()V
    .locals 2

    const-string v0, "DynamicSenderIds"

    .line 97
    invoke-static {v0}, Lcom/google/android/gcm/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    .line 108
    invoke-direct {p0, p1}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    new-instance v0, Lcom/google/android/gcm/GCMLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GCMBaseIntentService"

    invoke-direct {v0, v2, v1}, Lcom/google/android/gcm/GCMLogger;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    .line 109
    iput-object p2, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object p1, p0, p2

    const/4 p1, 0x2

    const-string p2, "Intent service name: %s"

    .line 110
    invoke-virtual {v0, p1, p2, p0}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs constructor <init>([Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-static {p1}, Lcom/google/android/gcm/GCMBaseIntentService;->getName([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/google/android/gcm/GCMBaseIntentService;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method private static getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GCMIntentService-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    add-int/lit8 p0, p0, 0x1

    sput p0, Lcom/google/android/gcm/GCMBaseIntentService;->sCounter:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getName([Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 119
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 120
    invoke-static {p0}, Lcom/google/android/gcm/GCMBaseIntentService;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 296
    invoke-static {}, Lcom/google/android/gcm/GCMRegistrar;->cancelAppPendingIntent()V

    const-string v0, "registration_id"

    .line 297
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error"

    .line 298
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "unregistered"

    .line 299
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 300
    iget-object v2, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v6, 0x1

    aput-object v1, v4, v6

    const/4 v7, 0x2

    aput-object p2, v4, v7

    const-string v8, "handleRegistration: registrationId = %s, error = %s, unregistered = %s"

    invoke-virtual {v2, v3, v8, v4}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    .line 306
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 307
    invoke-static {p1, v0}, Lcom/google/android/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 308
    invoke-virtual {p0, p1, v0}, Lcom/google/android/gcm/GCMBaseIntentService;->onRegistered(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 315
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 317
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    .line 318
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gcm/GCMBaseIntentService;->onUnregistered(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string p2, "SERVICE_NOT_AVAILABLE"

    .line 324
    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 325
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 327
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getBackoff(Landroid/content/Context;)I

    move-result p2

    .line 328
    div-int/lit8 v0, p2, 0x2

    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sRandom:Ljava/util/Random;

    .line 329
    invoke-virtual {v1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 330
    iget-object p0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    new-array v1, v7, [Ljava/lang/Object;

    .line 332
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    const-string v2, "Scheduling registration retry, backoff = %d (%d)"

    .line 330
    invoke-virtual {p0, v3, v2, v1}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 333
    new-instance p0, Landroid/content/Intent;

    const-string v1, "com.google.android.gcm.intent.RETRY"

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    invoke-static {p1, v5, p0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    const-string v1, "alarm"

    .line 339
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    .line 341
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v8, v0

    add-long/2addr v4, v8

    .line 340
    invoke-virtual {v1, v3, v4, v5, p0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 344
    sget p0, Lcom/google/android/gcm/GCMBaseIntentService;->MAX_BACKOFF_MS:I

    if-ge p2, p0, :cond_4

    mul-int/2addr p2, v7

    .line 345
    invoke-static {p1, p2}, Lcom/google/android/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object p0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    new-array p1, v5, [Ljava/lang/Object;

    const-string p2, "Not retrying failed operation"

    invoke-virtual {p0, v7, p2, p1}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_3
    invoke-virtual {p0, p1, v1}, Lcom/google/android/gcm/GCMBaseIntentService;->onError(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method static runIntentInService(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)V
    .locals 4

    .line 281
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_0
    sget-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "power"

    .line 285
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/4 v2, 0x1

    const-string v3, "GCM_LIB"

    .line 286
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 289
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 290
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 291
    invoke-virtual {p1, p0, p2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void

    :catchall_0
    move-exception p0

    .line 289
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method protected getSenderIds(Landroid/content/Context;)[Ljava/lang/String;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mSenderIds:[Ljava/lang/String;

    if-eqz p0, :cond_0

    return-object p0

    .line 133
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "sender id not set on constructor"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onDeletedMessages(Landroid/content/Context;I)V
    .locals 0

    return-void
.end method

.method protected abstract onError(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method public final onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .line 201
    sget-object v0, Lcom/google/android/gcm/GCMBaseIntentService;->LOCK:Ljava/lang/Object;

    const/4 v1, 0x6

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 202
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.c2dm.intent.REGISTRATION"

    .line 203
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 204
    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->setRetryBroadcastReceiver(Landroid/content/Context;)V

    .line 205
    invoke-direct {p0, v3, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->handleRegistration(Landroid/content/Context;Landroid/content/Intent;)V

    goto/16 :goto_2

    :cond_0
    const-string v5, "com.google.android.c2dm.intent.RECEIVE"

    .line 206
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    const-string v4, "message_type"

    .line 209
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "deleted_messages"

    .line 211
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v4, "total_deleted"

    .line 213
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz p1, :cond_8

    .line 216
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 217
    iget-object v5, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const/4 v7, 0x2

    const-string v8, "Received notification for %d deletedmessages"

    new-array v9, v6, [Ljava/lang/Object;

    .line 219
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 217
    invoke-virtual {v5, v7, v8, v9}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 220
    invoke-virtual {p0, v3, v4}, Lcom/google/android/gcm/GCMBaseIntentService;->onDeletedMessages(Landroid/content/Context;I)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/16 :goto_2

    .line 222
    :catch_0
    :try_start_2
    iget-object v3, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string v4, "GCM returned invalid number of deleted messages (%d)"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 229
    :cond_1
    iget-object p1, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string v3, "Received unknown special message: %s"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v4, v5, v2

    invoke-virtual {p1, v1, v3, v5}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 234
    :cond_2
    invoke-virtual {p0, v3, p1}, Lcom/google/android/gcm/GCMBaseIntentService;->onMessage(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_2

    :cond_3
    const-string v5, "com.google.android.gcm.intent.RETRY"

    .line 236
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 237
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 239
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    goto :goto_0

    .line 246
    :cond_4
    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->isRegistered(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 247
    invoke-static {v3}, Lcom/google/android/gcm/GCMRegistrar;->internalUnregister(Landroid/content/Context;)V

    goto :goto_2

    .line 249
    :cond_5
    invoke-virtual {p0, v3}, Lcom/google/android/gcm/GCMBaseIntentService;->getSenderIds(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-static {v3, p1}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    goto :goto_2

    .line 240
    :cond_6
    :goto_0
    iget-object v3, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string v4, "Ignoring retry intent from another package (%s)"

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v2

    invoke-virtual {v3, v1, v4, v5}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 260
    monitor-enter v0

    .line 262
    :try_start_3
    sget-object p1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_7

    .line 263
    sget-object p0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 266
    :cond_7
    iget-object p0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string p1, "Wakelock reference is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    .line 260
    :cond_8
    :goto_2
    monitor-enter v0

    .line 262
    :try_start_4
    sget-object p1, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz p1, :cond_9

    .line 263
    sget-object p0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_3

    .line 266
    :cond_9
    iget-object p0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string p1, "Wakelock reference is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, p1, v2}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p1

    .line 260
    monitor-enter v0

    .line 262
    :try_start_5
    sget-object v3, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v3, :cond_a

    .line 263
    sget-object p0, Lcom/google/android/gcm/GCMBaseIntentService;->sWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_4

    .line 266
    :cond_a
    iget-object p0, p0, Lcom/google/android/gcm/GCMBaseIntentService;->mLogger:Lcom/google/android/gcm/GCMLogger;

    const-string v3, "Wakelock reference is null"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, v1, v3, v2}, Lcom/google/android/gcm/GCMLogger;->log(ILjava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 269
    throw p1

    :catchall_3
    move-exception p0

    .line 268
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method protected abstract onMessage(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected onRecoverableError(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected abstract onRegistered(Landroid/content/Context;Ljava/lang/String;)V
.end method

.method protected abstract onUnregistered(Landroid/content/Context;Ljava/lang/String;)V
.end method
