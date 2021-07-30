.class public final Lcom/google/android/gcm/GCMRegistrar;
.super Ljava/lang/Object;
.source "GCMRegistrar.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static sAppPendingIntent:Landroid/app/PendingIntent;

.field private static sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

.field private static sRetryReceiverClassName:Ljava/lang/String;

.field private static sRetryReceiverContext:Landroid/content/Context;


# direct methods
.method static declared-synchronized cancelAppPendingIntent()V
    .locals 2

    const-class v0, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v0

    .line 289
    :try_start_0
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 290
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->cancel()V

    const/4 v1, 0x0

    .line 291
    sput-object v1, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 390
    invoke-static {p0, v0, v1, v2}, Lcom/google/android/gcm/GCMRegistrar;->setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V

    const-string v0, ""

    .line 391
    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getAppVersion(Landroid/content/Context;)I
    .locals 3

    .line 497
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 498
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 499
    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 502
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Coult not get package name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getBackoff(Landroid/content/Context;)I
    .locals 2

    .line 525
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "backoff_ms"

    const/16 v1, 0xbb8

    .line 526
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method static varargs getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_1

    .line 262
    array-length v0, p0

    if-eqz v0, :cond_1

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v1, p0, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 266
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    const/16 v2, 0x2c

    .line 267
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 269
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 263
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No senderIds"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "com.google.android.gcm"

    const/4 v1, 0x0

    .line 546
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static getRegistrationId(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 358
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "regId"

    const-string v2, ""

    .line 359
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "appVersion"

    const/high16 v4, -0x80000000

    .line 362
    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 363
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    if-eq v0, v4, :cond_0

    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 366
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v0

    const-string v0, "App version changed from %d to %d;resetting registration id"

    .line 365
    invoke-static {p0, v1, v0, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 367
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->clearRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    return-object v2
.end method

.method static varargs internalRegister(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 3

    .line 231
    invoke-static {p1}, Lcom/google/android/gcm/GCMRegistrar;->getFlatSenderIds([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "Registering app for senders %s"

    .line 232
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 234
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.REGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gsf"

    .line 235
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 236
    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    const-string v1, "sender"

    .line 237
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method static internalUnregister(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const-string v2, "Unregistering app"

    .line 254
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 255
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.c2dm.intent.UNREGISTER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.google.android.gsf"

    .line 256
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V

    .line 258
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static isRegistered(Landroid/content/Context;)Z
    .locals 0

    .line 378
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getRegistrationId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static varargs log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    const-string v0, "GCMRegistrar"

    .line 559
    invoke-static {v0, p1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 560
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 561
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]: "

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, v0, p0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public static varargs register(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 226
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->resetBackoff(Landroid/content/Context;)V

    .line 227
    invoke-static {p0, p1}, Lcom/google/android/gcm/GCMRegistrar;->internalRegister(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method static resetBackoff(Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x2

    const-string v2, "Resetting backoff"

    .line 514
    invoke-static {p0, v1, v2, v0}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0xbb8

    .line 515
    invoke-static {p0, v0}, Lcom/google/android/gcm/GCMRegistrar;->setBackoff(Landroid/content/Context;I)V

    return-void
.end method

.method static setBackoff(Landroid/content/Context;I)V
    .locals 1

    .line 539
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 540
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "backoff_ms"

    .line 541
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 542
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private static declared-synchronized setPackageNameExtra(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const-class v0, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v0

    .line 297
    :try_start_0
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_0

    const/4 v1, 0x2

    const-string v2, "Creating pending intent to get package name"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    .line 298
    invoke-static {p0, v1, v2, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 300
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    invoke-static {p0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    sput-object p0, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    :cond_0
    const-string p0, "app"

    .line 303
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sAppPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private static setRegisteredOnServer(Landroid/content/Context;Ljava/lang/Boolean;J)V
    .locals 6

    .line 424
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 425
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-string v5, "onServer"

    invoke-interface {v0, v5, v4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    new-array v4, v3, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 428
    new-instance p1, Ljava/sql/Timestamp;

    invoke-direct {p1, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object p1, v4, v2

    const-string p1, "Setting registeredOnServer flag as %b until %s"

    invoke-static {p0, v3, p1, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 432
    new-instance v2, Ljava/sql/Timestamp;

    invoke-direct {v2, p2, p3}, Ljava/sql/Timestamp;-><init>(J)V

    aput-object v2, p1, v1

    const-string v1, "Setting registeredOnServer expiration to %s"

    invoke-static {p0, v3, v1, p1}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const-string p0, "onServerExpirationTime"

    .line 436
    invoke-interface {v0, p0, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 437
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method static setRegistrationId(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 401
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getGCMPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "regId"

    const-string v2, ""

    .line 402
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 403
    invoke-static {p0}, Lcom/google/android/gcm/GCMRegistrar;->getAppVersion(Landroid/content/Context;)I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 404
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const/4 v5, 0x2

    const-string v6, "Saving regId on app version %d"

    invoke-static {p0, v5, v6, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 405
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    .line 406
    invoke-interface {p0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string p1, "appVersion"

    .line 407
    invoke-interface {p0, p1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 408
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-object v2
.end method

.method static declared-synchronized setRetryBroadcastReceiver(Landroid/content/Context;)V
    .locals 8

    const-class v0, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v0

    .line 311
    :try_start_0
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    if-nez v1, :cond_1

    .line 312
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    const/4 v2, 0x2

    const/4 v3, 0x6

    const/4 v4, 0x0

    if-nez v1, :cond_0

    const-string v1, "internal error: retry receiver class not set yet"

    new-array v5, v4, [Ljava/lang/Object;

    .line 314
    invoke-static {p0, v3, v1, v5}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 316
    new-instance v1, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v1}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 320
    :cond_0
    :try_start_1
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 321
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gcm/GCMBroadcastReceiver;

    sput-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v1, "Could not create instance of %s. Using %s directly."

    new-array v5, v2, [Ljava/lang/Object;

    .line 323
    sget-object v6, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;

    aput-object v6, v5, v4

    const/4 v6, 0x1

    const-class v7, Lcom/google/android/gcm/GCMBroadcastReceiver;

    .line 325
    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    .line 323
    invoke-static {p0, v3, v1, v5}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 326
    new-instance v1, Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-direct {v1}, Lcom/google/android/gcm/GCMBroadcastReceiver;-><init>()V

    sput-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    .line 329
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 330
    new-instance v3, Landroid/content/IntentFilter;

    const-string v5, "com.google.android.gcm.intent.RETRY"

    invoke-direct {v3, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 332
    invoke-virtual {v3, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    const-string v1, "Registering retry receiver"

    new-array v4, v4, [Ljava/lang/Object;

    .line 333
    invoke-static {p0, v2, v1, v4}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 334
    sput-object p0, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverContext:Landroid/content/Context;

    .line 335
    sget-object v1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiver:Lcom/google/android/gcm/GCMBroadcastReceiver;

    invoke-virtual {p0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 337
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static declared-synchronized setRetryReceiverClassName(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v0, Lcom/google/android/gcm/GCMRegistrar;

    monitor-enter v0

    const/4 v1, 0x2

    :try_start_0
    const-string v2, "Setting the name of retry receiver class to %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 344
    invoke-static {p0, v1, v2, v3}, Lcom/google/android/gcm/GCMRegistrar;->log(Landroid/content/Context;ILjava/lang/String;[Ljava/lang/Object;)V

    .line 346
    sput-object p1, Lcom/google/android/gcm/GCMRegistrar;->sRetryReceiverClassName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 347
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
