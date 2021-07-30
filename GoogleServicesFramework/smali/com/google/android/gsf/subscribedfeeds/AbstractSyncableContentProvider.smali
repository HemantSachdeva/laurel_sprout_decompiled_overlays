.class public abstract Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
.super Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final sAccountProjection:[Ljava/lang/String;


# instance fields
.field private contentResolver:Landroid/content/ContentResolver;

.field private final mApplyingBatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mContainsDiffs:Z

.field private final mContentUri:Landroid/net/Uri;

.field private final mDatabaseName:Ljava/lang/String;

.field private final mDatabaseVersion:I

.field protected mDb:Landroid/database/sqlite/SQLiteDatabase;

.field private mIsMergeCancelled:Z

.field private mIsTemporary:Z

.field protected mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

.field private final mPendingBatchNotifications:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

.field private mSyncingAccount:Landroid/accounts/Account;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "_sync_account"

    const-string v1, "_sync_account_type"

    .line 64
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILandroid/net/Uri;)V
    .locals 2

    .line 107
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 87
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    .line 88
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    .line 109
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    .line 110
    iput p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseVersion:I

    .line 111
    iput-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    .line 112
    iput-boolean v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 113
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseVersion:I

    return p0
.end method

.method static synthetic access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Landroid/net/Uri;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContentUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Ljava/lang/Boolean;
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->proxyToGmscore()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method private applyingBatch()Z
    .locals 1

    .line 385
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {p0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private checkGoogleSignature(Ljava/lang/String;)V
    .locals 11

    const-string v0, "Failed to close input signature file"

    .line 819
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    const/4 v2, 0x3

    const-string v3, "SyncableContentProvider"

    if-eqz v1, :cond_1

    .line 820
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "Skipping signature checks for local temp provider."

    .line 821
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 826
    :cond_1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v4

    if-ne v1, v4, :cond_3

    .line 827
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "Skipping signature checks for same uid call."

    .line 828
    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 833
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-eqz v1, :cond_f

    const/16 v4, 0x40

    .line 840
    :try_start_0
    invoke-virtual {v1, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_7

    if-eqz v1, :cond_e

    .line 845
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v4, v1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_e

    const/4 v4, 0x0

    .line 849
    aget-object v1, v1, v4

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    .line 850
    new-instance v5, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v6, "signatures"

    invoke-direct {v5, p0, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 851
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_d

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result p0

    if-eqz p0, :cond_d

    .line 852
    invoke-static {v5, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSignatureFile(Ljava/io/File;[B)Ljava/io/File;

    move-result-object p0

    .line 853
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_c

    const/4 v5, 0x0

    .line 856
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 857
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long p0, v7, v9

    if-lez p0, :cond_9

    const-wide/16 v9, 0x4000

    cmp-long p0, v7, v9

    if-lez p0, :cond_4

    goto :goto_3

    .line 862
    :cond_4
    array-length p0, v1

    int-to-long v9, p0

    cmp-long p0, v7, v9

    if-nez p0, :cond_8

    :goto_0
    int-to-long v9, v4

    cmp-long p0, v9, v7

    if-gez p0, :cond_6

    .line 865
    aget-byte v5, v1, v4

    invoke-virtual {v6}, Ljava/io/FileInputStream;->read()I

    move-result v9

    int-to-byte v9, v9

    if-eq v5, v9, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    if-nez p0, :cond_8

    .line 870
    invoke-static {v3, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 871
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling package is authorized: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 882
    :cond_7
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 884
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void

    .line 882
    :cond_8
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_9

    :catch_1
    move-exception p0

    .line 884
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9

    :cond_9
    :goto_3
    :try_start_5
    const-string p0, "Skipping signature check due to corrupted GSF signature file"

    .line 859
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 882
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    .line 884
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    return-void

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto :goto_7

    :catch_3
    move-exception p0

    move-object v5, v6

    goto :goto_5

    :catchall_1
    move-exception p0

    goto :goto_7

    :catch_4
    move-exception p0

    .line 877
    :goto_5
    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Signature load error. Defaulting allow for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_a

    .line 882
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_6

    :catch_5
    move-exception p0

    .line 884
    invoke-static {v3, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_6
    return-void

    :goto_7
    if-eqz v5, :cond_b

    .line 882
    :try_start_9
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6

    goto :goto_8

    :catch_6
    move-exception p1

    .line 884
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 887
    :cond_b
    :goto_8
    throw p0

    .line 890
    :cond_c
    :goto_9
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Access denied! Only Google signed apps are allowed to access the SubscribedFeeds provider. Calling package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 893
    :cond_d
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find Google signatures. Defaulting to allow for: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 846
    :cond_e
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid calling package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 842
    :catch_7
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package manager can\'t find calling package: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 835
    :cond_f
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Invalid Package Manager"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getGmscoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 916
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object p0

    const-string v0, "com.google.android.gms.subscribedfeeds"

    invoke-virtual {p0, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    const-string v0, "SyncableContentProvider"

    const/4 v1, 0x2

    .line 917
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 918
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " uri: "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " proxying to gmscore with uri: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object p0
.end method

.method private static getSignatureFile(Ljava/io/File;[B)Ljava/io/File;
    .locals 3

    .line 900
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sig"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->hashCode([B)I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private proxyToGmscore()Ljava/lang/Boolean;
    .locals 3

    .line 907
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    const-string v0, "gms:subscribedfeeds:service:subscribedfeeds_proxy_to_gsf_provider"

    const/4 v1, 0x1

    .line 908
    invoke-static {p0, v0, v1}, Lcom/google/android/gsf/Gservices;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, v1

    const/4 v0, 0x2

    const-string v1, "SyncableContentProvider"

    .line 909
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 910
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Proxy to gmscore is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    :cond_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .line 539
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->beginBatch()V

    .line 541
    :try_start_0
    invoke-super {p0, p1}, Landroid/content/ContentProvider;->applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    .line 545
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->endBatch(Z)V

    return-object p1

    :catchall_0
    move-exception p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->endBatch(Z)V

    .line 546
    throw p1
.end method

.method public final beginBatch()V
    .locals 2

    .line 487
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 489
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 492
    :cond_0
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v0

    if-nez v0, :cond_1

    .line 496
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 497
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 500
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 505
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 507
    throw p0

    .line 493
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "applyBatch is not reentrant but mApplyingBatch is already set"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public final bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 6

    .line 430
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->checkGoogleSignature(Ljava/lang/String;)V

    .line 431
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->proxyToGmscore()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BulkInsert"

    .line 432
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getGmscoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 433
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result p0

    return p0

    .line 435
    :cond_0
    array-length v0, p2

    .line 437
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v1

    .line 438
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iput-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 439
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    .line 443
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v1, :cond_1

    .line 444
    iget-object v4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v4}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v4

    aget-object v5, p2, v2

    invoke-virtual {v4, p1, v5}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    goto :goto_1

    .line 446
    :cond_1
    aget-object v4, p2, v2

    invoke-virtual {p0, p1, v4}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v4

    .line 447
    iget-object v5, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->yieldIfContended()Z

    :goto_1
    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 453
    :cond_3
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 457
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p2

    if-nez p2, :cond_4

    if-ne v3, v0, :cond_4

    .line 458
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    const/4 v0, 0x0

    .line 459
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result p0

    .line 458
    invoke-virtual {p2, p1, v0, p0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    :cond_4
    return v3

    :catchall_0
    move-exception p1

    .line 455
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 456
    throw p1
.end method

.method public changeRequiresLocalSync(Landroid/net/Uri;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 0

    .line 124
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->close()V

    :cond_0
    return-void
.end method

.method public final delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 3

    .line 346
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->checkGoogleSignature(Ljava/lang/String;)V

    .line 347
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->proxyToGmscore()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Delete"

    .line 348
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getGmscoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 349
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    .line 351
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 352
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 354
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 357
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 358
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Landroid/content/ContentProvider;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_2

    .line 360
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 379
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    return p1

    .line 364
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz v0, :cond_5

    .line 366
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 368
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p3

    if-nez p3, :cond_7

    if-lez p2, :cond_7

    if-eqz v0, :cond_6

    .line 370
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    const/4 v1, 0x0

    .line 371
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v2

    .line 370
    invoke-virtual {p3, p1, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 373
    :cond_6
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 379
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    return p2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 381
    :cond_9
    throw p1
.end method

.method protected abstract deleteInternal(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Landroid/accounts/Account;",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 745
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 746
    sget-object v2, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->sAccountProjection:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "_sync_account, _sync_account_type"

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 749
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    .line 750
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 751
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 752
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 755
    :cond_1
    new-instance v5, Landroid/accounts/Account;

    invoke-direct {v5, v2, v4}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    invoke-interface {p1, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "_sync_account=? AND _sync_account_type=?"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    .line 758
    iget-object v6, v5, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v6, v4, v1

    iget-object v1, v5, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v1, v4, v3

    invoke-virtual {p0, p2, v2, v4}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 768
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 769
    throw p0
.end method

.method public final endBatch(Z)V
    .locals 5

    .line 521
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 524
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 527
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 529
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    .line 530
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 531
    invoke-virtual {p0, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v4

    .line 530
    invoke-virtual {v3, v2, v1, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 533
    :cond_0
    throw p1

    .line 527
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mApplyingBatch:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 528
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 529
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 530
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 531
    invoke-virtual {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v3

    .line 530
    invoke-virtual {v2, v0, v1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public getContainsDiffs()Z
    .locals 0

    .line 274
    iget-boolean p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContainsDiffs:Z

    return p0
.end method

.method public getDatabase()Landroid/database/sqlite/SQLiteDatabase;
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    if-nez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 270
    :cond_0
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    return-object p0
.end method

.method protected getMergers()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;",
            ">;"
        }
    .end annotation

    .line 297
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getSyncingAccount()Landroid/accounts/Account;
    .locals 0

    .line 603
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncingAccount:Landroid/accounts/Account;

    return-object p0
.end method

.method public getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
    .locals 4

    .line 242
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 253
    iput-boolean v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsTemporary:Z

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->setContainsDiffs(Z)V

    .line 255
    new-instance v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 256
    new-instance v1, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    iget-object v2, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v1, v2}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v1, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    .line 257
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_0

    .line 258
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 259
    invoke-virtual {v2}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    iget-object v3, v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 260
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v3

    .line 261
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSyncingAccount()Landroid/accounts/Account;

    move-result-object p0

    .line 258
    invoke-virtual {v1, v2, v3, p0}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    .line 247
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "IllegalAccess while instantiating class, this should never happen"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    .line 244
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "unable to instantiate class, this should never happen"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public bridge synthetic getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getTemporaryInstance()Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    move-result-object p0

    return-object p0
.end method

.method public final insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4

    .line 390
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->checkGoogleSignature(Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->proxyToGmscore()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Insert"

    .line 392
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getGmscoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 393
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 395
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 396
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 398
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 401
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 402
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p1

    if-eqz v0, :cond_2

    .line 404
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 423
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    return-object p1

    .line 408
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    if-eqz v0, :cond_5

    .line 410
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 412
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    if-nez v1, :cond_7

    if-eqz p2, :cond_7

    if-eqz v0, :cond_6

    .line 414
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    .line 415
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v3

    .line 414
    invoke-virtual {v1, p1, v2, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 417
    :cond_6
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 423
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    return-object p2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 425
    :cond_9
    throw p1
.end method

.method protected abstract insertInternal(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsTemporary:Z

    return p0
.end method

.method public merge(Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;)V
    .locals 9

    .line 616
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 617
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 619
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v1, 0x0

    .line 620
    :try_start_1
    iput-boolean v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    .line 621
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 622
    :try_start_2
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getMergers()Ljava/lang/Iterable;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    .line 624
    :try_start_3
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;

    .line 625
    monitor-enter p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 626
    :try_start_4
    iget-boolean v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z

    if-eqz v2, :cond_0

    .line 627
    monitor-exit p0

    goto :goto_1

    .line 630
    :cond_0
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 631
    :try_start_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSyncingAccount()Landroid/accounts/Account;

    move-result-object v4

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->merge(Landroid/accounts/Account;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncResult;Landroid/content/SyncResult;Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 630
    :try_start_6
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p1

    .line 633
    :cond_1
    :goto_1
    iget-boolean p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mIsMergeCancelled:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    if-eqz p2, :cond_2

    .line 643
    :try_start_8
    monitor-enter p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    .line 645
    :try_start_9
    monitor-exit p0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 649
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_1
    move-exception p1

    .line 645
    :try_start_a
    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    :cond_2
    if-eqz p1, :cond_3

    .line 637
    :try_start_c
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    check-cast p1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    iget-object p1, p1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 638
    invoke-virtual {p1}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 639
    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 640
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getSyncingAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 637
    invoke-virtual {p2, p1, p3, v1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->copySyncState(Landroid/database/sqlite/SQLiteDatabase;Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 643
    :cond_3
    :try_start_d
    monitor-enter p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 645
    :try_start_e
    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    .line 647
    :try_start_f
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_6

    .line 649
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_2
    move-exception p1

    .line 645
    :try_start_10
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    throw p1

    :catchall_3
    move-exception p1

    .line 643
    monitor-enter p0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    .line 645
    :try_start_12
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    .line 646
    :try_start_13
    throw p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :catchall_4
    move-exception p1

    .line 645
    :try_start_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_4

    :try_start_15
    throw p1
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :catchall_5
    move-exception p1

    .line 621
    :try_start_16
    monitor-exit p0
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    :try_start_17
    throw p1
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :catchall_6
    move-exception p0

    .line 649
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 650
    throw p0
.end method

.method protected onAccountsChanged([Landroid/accounts/Account;)V
    .locals 5

    .line 713
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 714
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 715
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 718
    :cond_0
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 719
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v2

    .line 720
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    .line 721
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 722
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addAll(Ljava/util/Collection;)Z

    .line 724
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 726
    :try_start_0
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v2, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 727
    invoke-virtual {v3}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 728
    invoke-virtual {p0, v0, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->deleteRowsForRemovedAccounts(Ljava/util/Map;Ljava/lang/String;)V

    goto :goto_1

    .line 730
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 732
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 733
    throw p0
.end method

.method public onCreate()Z
    .locals 3

    const-string v0, "SyncableContentProvider"

    const/4 v1, 0x3

    .line 191
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "onCreate called."

    .line 192
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-nez v0, :cond_1

    .line 197
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    .line 198
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDatabaseName:Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;-><init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    .line 200
    new-instance v0, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;-><init>(Landroid/database/sqlite/SQLiteOpenHelper;)V

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    .line 201
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v0

    new-instance v1, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;

    invoke-direct {v1, p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;-><init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)V

    const/4 p0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return v2

    .line 195
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "onCreate() called for temp provider"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method protected onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public onSyncStart(Landroid/accounts/Account;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 586
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncingAccount:Landroid/accounts/Account;

    return-void

    .line 584
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "you passed in an empty account"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onSyncStop(Z)V
    .locals 0

    return-void
.end method

.method public final query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7

    .line 563
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->checkGoogleSignature(Ljava/lang/String;)V

    .line 564
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->proxyToGmscore()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Query"

    .line 565
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getGmscoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 566
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 567
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 570
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 571
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0

    .line 574
    :cond_1
    invoke-virtual/range {p0 .. p5}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    return-object p0
.end method

.method protected abstract queryInternal(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public setContainsDiffs(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 278
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only a temporary provider can contain diffs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 282
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mContainsDiffs:Z

    return-void
.end method

.method public final update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 303
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getCallingPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->checkGoogleSignature(Ljava/lang/String;)V

    .line 304
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->proxyToGmscore()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Update"

    .line 305
    invoke-direct {p0, p1, v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getGmscoreUri(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 306
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p0

    return p0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    .line 309
    invoke-direct {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->applyingBatch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 311
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 314
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->matches(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 315
    iget-object v1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {v1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->asContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/content/ContentProvider;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-eqz v0, :cond_2

    .line 318
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    .line 338
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_3
    return p1

    .line 323
    :cond_4
    :try_start_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-eqz v0, :cond_5

    .line 325
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 327
    :cond_5
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p3

    if-nez p3, :cond_7

    if-lez p2, :cond_7

    if-eqz v0, :cond_6

    .line 329
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->contentResolver:Landroid/content/ContentResolver;

    const/4 p4, 0x0

    .line 330
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->changeRequiresLocalSync(Landroid/net/Uri;)Z

    move-result v1

    .line 329
    invoke-virtual {p3, p1, p4, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    goto :goto_0

    .line 332
    :cond_6
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mPendingBatchNotifications:Ljava/lang/ThreadLocal;

    invoke-virtual {p3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    .line 338
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    :cond_8
    return p2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mDb:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 340
    :cond_9
    throw p1
.end method

.method protected abstract updateInternal(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method protected abstract upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z
.end method

.method public wipeAccount(Landroid/accounts/Account;)V
    .locals 6

    .line 777
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mOpenHelper:Landroid/database/sqlite/SQLiteOpenHelper;

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 778
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->getSyncedTables()Ljava/util/Map;

    move-result-object v1

    .line 779
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 780
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 781
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 783
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 787
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->mSyncState:Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    .line 790
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "_sync_account=? AND _sync_account_type=?"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    .line 791
    iget-object v5, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 794
    :cond_0
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 796
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 797
    throw p0
.end method
