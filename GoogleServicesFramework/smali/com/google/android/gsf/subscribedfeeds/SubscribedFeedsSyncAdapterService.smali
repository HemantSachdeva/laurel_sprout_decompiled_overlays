.class public Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;
.super Landroid/app/Service;
.source "SubscribedFeedsSyncAdapterService.java"


# instance fields
.field private mContentProviderClient:Landroid/content/ContentProviderClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->getLocalContentProvider()Landroid/content/ContentProvider;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 42
    check-cast p0, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;

    .line 43
    invoke-virtual {p0}, Lcom/google/android/gsf/subscribedfeeds/SyncableContentProvider;->getTempProviderSyncAdapter()Lcom/google/android/gsf/subscribedfeeds/TempProviderSyncAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->getSyncAdapterBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0

    .line 41
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public onCreate()V
    .locals 2

    .line 31
    invoke-virtual {p0}, Landroid/app/Service;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/google/android/gsf/subscribedfeeds/SubscribedFeedsSyncAdapterService;->mContentProviderClient:Landroid/content/ContentProviderClient;

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->release()Z

    return-void
.end method
