.class public interface abstract Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;
.super Ljava/lang/Object;
.source "CarPropertyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/hardware/property/CarPropertyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarPropertyEventCallback"
.end annotation


# virtual methods
.method public abstract onChangeEvent(Landroid/car/hardware/CarPropertyValue;)V
.end method

.method public abstract onErrorEvent(II)V
.end method

.method public onErrorEvent(III)V
    .locals 0

    .line 110
    invoke-interface {p0, p1, p2}, Landroid/car/hardware/property/CarPropertyManager$CarPropertyEventCallback;->onErrorEvent(II)V

    return-void
.end method
