.class public final Landroid/car/CarFeatures;
.super Ljava/lang/Object;
.source "CarFeatures.java"


# instance fields
.field private final mCachedFeatures:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mCachedFeatures"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    return-void
.end method


# virtual methods
.method resetCache()V
    .locals 1

    .line 79
    iget-object v0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 80
    :try_start_0
    iget-object p0, p0, Landroid/car/CarFeatures;->mCachedFeatures:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    .line 81
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
