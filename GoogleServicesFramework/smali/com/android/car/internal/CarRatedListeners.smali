.class public Lcom/android/car/internal/CarRatedListeners;
.super Ljava/lang/Object;
.source "CarRatedListeners.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Event",
        "ListenerType:Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected mLastUpdateTime:J

.field private final mListenersToRate:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TEvent",
            "ListenerType;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public getListeners()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TEvent",
            "ListenerType;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object p0, p0, Lcom/android/car/internal/CarRatedListeners;->mListenersToRate:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method
