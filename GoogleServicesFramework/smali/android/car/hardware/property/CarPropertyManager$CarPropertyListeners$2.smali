.class Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;->onErrorEvent(Landroid/car/hardware/property/CarPropertyEvent;)V
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
.field final synthetic val$event:Landroid/car/hardware/property/CarPropertyEvent;

.field final synthetic val$value:Landroid/car/hardware/CarPropertyValue;


# direct methods
.method constructor <init>(Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners;Landroid/car/hardware/CarPropertyValue;Landroid/car/hardware/property/CarPropertyEvent;)V
    .locals 0

    .line 890
    iput-object p2, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    iput-object p3, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$event:Landroid/car/hardware/property/CarPropertyEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V
    .locals 2

    .line 901
    iget-object v0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v0}, Landroid/car/hardware/CarPropertyValue;->getPropertyId()I

    move-result v0

    iget-object v1, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$value:Landroid/car/hardware/CarPropertyValue;

    invoke-virtual {v1}, Landroid/car/hardware/CarPropertyValue;->getAreaId()I

    move-result v1

    iget-object p0, p0, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->val$event:Landroid/car/hardware/property/CarPropertyEvent;

    .line 902
    invoke-virtual {p0}, Landroid/car/hardware/property/CarPropertyEvent;->getErrorCode()I

    move-result p0

    .line 901
    invoke-interface {p1, v0, v1, p0}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(III)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 890
    check-cast p1, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;

    invoke-virtual {p0, p1}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyListeners$2;->accept(Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;)V

    return-void
.end method
