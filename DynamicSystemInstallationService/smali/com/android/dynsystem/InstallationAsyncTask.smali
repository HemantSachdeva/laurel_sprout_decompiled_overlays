.class Lcom/android/dynsystem/InstallationAsyncTask;
.super Landroid/os/AsyncTask;
.source "InstallationAsyncTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;,
        Lcom/android/dynsystem/InstallationAsyncTask$Progress;,
        Lcom/android/dynsystem/InstallationAsyncTask$PublicKeyException;,
        Lcom/android/dynsystem/InstallationAsyncTask$KeyRevokedException;,
        Lcom/android/dynsystem/InstallationAsyncTask$RevocationListFetchException;,
        Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;,
        Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedFormatException;,
        Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Lcom/android/dynsystem/InstallationAsyncTask$Progress;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_PROGRESS_TO_PUBLISH:J = 0x8000000L

.field private static final READ_BUFFER_SIZE:I = 0x2000

.field static final RESULT_CANCELLED:I = 0x2

.field static final RESULT_ERROR_EXCEPTION:I = 0x6

.field static final RESULT_ERROR_IO:I = 0x3

.field static final RESULT_ERROR_UNSUPPORTED_FORMAT:I = 0x5

.field static final RESULT_ERROR_UNSUPPORTED_URL:I = 0x4

.field static final RESULT_OK:I = 0x1

.field static final RESULT_UNSET:I = 0x0

.field private static final TAG:Ljava/lang/String; = "InstallationAsyncTask"

.field private static final UNSUPPORTED_PARTITIONS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDsuSlot:Ljava/lang/String;

.field private final mDynSystem:Landroid/os/image/DynamicSystemManager;

.field private mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

.field private mIsCompleted:Z

.field private final mIsDeviceBootloaderUnlocked:Z

.field private final mIsNetworkUrl:Z

.field private mIsZip:Z

.field private mKeyRevocationList:Lcom/android/dynsystem/KeyRevocationList;

.field private final mListener:Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;

.field private final mPublicKey:Ljava/lang/String;

.field private mStream:Ljava/io/InputStream;

.field private final mSystemSize:J

.field private final mUrl:Ljava/lang/String;

.field private final mUserdataSize:J

.field private mZipFile:Ljava/util/zip/ZipFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 53
    const-string v0, "vbmeta"

    const-string v1, "boot"

    const-string v2, "userdata"

    const-string v3, "dtbo"

    const-string v4, "super_empty"

    const-string v5, "system_other"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/dynsystem/InstallationAsyncTask;->UNSUPPORTED_PARTITIONS:Ljava/util/List;

    .line 53
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/content/Context;Landroid/os/image/DynamicSystemManager;Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "dsuSlot"    # Ljava/lang/String;
    .param p3, "publicKey"    # Ljava/lang/String;
    .param p4, "systemSize"    # J
    .param p6, "userdataSize"    # J
    .param p8, "context"    # Landroid/content/Context;
    .param p9, "dynSystem"    # Landroid/os/image/DynamicSystemManager;
    .param p10, "listener"    # Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;

    .line 155
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    .line 157
    iput-object p2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDsuSlot:Ljava/lang/String;

    .line 158
    iput-object p3, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mPublicKey:Ljava/lang/String;

    .line 159
    iput-wide p4, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mSystemSize:J

    .line 160
    iput-wide p6, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUserdataSize:J

    .line 161
    iput-object p8, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mContext:Landroid/content/Context;

    .line 162
    iput-object p9, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    .line 163
    iput-object p10, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mListener:Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;

    .line 164
    invoke-static {p1}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsNetworkUrl:Z

    .line 165
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mContext:Landroid/content/Context;

    .line 167
    const-string v1, "persistent_data_block"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 168
    .local v0, "pdbManager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/service/persistentdata/PersistentDataBlockManager;->getFlashLockState()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsDeviceBootloaderUnlocked:Z

    .line 172
    return-void
.end method

.method private close()V
    .locals 2

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 519
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 520
    iput-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mZipFile:Ljava/util/zip/ZipFile;

    if-eqz v0, :cond_1

    .line 523
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 524
    iput-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mZipFile:Ljava/util/zip/ZipFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 528
    :cond_1
    goto :goto_0

    .line 526
    :catch_0
    move-exception v0

    .line 529
    :goto_0
    return-void
