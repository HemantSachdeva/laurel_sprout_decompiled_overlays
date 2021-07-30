.class Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;
.super Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;
.source "SubscribedFeedsProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeedMerger"
.end annotation


# instance fields
.field private mValues:Landroid/content/ContentValues;

.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;)V
    .locals 6

    .line 312
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    .line 313
    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$000()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v3

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$200()Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$300()Landroid/net/Uri;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;-><init>(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Landroid/net/Uri;)V

    .line 311
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    return-void
.end method


# virtual methods
.method public deleteRow(Landroid/database/Cursor;)V
    .locals 7

    const-string v0, "_id"

    .line 376
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 378
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 379
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "_sync_dirty"

    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 380
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_id"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_time"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 382
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v3, "_sync_version"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    iget-object v2, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {v2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    .line 384
    iget-object v3, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, p0, v0, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 385
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    return-void
.end method

.method public insertRow(Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 3

    .line 325
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p1

    .line 329
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {v0}, Landroid/content/ContentValues;->clear()V

    .line 330
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v1, "_sync_id"

    invoke-static {p2, v1, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 332
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v2, "_sync_account"

    invoke-static {p2, v2, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 334
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v2, "_sync_account_type"

    invoke-static {p2, v2, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 336
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string v2, "_sync_version"

    invoke-static {p2, v2, v0}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 338
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mDeletedTable:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p1, p2, v1, p0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method protected notifyChanges()V
    .locals 3

    .line 318
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 319
    invoke-static {}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;->access$100()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 318
    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;Z)V

    return-void
.end method

.method public resolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 7

    const/4 v6, 0x1

    move-object v0, p0

    move-wide v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 350
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    return-void
.end method

.method protected updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V
    .locals 0

    .line 355
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    .line 357
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string p4, "_sync_id"

    invoke-static {p5, p4, p3}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 359
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string p4, "_sync_time"

    invoke-static {p5, p4, p3}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 361
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    const-string p4, "_sync_version"

    invoke-static {p5, p4, p3}, Landroid/database/DatabaseUtils;->cursorStringToContentValues(Landroid/database/Cursor;Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 363
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    const-string p5, "_sync_dirty"

    invoke-virtual {p3, p5, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 364
    iget-object p3, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->this$0:Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider;

    invoke-virtual {p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object p3

    .line 365
    iget-object p4, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractTableMerger;->mTable:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->mValues:Landroid/content/ContentValues;

    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "_id="

    invoke-virtual {p5, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p3, p4, p0, p1, p2}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public updateRow(JLandroid/content/ContentProvider;Landroid/database/Cursor;)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 344
    invoke-virtual/range {v0 .. v6}, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsProvider$FeedMerger;->updateOrResolveRow(JLjava/lang/String;Landroid/content/ContentProvider;Landroid/database/Cursor;Z)V

    return-void
.end method
