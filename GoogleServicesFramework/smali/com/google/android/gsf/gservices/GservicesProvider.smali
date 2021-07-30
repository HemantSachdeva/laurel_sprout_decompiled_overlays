.class public Lcom/google/android/gsf/gservices/GservicesProvider;
.super Landroid/content/ContentProvider;
.source "GservicesProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;,
        Lcom/google/android/gsf/gservices/GservicesProvider$OverrideReceiver;
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String;

.field private static final DB_COLUMNS:[Ljava/lang/String;

.field private static final HEX:[C

.field public static final UPDATE_OVERRIDE_URI:Landroid/net/Uri;

.field private static final UTF_8:Ljava/nio/charset/Charset;


# instance fields
.field private mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

.field private mPushToSecure:Z

.field private mPushToSystem:Z

.field private mValues:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "content://com.google.android.gsf.gservices/main"

    .line 65
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/main_diff"

    .line 67
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    const-string v0, "content://com.google.android.gsf.gservices/override"

    .line 69
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UPDATE_OVERRIDE_URI:Landroid/net/Uri;

    const-string v0, "UTF-8"

    .line 71
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->UTF_8:Ljava/nio/charset/Charset;

    const/16 v0, 0x10

    new-array v0, v0, [C

    .line 72
    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->HEX:[C

    const-string v0, "key"

    const-string v1, "value"

    .line 157
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    const-string v0, "name"

    .line 163
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 84
    iput-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    .line 85
    iput-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    return-void
.end method

.method private computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V
    .locals 13

    .line 450
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    :try_start_0
    const-string v1, "SHA-1"

    .line 454
    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    new-instance v2, Ljava/util/TreeMap;

    invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V

    .line 462
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_1
    const-string v3, "SELECT name, value FROM main ORDER BY name"

    const/4 v4, 0x0

    .line 464
    invoke-virtual {v0, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object v5, v4

    .line 466
    :goto_0
    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    .line 467
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 468
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v9, "digest"

    .line 469
    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v5, v7

    goto :goto_0

    .line 475
    :cond_0
    sget-object v9, Lcom/google/android/gsf/gservices/GservicesProvider;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v6, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 476
    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update(B)V

    .line 477
    sget-object v9, Lcom/google/android/gsf/gservices/GservicesProvider;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v7, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/security/MessageDigest;->update([B)V

    .line 478
    invoke-virtual {v1, v8}, Ljava/security/MessageDigest;->update(B)V

    .line 480
    invoke-virtual {v2, v6, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    goto :goto_0

    .line 483
    :cond_1
    :try_start_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 486
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "1-"

    .line 487
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    array-length v6, v1

    move v9, v8

    :goto_1
    if-ge v9, v6, :cond_2

    aget-byte v10, v1, v9

    .line 489
    sget-object v11, Lcom/google/android/gsf/gservices/GservicesProvider;->HEX:[C

    shr-int/lit8 v12, v10, 0x4

    and-int/lit8 v12, v12, 0xf

    aget-char v11, v11, v12

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 490
    sget-object v11, Lcom/google/android/gsf/gservices/GservicesProvider;->HEX:[C

    and-int/lit8 v10, v10, 0xf

    aget-char v10, v11, v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 492
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "digest"

    .line 494
    invoke-virtual {v2, v3, v1}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 496
    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "INSERT OR REPLACE INTO main (name, value) VALUES (?, ?)"

    .line 497
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    const-string v5, "digest"

    .line 500
    invoke-virtual {v3, v7, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v5, 0x2

    .line 501
    invoke-virtual {v3, v5, v1}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 502
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 504
    :try_start_5
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 505
    throw p0

    .line 516
    :cond_3
    :goto_2
    iget-boolean p1, p1, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    if-eqz p1, :cond_5

    const-string p1, "SELECT name, value FROM overrides"

    .line 517
    invoke-virtual {v0, p1, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 519
    :goto_3
    :try_start_6
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 520
    invoke-interface {p1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-interface {p1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 522
    invoke-virtual {v2, v1, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_3

    .line 525
    :cond_4
    :try_start_7
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    goto :goto_4

    :catchall_1
    move-exception p0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 526
    throw p0

    .line 529
    :cond_5
    :goto_4
    iget-object p1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 530
    :try_start_8
    iput-object v2, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    .line 531
    monitor-exit p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 533
    :try_start_9
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_2
    move-exception p0

    .line 531
    :try_start_a
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    throw p0

    :catchall_3
    move-exception p0

    .line 483
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 484
    throw p0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p0

    .line 535
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 536
    throw p0

    :catch_0
    move-exception p0

    .line 456
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method static getPrefixLimit(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 262
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 264
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const v2, 0xffff

    if-ge v1, v2, :cond_0

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    int-to-char p0, v1

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 8

    .line 273
    iget-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 274
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p2, v3

    .line 275
    invoke-static {v4}, Lcom/google/android/gsf/gservices/GservicesProvider;->getPrefixLimit(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 278
    iget-object v6, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    invoke-virtual {v6, v4, v5}, Ljava/util/TreeMap;->subMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    goto :goto_1

    .line 280
    :cond_0
    iget-object v5, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    invoke-virtual {v5, v4}, Ljava/util/TreeMap;->tailMap(Ljava/lang/Object;)Ljava/util/SortedMap;

    move-result-object v4

    .line 282
    :goto_1
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/String;

    .line 283
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    aput-object v7, v6, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v6, v7

    invoke-virtual {p1, v6}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private querySimple(Landroid/database/MatrixCursor;[Ljava/lang/String;)V
    .locals 7

    .line 249
    iget-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValuesLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, p2, v3

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    aput-object v4, v5, v2

    .line 251
    iget-object v6, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    invoke-virtual {v6, v4}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v6, 0x1

    aput-object v4, v5, v6

    invoke-virtual {p1, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 253
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private syncAllSettings()V
    .locals 3

    .line 546
    iget-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    if-eqz v0, :cond_0

    .line 547
    sget-object v0, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "system:"

    const-string v2, "saved_system"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    :cond_0
    iget-boolean v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    if-eqz v0, :cond_1

    .line 550
    sget-object v0, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "secure:"

    const-string v2, "saved_secure"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 552
    sget-object v0, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "global:"

    const-string v2, "saved_global"

    invoke-direct {p0, v0, v1, v2}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private syncSettings(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 566
    iget-object v3, v0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 567
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 569
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 571
    new-instance v6, Landroid/database/MatrixCursor;

    sget-object v7, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {v6, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    const/4 v11, 0x1

    new-array v7, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object p2, v7, v12

    .line 572
    invoke-direct {v0, v6, v7}, Lcom/google/android/gsf/gservices/GservicesProvider;->queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    .line 574
    :goto_0
    :try_start_0
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {v6, v12}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v11}, Landroid/database/MatrixCursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto :goto_0

    .line 578
    :cond_0
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->close()V

    .line 584
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    new-array v6, v11, [Ljava/lang/String;

    .line 587
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SELECT name, value FROM "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x0

    invoke-virtual {v3, v7, v13}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    move-object v8, v13

    .line 589
    :goto_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v14, "name"

    const-string v15, "value"

    if-eqz v9, :cond_4

    .line 590
    :try_start_2
    invoke-interface {v7, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 591
    invoke-interface {v7, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 592
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 594
    invoke-virtual {v0, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v0, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 596
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 597
    invoke-virtual {v5, v9}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_1
    if-nez v8, :cond_2

    .line 602
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "DELETE FROM "

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " WHERE name = ?"

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v8

    :cond_2
    if-nez v10, :cond_3

    aput-object v9, v6, v12

    const-string v10, "name=?"

    .line 607
    invoke-virtual {v4, v1, v10, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :goto_2
    const/4 v10, 0x1

    goto :goto_3

    .line 609
    :cond_3
    invoke-virtual {v0, v14, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, v15, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_2

    .line 613
    :goto_3
    invoke-virtual {v8, v10, v9}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 614
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_4
    const/4 v11, 0x1

    const/4 v13, 0x0

    goto :goto_1

    .line 618
    :cond_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz v8, :cond_5

    .line 620
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 628
    :cond_5
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9

    .line 629
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "INSERT OR REPLACE INTO "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (name, value) VALUES (?, ?)"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    .line 631
    filled-new-array {v15}, [Ljava/lang/String;

    move-result-object v3

    .line 633
    :try_start_3
    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 634
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    move-object v13, v6

    check-cast v13, Ljava/lang/String;

    .line 635
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 636
    invoke-static {v1, v13}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v17, 0x0

    move-object v5, v4

    move-object v7, v3

    move-object/from16 v18, v10

    move-object/from16 v10, v17

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 640
    :try_start_4
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 641
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :cond_6
    const/4 v6, 0x0

    .line 644
    :goto_6
    :try_start_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    const/4 v5, 0x1

    .line 647
    invoke-virtual {v2, v5, v13}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v7, 0x2

    if-nez v6, :cond_7

    .line 649
    invoke-virtual {v2, v7}, Landroid/database/sqlite/SQLiteStatement;->bindNull(I)V

    goto :goto_7

    .line 651
    :cond_7
    invoke-virtual {v2, v7, v6}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 653
    :goto_7
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    .line 654
    invoke-virtual {v0, v14, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v6, v18

    .line 655
    invoke-virtual {v0, v15, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 656
    invoke-virtual {v4, v1, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_5

    :catchall_0
    move-exception v0

    .line 644
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 645
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 659
    :cond_8
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_8

    :catchall_1
    move-exception v0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 660
    throw v0

    :cond_9
    :goto_8
    return-void

    :catchall_2
    move-exception v0

    .line 618
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz v8, :cond_a

    .line 620
    invoke-virtual {v8}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 622
    :cond_a
    throw v0

    :catchall_3
    move-exception v0

    .line 578
    invoke-virtual {v6}, Landroid/database/MatrixCursor;->close()V

    .line 579
    throw v0
.end method

.method private updateMain(Landroid/content/ContentValues;)V
    .locals 6

    .line 409
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 411
    iget-object v1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 412
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    :try_start_0
    const-string v2, "DELETE FROM main"

    .line 414
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const-string v2, "INSERT INTO main (name, value) VALUES (?, ?)"

    .line 416
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 420
    :try_start_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 421
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 422
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_0

    const/4 v5, 0x1

    .line 424
    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v4, 0x2

    .line 425
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 426
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 430
    :cond_1
    :try_start_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 431
    throw p0

    .line 433
    :cond_2
    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 435
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 437
    iget-object p1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, p1}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 438
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 439
    sget-object p0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x0

    const v1, 0x8000

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    const-string p0, "GservicesProvider"

    const-string p1, "main update completed"

    .line 440
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_1
    move-exception p0

    .line 435
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 436
    throw p0
.end method

.method private updateMainDiff(Landroid/content/ContentValues;)V
    .locals 6

    .line 371
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 372
    iget-object v1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    const-string v2, "INSERT OR REPLACE INTO main (name, value) VALUES (?, ?)"

    .line 373
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const-string v3, "DELETE FROM main WHERE name = ?"

    .line 376
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 381
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 382
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 383
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v5, 0x1

    if-nez v3, :cond_0

    .line 385
    invoke-virtual {v1, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 386
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 388
    :cond_0
    invoke-virtual {v2, v5, v4}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v4, 0x2

    .line 389
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 390
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 394
    :cond_1
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 395
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 397
    iget-object p1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, p1}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 398
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 400
    sget-object p0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x0

    const v1, 0x8000

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    const-string p0, "GservicesProvider"

    const-string p1, "main difference update completed"

    .line 401
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 394
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 395
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 396
    throw p0
.end method

.method private updateOverride(Landroid/content/ContentValues;)V
    .locals 6

    .line 329
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 330
    iget-object v1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    if-nez p1, :cond_0

    const-string p1, "DELETE FROM overrides"

    .line 332
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    goto :goto_1

    :cond_0
    const-string v2, "INSERT OR REPLACE INTO overrides (name, value) VALUES (?, ?)"

    .line 335
    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v2

    const-string v3, "DELETE FROM overrides WHERE name = ?"

    .line 338
    invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    .line 343
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 344
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 345
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_1

    .line 347
    invoke-virtual {v1, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 348
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->execute()V

    goto :goto_0

    .line 350
    :cond_1
    invoke-virtual {v2, v4, v5}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v4, 0x2

    .line 351
    invoke-virtual {v2, v4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    .line 352
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->execute()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 357
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 359
    iget-object p1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    iput-boolean v4, p1, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;->mHasOverrides:Z

    .line 362
    :goto_1
    iget-object p1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {p0, p1}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    .line 364
    invoke-direct {p0}, Lcom/google/android/gsf/gservices/GservicesProvider;->syncAllSettings()V

    .line 366
    sget-object p0, Lcom/google/android/gsf/Gservices;->CONTENT_URI:Landroid/net/Uri;

    const/4 p1, 0x0

    const v1, 0x8000

    invoke-virtual {v0, p0, p1, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;I)V

    const-string p0, "GservicesProvider"

    const-string p1, "override update completed"

    .line 367
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception p0

    .line 356
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 357
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 358
    throw p0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 301
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 10

    .line 205
    new-instance p1, Lcom/android/internal/util/IndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 207
    iget-object p0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 210
    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string p2, "userdebug"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 p2, 0x0

    const/4 p3, 0x1

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 211
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SELECT "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, p3

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " FROM "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "main"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " WHERE "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=\'android_id\'"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 213
    invoke-virtual {v0, p0}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object p0

    .line 215
    :try_start_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForString()Ljava/lang/String;

    move-result-object v1

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AndroidId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 216
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    :try_start_1
    const-string v1, "AndroidId not found."

    .line 219
    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 221
    :goto_0
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    :cond_1
    const-string p0, "Gservices overrides:"

    .line 226
    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v1, 0x0

    .line 229
    sget-object v3, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v2, "overrides"

    invoke-virtual/range {v0 .. v9}, Landroid/database/sqlite/SQLiteDatabase;->query(ZLjava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 232
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 233
    :goto_1
    invoke-interface {p0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_3

    .line 234
    sget-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p3

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 235
    sget-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_2

    .line 238
    :cond_2
    sget-object v0, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/gservices/GservicesProvider;->DB_COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, p3

    .line 239
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 241
    :goto_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 242
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    goto :goto_1

    .line 244
    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    :cond_4
    return-void

    .line 221
    :goto_3
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteStatement;->close()V

    .line 222
    throw p1
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 296
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onCreate()Z
    .locals 6

    .line 170
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 172
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    .line 173
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    const-string v3, "android.permission.WRITE_SETTINGS"

    .line 175
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    move v3, v5

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    const-string v3, "android.permission.WRITE_SECURE_SETTINGS"

    .line 178
    invoke-virtual {v0, v3, v2, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v1

    if-nez v1, :cond_1

    move v4, v5

    :cond_1
    iput-boolean v4, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Gservices pushing to system: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "; secure/global: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mPushToSecure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GservicesProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    new-instance v1, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mDbHelper:Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/google/android/gsf/gservices/GservicesProvider;->mValues:Ljava/util/TreeMap;

    .line 185
    invoke-direct {p0, v1}, Lcom/google/android/gsf/gservices/GservicesProvider;->computeLocalDigestAndUpdateValues(Lcom/google/android/gsf/gservices/GservicesProvider$DatabaseHelper;)V

    return v5
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 192
    new-instance p2, Landroid/database/MatrixCursor;

    sget-object p3, Lcom/google/android/gsf/gservices/GservicesProvider;->COLUMNS:[Ljava/lang/String;

    invoke-direct {p2, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-nez p4, :cond_0

    return-object p2

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_1

    .line 196
    invoke-direct {p0, p2, p4}, Lcom/google/android/gsf/gservices/GservicesProvider;->querySimple(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    goto :goto_0

    .line 197
    :cond_1
    sget-object p3, Lcom/google/android/gsf/Gservices;->CONTENT_PREFIX_URI:Landroid/net/Uri;

    invoke-virtual {p3}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 198
    invoke-direct {p0, p2, p4}, Lcom/google/android/gsf/gservices/GservicesProvider;->queryPrefix(Landroid/database/MatrixCursor;[Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 306
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p3

    const-string p4, "main"

    .line 307
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    .line 308
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateMain(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_0
    const-string p4, "main_diff"

    .line 309
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 310
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateMainDiff(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    const-string p4, "override"

    .line 311
    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 312
    invoke-direct {p0, p2}, Lcom/google/android/gsf/gservices/GservicesProvider;->updateOverride(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 314
    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "bad Gservices update URI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GservicesProvider"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.google.gservices.intent.action.GSERVICES_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 p0, 0x0

    return p0
.end method
