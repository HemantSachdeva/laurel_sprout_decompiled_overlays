.class public interface abstract Landroid/car/input/CarInputManager$CarInputCaptureCallback;
.super Ljava/lang/Object;
.source "CarInputManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/input/CarInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CarInputCaptureCallback"
.end annotation


# virtual methods
.method public abstract onCaptureStateChanged(I[I)V
.end method

.method public abstract onKeyEvents(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/KeyEvent;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRotaryEvents(ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/car/input/RotaryEvent;",
            ">;)V"
        }
    .end annotation
.end method
