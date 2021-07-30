.class public interface abstract Lcom/android/systemui/CameraAvailabilityListener$CameraTransitionCallback;
.super Ljava/lang/Object;
.source "CameraAvailabilityListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/CameraAvailabilityListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CameraTransitionCallback"
.end annotation


# virtual methods
.method public abstract onApplyCameraProtection(Landroid/graphics/Path;Landroid/graphics/Rect;)V
    .param p1    # Landroid/graphics/Path;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/Rect;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
.end method

.method public abstract onHideCameraProtection()V
.end method
