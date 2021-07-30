.class public final Lcom/google/android/gsf/SubscribedFeeds$Feeds;
.super Ljava/lang/Object;
.source "SubscribedFeeds.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DELETED_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://subscribedfeeds/feeds"

    .line 234
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://subscribedfeeds/deleted_feeds"

    .line 240
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/google/android/gsf/SubscribedFeeds$Feeds;->DELETED_CONTENT_URI:Landroid/net/Uri;

    return-void
.end method
