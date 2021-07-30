.class Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;
.super Ljava/lang/Object;
.source "AbstractSyncableContentProvider.java"

# interfaces
.implements Landroid/accounts/OnAccountsUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onCreate()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)V
    .locals 0

    .line 202
    iput-object p1, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccountsUpdated([Landroid/accounts/Account;)V
    .locals 7

    .line 204
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-static {v0}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->access$300(Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 210
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 211
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 212
    iget-object v5, v4, Landroid/accounts/Account;->type:Ljava/lang/String;

    const-string v6, "com.google"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 216
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Landroid/accounts/Account;

    .line 218
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    add-int/lit8 v3, v2, 0x1

    .line 219
    aput-object v1, p1, v2

    move v2, v3

    goto :goto_1

    .line 221
    :cond_3
    iget-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {v0, p1}, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;->onAccountsChanged([Landroid/accounts/Account;)V

    .line 222
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider$1;->this$0:Lcom/google/android/gsf/subscribedfeeds/AbstractSyncableContentProvider;

    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTempProviderSyncAdapter()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 224
    invoke-virtual {p0, p1}, Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;->onAccountsChanged([Landroid/accounts/Account;)V

    :cond_4
    return-void
.end method
