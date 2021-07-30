.class public abstract Lcom/android/systemui/util/FpodFixedFileObserver;
.super Ljava/lang/Object;
.source "FpodFixedFileObserver.java"


# static fields
.field public static MASK_BRIGHTNESS:I

.field private static final sObserverLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/io/File;",
            "Ljava/util/Set<",
            "Lcom/android/systemui/util/FpodFixedFileObserver;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mObserver:Landroid/os/FileObserver;

.field private final mRootPath:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/FpodFixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    const/4 v0, 0x2

    .line 16
    sput v0, Lcom/android/systemui/util/FpodFixedFileObserver;->MASK_BRIGHTNESS:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/systemui/util/FpodFixedFileObserver;->mRootPath:Ljava/io/File;

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/android/systemui/util/FpodFixedFileObserver;->stopWatching()V

    return-void
.end method

.method public stopWatching()V
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/systemui/util/FpodFixedFileObserver;->mObserver:Landroid/os/FileObserver;

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {v0}, Landroid/os/FileObserver;->stopWatching()V

    .line 51
    sget-object v0, Lcom/android/systemui/util/FpodFixedFileObserver;->sObserverLists:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/systemui/util/FpodFixedFileObserver;->mRootPath:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_0

    .line 53
    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
