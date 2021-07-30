.class Landroid/car/Car$3;
.super Ljava/lang/Object;
.source "Car.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/Car;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/car/Car;


# direct methods
.method constructor <init>(Landroid/car/Car;)V
    .locals 0

    .line 927
    iput-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    .line 930
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$200(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 931
    :try_start_0
    invoke-static {p2}, Landroid/car/ICar$Stub;->asInterface(Landroid/os/IBinder;)Landroid/car/ICar;

    move-result-object v1

    if-nez v1, :cond_0

    const-string p0, "CAR.L"

    const-string p1, "null binder service"

    .line 933
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2}, Ljava/lang/RuntimeException;-><init>()V

    invoke-static {p0, p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 934
    monitor-exit v0

    return-void

    .line 936
    :cond_0
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2}, Landroid/car/Car;->access$300(Landroid/car/Car;)Landroid/car/ICar;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 938
    monitor-exit v0

    return-void

    .line 940
    :cond_1
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/car/Car;->access$402(Landroid/car/Car;I)I

    .line 941
    iget-object v2, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v2, v1}, Landroid/car/Car;->access$302(Landroid/car/Car;Landroid/car/ICar;)Landroid/car/ICar;

    .line 942
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 943
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 944
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 p2, 0x1

    invoke-interface {p1, p0, p2}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_0

    .line 945
    :cond_2
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 946
    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p0}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Landroid/content/ServiceConnection;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    :cond_3
    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 942
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 953
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$700(Landroid/car/Car;)Landroid/car/CarFeatures;

    move-result-object v0

    invoke-virtual {v0}, Landroid/car/CarFeatures;->resetCache()V

    .line 954
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$200(Landroid/car/Car;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 955
    :try_start_0
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$400(Landroid/car/Car;)I

    move-result v1

    if-nez v1, :cond_0

    .line 957
    monitor-exit v0

    return-void

    .line 959
    :cond_0
    iget-object v1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v1}, Landroid/car/Car;->access$800(Landroid/car/Car;)V

    .line 960
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 961
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 962
    iget-object p1, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p1}, Landroid/car/Car;->access$500(Landroid/car/Car;)Landroid/car/Car$CarServiceLifecycleListener;

    move-result-object p1

    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Landroid/car/Car$CarServiceLifecycleListener;->onLifecycleChanged(Landroid/car/Car;Z)V

    goto :goto_0

    .line 963
    :cond_1
    iget-object v0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {v0}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 964
    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p0}, Landroid/car/Car;->access$600(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    .line 967
    :cond_2
    iget-object p0, p0, Landroid/car/Car$3;->this$0:Landroid/car/Car;

    invoke-static {p0}, Landroid/car/Car;->access$900(Landroid/car/Car;)V

    :goto_0
    return-void

    :catchall_0
    move-exception p0

    .line 960
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
