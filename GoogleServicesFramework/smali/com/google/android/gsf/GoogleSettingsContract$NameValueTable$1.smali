.class Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;
.super Landroid/database/ContentObserver;
.source "GoogleSettingsContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable;->ensureCacheInitializedLocked(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$finalCacheValue:Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;


# direct methods
.method constructor <init>(Landroid/os/Handler;Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;)V
    .locals 0

    .line 77
    iput-object p2, p0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;->val$finalCacheValue:Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 83
    iget-object p0, p0, Lcom/google/android/gsf/GoogleSettingsContract$NameValueTable$1;->val$finalCacheValue:Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;

    iget-object p0, p0, Lcom/google/android/gsf/GoogleSettingsContract$UriCacheValue;->invalidateCache:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
