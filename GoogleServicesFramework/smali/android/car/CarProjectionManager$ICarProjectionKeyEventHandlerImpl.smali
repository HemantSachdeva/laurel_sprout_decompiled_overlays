.class Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;
.super Landroid/car/ICarProjectionKeyEventHandler$Stub;
.source "CarProjectionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/CarProjectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ICarProjectionKeyEventHandlerImpl"
.end annotation


# instance fields
.field private final mManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/car/CarProjectionManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/car/CarProjectionManager;)V
    .locals 1

    .line 811
    invoke-direct {p0}, Landroid/car/ICarProjectionKeyEventHandler$Stub;-><init>()V

    .line 812
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;->mManager:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Landroid/car/CarProjectionManager;Landroid/car/CarProjectionManager$1;)V
    .locals 0

    .line 806
    invoke-direct {p0, p1}, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;-><init>(Landroid/car/CarProjectionManager;)V

    return-void
.end method

.method static synthetic lambda$onKeyEvent$0(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;I)V
    .locals 0

    .line 835
    invoke-interface {p0, p1}, Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;->onKeyEvent(I)V

    return-void
.end method


# virtual methods
.method public onKeyEvent(I)V
    .locals 4

    .line 817
    invoke-static {}, Landroid/car/CarProjectionManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received projection key event "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    iget-object p0, p0, Landroid/car/CarProjectionManager$ICarProjectionKeyEventHandlerImpl;->mManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/car/CarProjectionManager;

    if-nez p0, :cond_0

    return-void

    .line 823
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 824
    invoke-static {p0}, Landroid/car/CarProjectionManager;->access$500(Landroid/car/CarProjectionManager;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 826
    :try_start_0
    invoke-static {p0}, Landroid/car/CarProjectionManager;->access$600(Landroid/car/CarProjectionManager;)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 827
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;

    iget-object v3, v3, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mSubscribedEvents:Ljava/util/BitSet;

    invoke-virtual {v3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 828
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;

    iget-object v2, v2, Landroid/car/CarProjectionManager$KeyEventHandlerRecord;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 831
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 833
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 834
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;

    .line 835
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;

    invoke-direct {v2, v1, p1}, Landroid/car/-$$Lambda$CarProjectionManager$ICarProjectionKeyEventHandlerImpl$MBwgMQivjMBxVP_SaFQheO04TNY;-><init>(Landroid/car/CarProjectionManager$ProjectionKeyEventHandler;I)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 831
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
