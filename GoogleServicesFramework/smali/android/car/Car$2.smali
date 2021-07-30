.class Landroid/car/Car$2;
.super Ljava/lang/Object;
.source "Car.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 918
    iput-object p1, p0, Landroid/car/Car$2;->this$0:Landroid/car/Car;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 921
    iget-object p0, p0, Landroid/car/Car$2;->this$0:Landroid/car/Car;

    invoke-static {p0}, Landroid/car/Car;->access$100(Landroid/car/Car;)Landroid/content/ServiceConnection;

    move-result-object p0

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.car"

    const-string v2, "com.android.car.CarService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
