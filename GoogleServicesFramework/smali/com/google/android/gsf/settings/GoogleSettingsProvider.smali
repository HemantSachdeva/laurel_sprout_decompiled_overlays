.class public Lcom/google/android/gsf/settings/GoogleSettingsProvider;
.super Landroid/content/ContentProvider;
.source "GoogleSettingsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;
    }
.end annotation


# instance fields
.field private mLinkAssistedGps:Z

.field private mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    return-void
.end method

.method private checkNetworkLocationOptIn(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 4

    .line 249
    iget-boolean v0, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "name"

    .line 253
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    .line 252
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "value"

    .line 254
    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "1"

    .line 256
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "assisted_gps_enabled"

    .line 255
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 259
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 260
    invoke-static {p0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getManagedProfiles(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 261
    invoke-static {p0, v1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->createUserContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 266
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "GoogleSettingsProvider"

    const-string v3, "Caught exception trying to set NETWORK_LOCATION_OPT_IN to a managed profile"

    .line 268
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method private checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V
    .locals 1

    .line 138
    iget-object p1, p1, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const-string v0, "partner"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 139
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "com.google.android.providers.settings.permission.WRITE_GSETTINGS"

    invoke-virtual {p0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Cannot write to Google settings table"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private static createUserContext(Landroid/content/Context;I)Landroid/content/Context;
    .locals 3

    .line 355
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 354
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "GoogleSettingsProvider"

    const-string v0, "Could not find a package Context"

    .line 357
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private static getManagedProfiles(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 367
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 368
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 372
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 373
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v0, :cond_0

    .line 374
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 377
    :cond_0
    invoke-virtual {p0, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p0

    .line 378
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 379
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 381
    invoke-virtual {v2}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    if-eq v2, v0, :cond_1

    .line 382
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method private getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;
    .locals 1

    .line 104
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "partner"

    .line 108
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "name"

    .line 109
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 110
    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 112
    :cond_0
    invoke-static {p1, p3, p4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p0

    return-object p0

    .line 105
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid URI: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private overrideLgaayl(Landroid/net/Uri;Landroid/content/ContentValues;)V
    .locals 0

    const-string p0, "name"

    .line 281
    invoke-virtual {p2, p0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "use_location_for_services"

    .line 280
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "value"

    const-string p1, "1"

    .line 282
    invoke-virtual {p2, p0, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private sendNotify(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "notify"

    .line 122
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "true"

    .line 123
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 9

    .line 288
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 291
    iget-object v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 292
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 294
    :try_start_0
    array-length v2, p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 296
    aget-object v5, p2, v4

    invoke-direct {p0, p1, v5}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->overrideLgaayl(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 297
    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v7, p2, v4

    invoke-virtual {v1, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-gez v5, :cond_0

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    return v3

    .line 299
    :cond_0
    :try_start_1
    aget-object v5, p2, v4

    invoke-direct {p0, p1, v5}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkNetworkLocationOptIn(Landroid/net/Uri;Landroid/content/ContentValues;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 301
    :cond_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 306
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 307
    array-length p0, p2

    return p0

    :catchall_0
    move-exception p0

    .line 303
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 304
    throw p0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 330
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p2, p3}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 331
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 333
    iget-object p2, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p2}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p2

    .line 334
    iget-object p3, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p2, p3, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 335
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 230
    new-instance p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 232
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.dir/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 234
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "vnd.android.cursor.item/"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 5

    .line 312
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 313
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 315
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->overrideLgaayl(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 316
    iget-object v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 317
    iget-object v0, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_0

    return-object v2

    .line 321
    :cond_0
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->getUriFor(Landroid/net/Uri;Landroid/content/ContentValues;J)Landroid/net/Uri;

    move-result-object v0

    .line 322
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    .line 323
    invoke-direct {p0, p1, p2}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkNetworkLocationOptIn(Landroid/net/Uri;Landroid/content/ContentValues;)V

    return-object v0
.end method

.method public onCreate()Z
    .locals 8

    .line 148
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 149
    new-instance v1, Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-direct {v1, v0}, Lcom/google/android/gsf/settings/DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    const-string v1, "ro.gps.agps_provider"

    const/4 v2, 0x0

    .line 151
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 153
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 154
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v4, "google"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    .line 156
    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    .line 157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    .line 158
    invoke-virtual {v1, v4}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    const-string v5, "value"

    const-string v6, "name"

    if-eqz v1, :cond_2

    .line 159
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    if-eq v1, v4, :cond_2

    .line 162
    invoke-static {v0, v1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->createUserContext(Landroid/content/Context;I)Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 165
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "network_location_opt_in"

    .line 164
    invoke-static {v0, v1}, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 167
    new-instance v4, Landroid/content/ContentValues;

    const/4 v7, 0x2

    invoke-direct {v4, v7}, Landroid/content/ContentValues;-><init>(I)V

    .line 168
    invoke-virtual {v4, v6, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {v4, v5, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    sget-object v0, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, v0, v4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 177
    :cond_2
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    sget-object v1, Lcom/google/android/gsf/GoogleSettingsContract$Partner;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;)V

    .line 178
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "use_location_for_services"

    .line 179
    invoke-virtual {v1, v6, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "1"

    .line 181
    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    iget-object p0, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p0

    .line 183
    iget-object v0, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {p0, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return v3
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9

    .line 190
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 191
    iget-object p3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 194
    iget-object p3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p3}, Lcom/google/android/gsf/settings/DatabaseHelper;->assistedGpsSettingNeedsUpdate()Z

    move-result p3

    const/4 p4, 0x1

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mLinkAssistedGps:Z

    if-eqz p3, :cond_2

    .line 196
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v1, "SELECT value FROM partner WHERE name = ?"

    .line 199
    invoke-virtual {v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->compileStatement(Ljava/lang/String;)Landroid/database/sqlite/SQLiteStatement;

    move-result-object v1

    const-string v3, "network_location_opt_in"

    .line 200
    invoke-virtual {v1, p4, v3}, Landroid/database/sqlite/SQLiteStatement;->bindString(ILjava/lang/String;)V

    const/4 v3, 0x0

    .line 203
    :try_start_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->simpleQueryForLong()J

    move-result-wide v4
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteDoneException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    move v4, p4

    goto :goto_0

    :catch_0
    :cond_0
    move v4, v3

    .line 207
    :goto_0
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteStatement;->close()V

    const-string v1, "assisted_gps_enabled"

    .line 209
    invoke-static {p3, v1, p4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v3, p4

    :cond_1
    if-eq v3, v4, :cond_2

    .line 212
    invoke-static {p3, v1, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 217
    :cond_2
    new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .line 218
    invoke-virtual {v1, p4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setStrict(Z)V

    .line 219
    iget-object p3, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    invoke-virtual {v1, p3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    .line 221
    iget-object v4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, p2

    move-object v8, p5

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p2

    .line 222
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-interface {p2, p0, p1}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object p2
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 342
    new-instance v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;

    invoke-direct {v0, p1, p3, p4}, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;-><init>(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 343
    invoke-direct {p0, v0}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->checkWritePermissions(Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;)V

    .line 345
    iget-object p3, p0, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->mOpenHelper:Lcom/google/android/gsf/settings/DatabaseHelper;

    invoke-virtual {p3}, Landroid/database/sqlite/SQLiteOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 346
    iget-object p4, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->table:Ljava/lang/String;

    iget-object v1, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->where:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/gsf/settings/GoogleSettingsProvider$SqlArguments;->args:[Ljava/lang/String;

    invoke-virtual {p3, p4, p2, v1, v0}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    .line 347
    invoke-direct {p0, p1}, Lcom/google/android/gsf/settings/GoogleSettingsProvider;->sendNotify(Landroid/net/Uri;)V

    :cond_0
    return p2
.end method