.end method

.method private imageValidationThrowOrWarning(Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;)V
    .locals 2
    .param p1, "e"    # Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 298
    iget-boolean v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsDeviceBootloaderUnlocked:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsNetworkUrl:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    throw p1

    .line 301
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationAsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void
.end method

.method private installImage(Ljava/lang/String;JLjava/io/InputStream;I)V
    .locals 23
    .param p1, "partitionName"    # Ljava/lang/String;
    .param p2, "uncompressedSize"    # J
    .param p4, "is"    # Ljava/io/InputStream;
    .param p5, "numInstalledPartitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 427
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-wide/from16 v10, p2

    new-instance v0, Lcom/android/dynsystem/SparseInputStream;

    new-instance v1, Ljava/io/BufferedInputStream;

    move-object/from16 v12, p4

    invoke-direct {v1, v12}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/android/dynsystem/SparseInputStream;-><init>(Ljava/io/BufferedInputStream;)V

    move-object v13, v0

    .line 429
    .local v13, "sis":Lcom/android/dynsystem/SparseInputStream;
    invoke-virtual {v13}, Lcom/android/dynsystem/SparseInputStream;->getUnsparseSize()J

    move-result-wide v14

    .line 433
    .local v14, "unsparseSize":J
    const-wide/16 v0, -0x1

    cmp-long v2, v14, v0

    const-string v3, "InstallationAsyncTask"

    if-eqz v2, :cond_0

    .line 434
    move-wide v0, v14

    .line 435
    .local v0, "partitionSize":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is sparse, raw size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v0

    goto :goto_0

    .line 436
    .end local v0    # "partitionSize":J
    :cond_0
    cmp-long v0, v10, v0

    if-eqz v0, :cond_a

    .line 437
    move-wide/from16 v0, p2

    .line 438
    .restart local v0    # "partitionSize":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is already unsparse, raw size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v5, v0

    .line 443
    .end local v0    # "partitionSize":J
    .local v5, "partitionSize":J
    :goto_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/dynsystem/-$$Lambda$InstallationAsyncTask$27PPoYGVZqEiUVm9uZj5ZPBHStc;

    invoke-direct {v1, v8, v9, v5, v6}, Lcom/android/dynsystem/-$$Lambda$InstallationAsyncTask$27PPoYGVZqEiUVm9uZj5ZPBHStc;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;J)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    move-object/from16 v16, v0

    .line 448
    .local v16, "thread":Ljava/lang/Thread;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start creating partition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->start()V

    .line 451
    :goto_1
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 452
    invoke-virtual/range {p0 .. p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 453
    return-void

    .line 456
    :cond_1
    const-wide/16 v0, 0xa

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object v0, v8, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    if-eqz v0, :cond_9

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start installing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    new-instance v0, Landroid/os/MemoryFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dsu_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v7, 0x2000

    invoke-direct {v0, v1, v7}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    move-object v3, v0

    .line 467
    .local v3, "memoryFile":Landroid/os/MemoryFile;
    new-instance v0, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v3}, Landroid/os/MemoryFile;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/ParcelFileDescriptor;-><init>(Ljava/io/FileDescriptor;)V

    move-object v4, v0

    .line 469
    .local v4, "pfd":Landroid/os/ParcelFileDescriptor;
    iget-object v0, v8, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    const-wide/16 v1, 0x2000

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/image/DynamicSystemManager$Session;->setAshmem(Landroid/os/ParcelFileDescriptor;J)Z

    .line 471
    const-wide/16 v17, 0x0

    .line 472
    .local v17, "installedSize":J
    new-instance v19, Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v10, v3

    move-object v11, v4

    .end local v3    # "memoryFile":Landroid/os/MemoryFile;
    .end local v4    # "pfd":Landroid/os/ParcelFileDescriptor;
    .local v10, "memoryFile":Landroid/os/MemoryFile;
    .local v11, "pfd":Landroid/os/ParcelFileDescriptor;
    move-wide v3, v5

    move-object/from16 v20, v11

    move-wide v11, v5

    .end local v5    # "partitionSize":J
    .local v11, "partitionSize":J
    .local v20, "pfd":Landroid/os/ParcelFileDescriptor;
    move-wide/from16 v5, v17

    move-wide/from16 v21, v14

    move v14, v7

    .end local v14    # "unsparseSize":J
    .local v21, "unsparseSize":J
    move/from16 v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/dynsystem/InstallationAsyncTask$Progress;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;JJI)V

    .line 475
    .local v0, "progress":Lcom/android/dynsystem/InstallationAsyncTask$Progress;
    new-array v1, v14, [B

    .line 478
    .local v1, "bytes":[B
    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v13, v1, v2, v14}, Lcom/android/dynsystem/SparseInputStream;->read([BII)I

    move-result v3

    move v4, v3

    .local v4, "numBytesRead":I
    const/4 v5, -0x1

    if-eq v3, v5, :cond_6

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 480
    return-void

    .line 483
    :cond_3
    invoke-virtual {v10, v1, v2, v2, v4}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 485
    iget-object v3, v8, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    invoke-virtual {v3, v4}, Landroid/os/image/DynamicSystemManager$Session;->submitFromAshmem(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 489
    int-to-long v5, v4

    add-long v5, v17, v5

    .line 491
    .end local v17    # "installedSize":J
    .local v5, "installedSize":J
    iget-wide v14, v0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mInstalledSize:J

    const-wide/32 v17, 0x8000000

    add-long v14, v14, v17

    cmp-long v7, v5, v14

    if-lez v7, :cond_4

    .line 492
    iput-wide v5, v0, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mInstalledSize:J

    .line 493
    const/4 v7, 0x1

    new-array v7, v7, [Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    aput-object v0, v7, v2

    invoke-virtual {v8, v7}, Lcom/android/dynsystem/InstallationAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 478
    .end local v4    # "numBytesRead":I
    :cond_4
    move-wide/from16 v17, v5

    const/16 v14, 0x2000

    goto :goto_2

    .line 486
    .end local v5    # "installedSize":J
    .restart local v4    # "numBytesRead":I
    .restart local v17    # "installedSize":J
    :cond_5
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Failed write() to DynamicSystem"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 497
    :cond_6
    new-instance v2, Landroid/gsi/AvbPublicKey;

    invoke-direct {v2}, Landroid/gsi/AvbPublicKey;-><init>()V

    .line 498
    .local v2, "avbPublicKey":Landroid/gsi/AvbPublicKey;
    iget-object v3, v8, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    invoke-virtual {v3, v2}, Landroid/os/image/DynamicSystemManager$Session;->getAvbPublicKey(Landroid/gsi/AvbPublicKey;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 499
    new-instance v3, Lcom/android/dynsystem/InstallationAsyncTask$PublicKeyException;

    const-string v5, "getAvbPublicKey() failed"

    invoke-direct {v3, v5}, Lcom/android/dynsystem/InstallationAsyncTask$PublicKeyException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v3}, Lcom/android/dynsystem/InstallationAsyncTask;->imageValidationThrowOrWarning(Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;)V

    goto :goto_3

    .line 501
    :cond_7
    iget-object v3, v2, Landroid/gsi/AvbPublicKey;->sha1:[B

    invoke-static {v3}, Lcom/android/dynsystem/InstallationAsyncTask;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    .line 502
    .local v3, "publicKey":Ljava/lang/String;
    iget-object v5, v8, Lcom/android/dynsystem/InstallationAsyncTask;->mKeyRevocationList:Lcom/android/dynsystem/KeyRevocationList;

    invoke-virtual {v5, v3}, Lcom/android/dynsystem/KeyRevocationList;->isRevoked(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 503
    new-instance v5, Lcom/android/dynsystem/InstallationAsyncTask$KeyRevokedException;

    invoke-direct {v5, v3}, Lcom/android/dynsystem/InstallationAsyncTask$KeyRevokedException;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v5}, Lcom/android/dynsystem/InstallationAsyncTask;->imageValidationThrowOrWarning(Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;)V

    .line 506
    .end local v3    # "publicKey":Ljava/lang/String;
    :cond_8
    :goto_3
    return-void

    .line 460
    .end local v0    # "progress":Lcom/android/dynsystem/InstallationAsyncTask$Progress;
    .end local v1    # "bytes":[B
    .end local v2    # "avbPublicKey":Landroid/gsi/AvbPublicKey;
    .end local v4    # "numBytesRead":I
    .end local v10    # "memoryFile":Landroid/os/MemoryFile;
    .end local v11    # "partitionSize":J
    .end local v17    # "installedSize":J
    .end local v20    # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v21    # "unsparseSize":J
    .local v5, "partitionSize":J
    .restart local v14    # "unsparseSize":J
    :cond_9
    move-wide v11, v5

    .end local v5    # "partitionSize":J
    .restart local v11    # "partitionSize":J
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to start installation with requested size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    .end local v11    # "partitionSize":J
    .end local v16    # "thread":Ljava/lang/Thread;
    :cond_a
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot get raw size for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private installImageFromAnEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;I)Z
    .locals 10
    .param p1, "entry"    # Ljava/util/zip/ZipEntry;
    .param p2, "is"    # Ljava/io/InputStream;
    .param p3, "numInstalledPartitions"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 401
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v0

    .line 403
    .local v0, "name":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ZipEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstallationAsyncTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v1, ".img"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 406
    return v3

    .line 409
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 411
    .local v1, "partitionName":Ljava/lang/String;
    sget-object v4, Lcom/android/dynsystem/InstallationAsyncTask;->UNSUPPORTED_PARTITIONS:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 412
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " installation is not supported, skip it."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    return v3

    .line 416
    :cond_1
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v2

    .line 418
    .local v2, "uncompressedSize":J
    move-object v4, p0

    move-object v5, v1

    move-wide v6, v2

    move-object v8, p2

    move v9, p3

    invoke-direct/range {v4 .. v9}, Lcom/android/dynsystem/InstallationAsyncTask;->installImage(Ljava/lang/String;JLjava/io/InputStream;I)V

    .line 420
    const/4 v4, 0x1

    return v4
.end method

.method private installImages()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 342
    iget-boolean v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsZip:Z

    if-eqz v0, :cond_0

    .line 343
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->installStreamingZipUpdate()V

    goto :goto_0

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->installStreamingGzUpdate()V

    goto :goto_0

    .line 348
    :cond_1
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->installLocalZipUpdate()V

    .line 350
    :goto_0
    return-void
.end method

.method private installLocalZipUpdate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 380
    const-string v0, "InstallationAsyncTask"

    const-string v1, "To install a local ZIP update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mZipFile:Ljava/util/zip/ZipFile;

    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 383
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    const/4 v1, 0x1

    .line 385
    .local v1, "numInstalledPartitions":I
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 386
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/zip/ZipEntry;

    .line 387
    .local v2, "entry":Ljava/util/zip/ZipEntry;
    iget-object v3, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mZipFile:Ljava/util/zip/ZipFile;

    .line 388
    invoke-virtual {v3, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 387
    invoke-direct {p0, v2, v3, v1}, Lcom/android/dynsystem/InstallationAsyncTask;->installImageFromAnEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 389
    add-int/lit8 v1, v1, 0x1

    .line 392
    :cond_0
    invoke-virtual {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 393
    goto :goto_1

    .line 395
    .end local v2    # "entry":Ljava/util/zip/ZipEntry;
    :cond_1
    goto :goto_0

    .line 396
    :cond_2
    :goto_1
    return-void
.end method

.method private installStreamingGzUpdate()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 354
    const-string v0, "InstallationAsyncTask"

    const-string v1, "To install a streaming GZ update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-wide v4, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mSystemSize:J

    new-instance v6, Ljava/util/zip/GZIPInputStream;

    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    invoke-direct {v6, v0}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    const-string v3, "system"

    const/4 v7, 0x1

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/dynsystem/InstallationAsyncTask;->installImage(Ljava/lang/String;JLjava/io/InputStream;I)V

    .line 356
    return-void
.end method

.method private installStreamingZipUpdate()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;
        }
    .end annotation

    .line 360
    const-string v0, "InstallationAsyncTask"

    const-string v1, "To install a streaming ZIP update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    new-instance v0, Ljava/util/zip/ZipInputStream;

    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 363
    .local v0, "zis":Ljava/util/zip/ZipInputStream;
    const/4 v1, 0x0

    .line 365
    .local v1, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x1

    .line 367
    .local v2, "numInstalledPartitions":I
    :cond_0
    invoke-virtual {v0}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_2

    .line 368
    invoke-direct {p0, v1, v0, v2}, Lcom/android/dynsystem/InstallationAsyncTask;->installImageFromAnEntry(Ljava/util/zip/ZipEntry;Ljava/io/InputStream;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 369
    add-int/lit8 v2, v2, 0x1

    .line 372
    :cond_1
    invoke-virtual {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 376
    :cond_2
    return-void
.end method

.method private installUserdata()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/dynsystem/-$$Lambda$InstallationAsyncTask$EdRCDOnFPVDrWqNsk-i-iNbFZeI;

    invoke-direct {v1, p0}, Lcom/android/dynsystem/-$$Lambda$InstallationAsyncTask$EdRCDOnFPVDrWqNsk-i-iNbFZeI;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 312
    .local v0, "thread":Ljava/lang/Thread;
    const-string v1, "InstallationAsyncTask"

    const-string v2, "Creating partition: userdata"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 315
    const-wide/16 v1, 0x0

    .line 316
    .local v1, "installedSize":J
    new-instance v11, Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    iget-wide v6, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUserdataSize:J

    const-string v5, "userdata"

    const/4 v10, 0x0

    move-object v3, v11

    move-object v4, p0

    move-wide v8, v1

    invoke-direct/range {v3 .. v10}, Lcom/android/dynsystem/InstallationAsyncTask$Progress;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;JJI)V

    .line 318
    .local v3, "progress":Lcom/android/dynsystem/InstallationAsyncTask$Progress;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 319
    invoke-virtual {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 320
    return-void

    .line 323
    :cond_0
    iget-object v4, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v4}, Landroid/os/image/DynamicSystemManager;->getInstallationProgress()Landroid/gsi/GsiProgress;

    move-result-object v4

    iget-wide v1, v4, Landroid/gsi/GsiProgress;->bytes_processed:J

    .line 325
    iget-wide v4, v3, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mInstalledSize:J

    const-wide/32 v6, 0x8000000

    add-long/2addr v4, v6

    cmp-long v4, v1, v4

    if-lez v4, :cond_1

    .line 326
    iput-wide v1, v3, Lcom/android/dynsystem/InstallationAsyncTask$Progress;->mInstalledSize:J

    .line 327
    const/4 v4, 0x1

    new-array v4, v4, [Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-virtual {p0, v4}, Lcom/android/dynsystem/InstallationAsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 330
    :cond_1
    const-wide/16 v4, 0xa

    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v4, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    if-eqz v4, :cond_3

    .line 337
    return-void

    .line 334
    :cond_3
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to start installation with requested size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUserdataSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static toHexString([B)Ljava/lang/String;
    .locals 7
    .param p0, "bytes"    # [B

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 510
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    .line 511
    .local v4, "b":B
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v2

    const-string v6, "%02x"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 510
    .end local v4    # "b":B
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 513
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private verifyAndPrepare()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 255
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 256
    return-void

    .line 258
    :cond_0
    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 260
    .local v0, "extension":Ljava/lang/String;
    const-string v1, "gz"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-string v1, "gzip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 262
    :cond_1
    const-string v1, "zip"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    iput-boolean v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsZip:Z

    goto :goto_1

    .line 265
    :cond_2
    new-instance v1, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedFormatException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 266
    const-string v4, "Unsupported file format: %s"

    invoke-static {v5, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedFormatException;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;Lcom/android/dynsystem/InstallationAsyncTask$1;)V

    throw v1

    .line 261
    :cond_3
    :goto_0
    iput-boolean v4, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsZip:Z

    .line 269
    :goto_1
    iget-boolean v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsNetworkUrl:Z

    if-eqz v1, :cond_4

    .line 270
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    goto :goto_2

    .line 271
    :cond_4
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isFileUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 272
    iget-boolean v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsZip:Z

    if-eqz v1, :cond_5

    .line 273
    new-instance v1, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/net/URL;

    iget-object v4, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mZipFile:Ljava/util/zip/ZipFile;

    goto :goto_2

    .line 275
    :cond_5
    new-instance v1, Ljava/net/URL;

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    goto :goto_2

    .line 277
    :cond_6
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Landroid/webkit/URLUtil;->isContentUrl(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 278
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mStream:Ljava/io/InputStream;

    .line 285
    :goto_2
    :try_start_0
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mContext:Landroid/content/Context;

    const v2, 0x7f020001

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 286
    .local v1, "listUrl":Ljava/lang/String;
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/android/dynsystem/KeyRevocationList;->fromUrl(Ljava/net/URL;)Lcom/android/dynsystem/KeyRevocationList;

    move-result-object v2

    iput-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mKeyRevocationList:Lcom/android/dynsystem/KeyRevocationList;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v1    # "listUrl":Ljava/lang/String;
    goto :goto_3

    .line 287
    :catch_0
    move-exception v1

    .line 288
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/android/dynsystem/KeyRevocationList;

    invoke-direct {v2}, Lcom/android/dynsystem/KeyRevocationList;-><init>()V

    iput-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mKeyRevocationList:Lcom/android/dynsystem/KeyRevocationList;

    .line 289
    new-instance v2, Lcom/android/dynsystem/InstallationAsyncTask$RevocationListFetchException;

    invoke-direct {v2, v1}, Lcom/android/dynsystem/InstallationAsyncTask$RevocationListFetchException;-><init>(Ljava/lang/Throwable;)V

    invoke-direct {p0, v2}, Lcom/android/dynsystem/InstallationAsyncTask;->imageValidationThrowOrWarning(Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;)V

    .line 291
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_3
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mKeyRevocationList:Lcom/android/dynsystem/KeyRevocationList;

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mPublicKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/dynsystem/KeyRevocationList;->isRevoked(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 292
    new-instance v1, Lcom/android/dynsystem/InstallationAsyncTask$KeyRevokedException;

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mPublicKey:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/dynsystem/InstallationAsyncTask$KeyRevokedException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/dynsystem/InstallationAsyncTask;->imageValidationThrowOrWarning(Lcom/android/dynsystem/InstallationAsyncTask$ImageValidationException;)V

    .line 294
    :cond_7
    return-void

    .line 280
    :cond_8
    new-instance v1, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    aput-object v6, v2, v4

    .line 281
    const-string v4, "Unsupported URL: %s"

    invoke-static {v5, v4, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p0, v2, v3}, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;-><init>(Lcom/android/dynsystem/InstallationAsyncTask;Ljava/lang/String;Lcom/android/dynsystem/InstallationAsyncTask$1;)V

    throw v1
.end method


# virtual methods
.method commit()Z
    .locals 2

    .line 536
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Landroid/os/image/DynamicSystemManager;->setEnable(ZZ)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 46
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/dynsystem/InstallationAsyncTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Throwable;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Throwable;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/String;

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start doInBackground(), URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationAsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :try_start_0
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->remove()Z

    .line 182
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->verifyAndPrepare()V

    .line 184
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDsuSlot:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/image/DynamicSystemManager;->startInstallation(Ljava/lang/String;)Z

    .line 186
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->installUserdata()V

    .line 187
    invoke-virtual {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->remove()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 189
    nop

    .line 207
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->close()V

    .line 189
    return-object v2

    .line 191
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 192
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->finishInstallation()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 193
    nop

    .line 207
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->close()V

    .line 193
    return-object v2

    .line 195
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->installImages()V

    .line 196
    invoke-virtual {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 197
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->remove()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    nop

    .line 207
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->close()V

    .line 198
    return-object v2

    .line 201
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->finishInstallation()Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 207
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->close()V

    .line 208
    nop

    .line 210
    return-object v2

    .line 207
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 202
    :catch_0
    move-exception v0

    .line 203
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v1}, Landroid/os/image/DynamicSystemManager;->remove()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 205
    nop

    .line 207
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->close()V

    .line 205
    return-object v0

    .line 207
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-direct {p0}, Lcom/android/dynsystem/InstallationAsyncTask;->close()V

    .line 208
    throw v0
.end method

.method isCompleted()Z
    .locals 1

    .line 532
    iget-boolean v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsCompleted:Z

    return v0
.end method

.method public synthetic lambda$installImage$1$InstallationAsyncTask(Ljava/lang/String;J)V
    .locals 2
    .param p1, "partitionName"    # Ljava/lang/String;
    .param p2, "partitionSize"    # J

    .line 444
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    .line 445
    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/os/image/DynamicSystemManager;->createPartition(Ljava/lang/String;JZ)Landroid/os/image/DynamicSystemManager$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    .line 446
    return-void
.end method

.method public synthetic lambda$installUserdata$0$InstallationAsyncTask()V
    .locals 5

    .line 309
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    iget-wide v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUserdataSize:J

    const-string v3, "userdata"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/os/image/DynamicSystemManager;->createPartition(Ljava/lang/String;JZ)Landroid/os/image/DynamicSystemManager$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mInstallationSession:Landroid/os/image/DynamicSystemManager$Session;

    .line 310
    return-void
.end method

.method protected onCancelled()V
    .locals 3

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelled(), URL: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationAsyncTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mDynSystem:Landroid/os/image/DynamicSystemManager;

    invoke-virtual {v0}, Landroid/os/image/DynamicSystemManager;->abort()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    const-string v0, "Installation aborted"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 242
    :cond_0
    const-string v0, "DynamicSystemManager.abort() returned false"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    :goto_0
    iget-object v0, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mListener:Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;->onResult(ILjava/lang/Throwable;)V

    .line 246
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/android/dynsystem/InstallationAsyncTask;->onPostExecute(Ljava/lang/Throwable;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "detail"    # Ljava/lang/Throwable;

    .line 215
    const/4 v0, 0x0

    .line 217
    .local v0, "result":I
    if-nez p1, :cond_0

    .line 218
    const/4 v0, 0x1

    .line 219
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mIsCompleted:Z

    goto :goto_0

    .line 220
    :cond_0
    instance-of v1, p1, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 221
    const/4 v0, 0x3

    goto :goto_0

    .line 222
    :cond_1
    instance-of v1, p1, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedUrlException;

    if-eqz v1, :cond_2

    .line 223
    const/4 v0, 0x4

    goto :goto_0

    .line 224
    :cond_2
    instance-of v1, p1, Lcom/android/dynsystem/InstallationAsyncTask$UnsupportedFormatException;

    if-eqz v1, :cond_3

    .line 225
    const/4 v0, 0x5

    goto :goto_0

    .line 227
    :cond_3
    const/4 v0, 0x6

    .line 230
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute(), URL: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InstallationAsyncTask"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mListener:Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;

    invoke-interface {v1, v0, p1}, Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;->onResult(ILjava/lang/Throwable;)V

    .line 233
    return-void
.end method

.method protected varargs onProgressUpdate([Lcom/android/dynsystem/InstallationAsyncTask$Progress;)V
    .locals 2
    .param p1, "values"    # [Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    .line 250
    const/4 v0, 0x0

    aget-object v0, p1, v0

    .line 251
    .local v0, "progress":Lcom/android/dynsystem/InstallationAsyncTask$Progress;
    iget-object v1, p0, Lcom/android/dynsystem/InstallationAsyncTask;->mListener:Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;

    invoke-interface {v1, v0}, Lcom/android/dynsystem/InstallationAsyncTask$ProgressListener;->onProgressUpdate(Lcom/android/dynsystem/InstallationAsyncTask$Progress;)V

    .line 252
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p1, [Lcom/android/dynsystem/InstallationAsyncTask$Progress;

    invoke-virtual {p0, p1}, Lcom/android/dynsystem/InstallationAsyncTask;->onProgressUpdate([Lcom/android/dynsystem/InstallationAsyncTask$Progress;)V

    return-void
.end method
