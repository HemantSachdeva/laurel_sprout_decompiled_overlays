.class Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "AbstractSyncableContentProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DatabaseHelper"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    .line 160
    invoke-static {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$000(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)I

    move-result p1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->bootstrapDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 166
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->createDatabase(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 167
    iget-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->isTemporary()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 168
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    .line 169
    invoke-static {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$200(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 168
    invoke-static {p1, p0, v0}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onOpen(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 185
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-static {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->onDatabaseOpened(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->upgradeDatabase(Landroid/database/sqlite/SQLiteDatabase;II)Z

    move-result p2

    if-nez p2, :cond_0

    .line 176
    iget-object p2, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-static {p2}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$100(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/google/android/gsf/subscribedfeeds/SyncStateContentProviderHelper;->discardSyncData(Landroid/database/sqlite/SQLiteDatabase;Landroid/accounts/Account;)V

    .line 177
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$DatabaseHelper;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    .line 178
    invoke-static {p0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$200(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 177
    invoke-static {p3, p0, p1}, Landroid/content/ContentResolver;->requestSync(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method
