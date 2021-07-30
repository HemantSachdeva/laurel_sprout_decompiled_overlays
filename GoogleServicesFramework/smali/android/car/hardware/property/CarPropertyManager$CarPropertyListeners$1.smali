.class Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onPropertyChanged(Landroid/car/hardware/property/CarPropertyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

.field final synthetic val$event:Landroid/car/hardware/property/CarPropertyEvent;

.field final synthetic val$updateTime:J


# direct methods
.method constructor <init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;JLandroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    .line 874
    iput-object p1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iput-wide p2, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->val$updateTime:J

    iput-object p4, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->val$event:Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 3

    .line 877
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->this$1:Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;

    iget-wide v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->val$updateTime:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/car/internal/CarRatedFloatListeners;->needUpdateForSelectedListener(Ljava/lang/Object;J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 878
    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->val$event:Landroid/car/hardware/property/CarPropertyEvent;

    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyEvent;->getCarPropertyValue()Landroid/car/hardware/CarPropertyValue;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 874
    check-cast p1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$1;->accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
